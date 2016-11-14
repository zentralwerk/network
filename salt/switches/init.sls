{%- for hostname, switch in pillar['switches'].items() %}
/root/{{ hostname }}.expect:
  file.managed:
    - source: salt://switches/{{ switch['model'] }}.expect
    - template: 'jinja'
    - context:
        hostname: {{ hostname }}
        switch: {{ switch }}
    - mode: 744

{%- endfor %}
