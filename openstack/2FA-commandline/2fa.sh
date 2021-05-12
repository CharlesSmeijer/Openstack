# Change the vars below
USER=""
PASSWORD=""
PROJECT_NAME=""

if [[ -z $USER || -z $PASSWORD || -z $PROJECT_NAME ]]; then
  echo 'One or more auth variables are undefined, please edit at top of file.'
  exit 1
fi

# Set-up regular password based OpenStack auth
echo "Enter your OTP digits: "
read -sr OTP

export OS_IDENTITY_API_VERSION=3
export OS_AUTH_URL=https://identity.openstack.cloudvps.com/v3
export OS_AUTH_TYPE=password
export OS_PROJECT_DOMAIN_ID="default"
export OS_PROJECT_NAME="$PROJECT_NAME"
export OS_USERNAME="$USER"
export OS_PASSWORD="$PASSWORD$OTP"
echo $OS_USERNAME
echo $OS_PASSWORD

# Request and set token
export OS_TOKEN=`openstack token issue -c id -f value`
export OS_AUTH_TYPE=token

# Unset password based auth vars
unset OS_USERNAME
unset OS_PASSWORD
unset OS_PASSWORD_INPUT
unset OS_OTP_INPUT

echo -e "OpenStack token-based authentication is now set for this terminal"

