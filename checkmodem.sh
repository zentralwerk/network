host=89.238.64.140
#FIXME killing dhclient is evil?
checkdhcp(){
  #tell the server we want to release
  pkill dhclient
  /sbin/dhclient -r -v -pf /run/dhclient.up1.pid -lf /var/lib/dhcp/dhclient.up1.leases -I -df /var/lib/dhcp/dhclient6.up1.leases up1

  #tell dhclient we want a new lease
  /sbin/dhclient -v -pf /run/dhclient.up1.pid -lf /var/lib/dhcp/dhclient.up1.leases -I -df /var/lib/dhcp/dhclient6.up1.leases up1

  sleep 50
  ping -c2 $host
  if [[ $? -ne 0]];then
    restartmodem
  else
    errs=0
  fi
}

#FIXME
restartmodem(){
  token=$(curl 'http://192.168.100.1/xml/getter.xml' -H 'Host: 192.168.100.1' -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H 'X-Requested-With: XMLHttpRequest' --data 'fun=3' -s|grep -oh '<Token>[^<]*'|cut -d'>' -f2)
  password=password
  user=admin
  res=$(curl -s 'http://192.168.100.1/xml/setter.xml' -H 'Host: 192.168.100.1' -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H 'X-Requested-With: XMLHttpRequest' --data "token=$token""&fun=15&Username=$user&Password=$password")
echo $res
#res is KDGchangePW if successful or empty otherwise
}

while true;do
  errs=0
  ping -c1 $host
  if [[ $? -ne 0 ]];then
    errs=$((errs+1))
  else
    #reset whenever first successful ping
    errs=0
  fi
  if [[ $errs -ge 5 ]];then
    checkdhcp
  fi
  sleep 5
done
