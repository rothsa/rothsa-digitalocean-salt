sysdig:
    pkg.installed

blueprint:
  pip.installed:
    - name: blueprint
    - require:
      - pkg: python-pip

blueprint_config:
  file.managed:
    - name: /etc/blueprint.cfg
    - source: salt://blueprint.cfg
    - require: 
      - blueprint

git_config:
  file.managed:
    - name: /root/.gitconfig
    - source: salt://.gitconfig
