python-pip:
    pkg.installed
    
blueprint:
  pip.installed:
    - name: blueprint
    - require:
      - pkg: python-pip

sysdig:
    pkg.installed
