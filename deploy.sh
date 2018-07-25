openstack overcloud deploy --templates --timeout 90 \
  -e /home/stack/templates/node-info.yaml\
  -e /home/stack/templates/overcloud_images.yaml \
  -e /home/stack/templates/environments/network-isolation.yaml \
  -e /home/stack/templates/environments/network-environment.yaml \
  --ntp-server pool.ntp.org \
  | tee overcloud-install.log
