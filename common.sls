python-pip:
    pkg.installed
    
blueprint:
  pip.installed:
    - name: blueprint
    - require:
      - pkg: python-pip

sysdig:
    pkg.installed

blueprint_config:
  file.managed:
    - name: /etc/blueprint.cfg
    - source: salt://blueprint.cfg
