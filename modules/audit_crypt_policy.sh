# audit_crypt_policy
#
# Set default cryptographic algorithms
#.

audit_crypt_policy () {
  if [ "$os_name" = "SunOS" ]; then
    check_file="/etc/security/policy.conf"
    funct_file_value $check_file CRYPT_DEFAULT eq 6 hash
    funct_file_value $check_file CRYPT_ALGORITHMS_ALLOW eq 6 hash
  fi
}
