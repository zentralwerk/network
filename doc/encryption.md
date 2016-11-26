# Encrypting salt-pillar/ values

```shell
echo -n $SECRET | gpg --armor --batch --trust-model always --encrypt -r 1F0F221A7483B5EF5D103D8B32EBADE870BAF886
```
