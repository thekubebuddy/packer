{% set service = grains['service'].upper() %}
makedir_es:
  cmd.run:
    - names: 
      - ls -ltr /root/
      - echo "hello world"
      - echo "+++++++++++ {{ service }} ++++++++"

#nginx:
    # install Nginx via pkg, but first refresh the pkg database
#    pkg.installed:
#        - name: nginx
#        - refresh: True
    # make sure the nginx service is enabled (rc.conf) and running
#    service.running:
#        - enable: True
        # reload the service whenever the pkg or config file changes
#        - reload: True
#        - watch:
#            - pkg: nginx
#            - file: /etc/nginx/nginx.conf
#/etc/nginx/nginx.conf:
#    file.managed:
#        - source: salt://nginx/nginx.conf
#        - user: root
#        - group: root
#        - mode: 644
get_artifact:
  cmd.run:
    - names:
      - gsutil cp  gs://test-unbxd-artifact-bucket/artifact.gz /opt/artifact.gz
/opt/wingman/artifact.gz:
  file.managed:
    - source: /opt/artifact.gz
    - skip_verify: true
#    - user: rauser
    - mode: 755
    - makedirs: True
    - replace: True
#    - require:
#      - user: rauser
