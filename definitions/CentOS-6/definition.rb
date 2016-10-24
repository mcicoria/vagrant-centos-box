Veewee::Session.declare({
  :cpu_count => '2',
  :memory_size=> '768',
  :disk_size => '10140',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :os_type_id => 'Centos_64',
  :iso_file => 'CentOS-6.8-x86_64-minimal.iso',
  :iso_src => "http://centos.vpsnet.lt/centos/6/isos/x86_64/CentOS-6.8-x86_64-minimal.iso",
  :iso_sha256 => "ec49c297d484b9da0787e5944edc38f7c70f21c0f6a60178d8e9a8926d1949f4",
  :iso_download_timeout => 1000,
  :boot_wait => "10",
  :boot_cmd_sequence => [
    '<Tab> text ks=http://%IP%:%PORT%/ks.cfg<Enter>'
  ],
  :kickstart_port => "7122",
  :kickstart_timeout => 300,
  :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "veewee",
  :ssh_password => "veewee",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [
    "base.sh",
    "vagrant.sh",
    "virtualbox.sh",
    #"vmfusion.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => 10000
})
