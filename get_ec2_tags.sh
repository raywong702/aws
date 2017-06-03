# Note attach IAM Role for reading ec2 perms

instanceid=`curl -s http://169.254.169.254/latest/meta-data/instance-id`
region=`curl -s http://instance-data/latest/meta-data/placement/availability-zone | sed 's/.$//'`
name=`aws ec2 describe-tags --region $region --filter "Name=resource-id,Values=$instanceid" "Name=key,Values=Name" --output=text | cut -f5`