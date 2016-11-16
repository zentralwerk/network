#!yaml|gpg

quagga:
  pkg.installed: []

{%- for daemon in ['zebra', 'ospfd'] %}
/etc/systemd/system/{{ daemon }}.service:
  file.managed:
    - source: salt://ospf/{{ daemon }}.service

/etc/quagga/{{ daemon }}.conf:
  file.managed:
    - source: salt://ospf/{{ daemon }}.conf
    - template: 'jinja'
    - context:
        ospf_secret: |
          -----BEGIN PGP MESSAGE-----
          
          hQEMA2PKcvDMvlKLAQf/UzB2wsDsIfUEIEx20IehQbTkw5A9gCYnuW09lvkzxlgY
          IHDh8arul9ED7GFdVBja5cZVCs/dzqG0j+uP8zAwMjBLvvS6AopFnVdZnM0ANLth
          WCam9LxN+pxweD5DugODYzHZq2I3ktDqUAXwG0ORT4RyrM3kqP1hmWq9pP37breA
          QabQG4BF6hCx09P2MN/Wvy//9RNwNWlMsM2UAvsau+t35y3UEr/UbMNYYYPXKt2l
          fcQntwl2VEDin9XbrskBxQzACvn0rthUZwJ8n1oB8m3f7uGw6kIEf3eZ0eSQHafm
          8MwVeLqsw0ZDIww2Oi4+RWLrFPa8bwJO1U2C6k/8qNJLAelPUBWkCetDoRlf1xEh
          Umyi2PS5RIeUU49CoAMbrIsjUsQTBjYwTdiGCvH0RL5NIgWWaxoO3913AliIDUBh
          bQaDO9GE1xb//lO+
          =4yPK
          -----END PGP MESSAGE-----

autostart-{{ daemon }}:
  service.enabled:
    - name: {{ daemon }}
      require_in:
        - file: /etc/systemd/system/{{ daemon }}.service
        - file: /etc/quagga/{{ daemon }}.conf
        - file: /var/run/quagga

start-{{ daemon }}:
  service.running:
    - name: {{ daemon }}
      require:
        - service: autostart-{{ daemon }}

{%- endfor %}

/var/run/quagga:
  file.directory:
    - user: quagga
      group: quagga

          
