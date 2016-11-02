salt-master:
  pkg.installed: []
  service.running:
    - require:
        - pkg: salt-master
          
