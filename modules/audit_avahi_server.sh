# audit_avahi_server
#
# Avahi is a free zeroconf implementation, including a system for multicast
# DNS/DNS-SD service discovery. Avahi allows programs to publish and discover
# services and hosts running on a local network with no specific configuration.
# For example, a user can plug a computer into a network and Avahi
# automatically finds printers to print to, files to look at and people to
# talk to, as well as network services running on the machine.
#
# Refer to Section(s) 3.3   Page(s) 60   CIS CentOS Linux 6 Benchmark v1.0.0
# Refer to Section(s) 3.3   Page(s) 67   CIS Red Hat Linux 5 Benchmark v2.1.0
# Refer to Section(s) 3.3   Page(s) 63   CIS Red Hat Linux 6 Benchmark v1.2.0
# Refer to Section(s) 6.2   Page(s) 52-3 CIS SLES 11 Benchmark v1.0.0
# Refer to Section(s) 2.2.3 Page(s) 95   CIS Amazon Linux Benchmark v2.0.0
#.

audit_avahi_server () {
  if [ "$os_name" = "Linux" ]; then
    funct_verbose_message "Avahi Server"
    for service_name in avahi avahi-autoipd avahi-daemon avahi-dnsconfd; do
      funct_chkconfig_service $service_name 3 off
      funct_chkconfig_service $service_name 5 off
    done
  fi
}
