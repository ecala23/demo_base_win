#change version number - next chef client run will upgrade/downgrade client
default['omnibus_updater']['version'] = '12.20.3'
#Configures audit-coobook - to run profiles and report back to automate
default['audit']['reporter'] = 'chef-server-automate'
default['audit']['profiles'] = [
  {
    name: 'workstation-1/windows-baseline',
    compliance: 'workstation-1/windows-baseline'
  },
  {
    name: 'workstation-1/windows-patch-baseline',
    compliance: 'workstation-1/windows-patch-baseline'
  }
]
