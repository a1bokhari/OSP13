time openstack overcloud deploy \
  --templates --timeout 90 \
  -r /home/stack/templates/custom_roles_data.yaml \
  -e /home/stack/templates/node-info.yaml\
  -e /home/stack/templates/overcloud_images.yaml \
  -e /home/stack/templates/environments/network-isolation.yaml \
  -e /home/stack/templates/environments/network-environment.yaml \
  -e /usr/share/openstack-tripleo-heat-templates/environments/ceph-ansible/ceph-ansible.yaml \
  -e /home/stack/templates/environments/ceph-custom-config.yaml \
  --ntp-server pool.ntp.org \
  | tee overcloud-install.log

