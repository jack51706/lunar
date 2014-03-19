# audit_sudo_timeout
#
# The sudo command stays logged in as the root user for five minutes before
# timing out and re-requesting a password. This five minute window should be
# eliminated since it leaves the system extremely vulnerable.
# This is especially true if an exploit were to gain access to the system,
# since they would be able to make changes as a root user.
#
# Refer to Section 5.1 Page(s) 48-49 CIS Apple OS X 10.8 Benchmark v1.0.0
#.

audit_sudo_timeout() {
  if [ "$os_name" = "Darwin" ] || [ "$os_name" = "Linux" ] || [ "$os_name" = "SunOS" ]; then
    check_file="/etc/sudoers"
    funct_file_value $check_file "Defaults timestamp_timeout" eq 0 hash after "# Defaults specification"
  fi
}
