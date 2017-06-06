# aws

## Create Sandbox
```yaml
ansible-playbook sandbox.yml
```

## Terminate Sandbox
```yaml
ansible-playbook terminate.yml
```
### Aliases
* Place into your .bash_rc or .bash_profile
* Replace DIRECTORY accordingly
```
alias sandbox='cd DIRECTORY; ansible-playbook sandbox.yml'
alias terminate='cd DIRECTORY; ansible-playbook terminate.yml'
```
* To run
```
sandbox
```
```
terminate
```

### Notes
* Update "/Users/raymond/Projects/aws/" in ansible.cfg accordingly
* Update import.yml accordingly
* Update secrets.yml with your aws keys
```yaml
access_key: THISISMYACCESSKEY
secret_key: THISISMYSECRETKEY
```
* To encrypt secrets.yml
```yaml
ansible-vault encrypt secrets.yml
```
* Place vault password inside vault_pass.txt mentioned in ansible.cfg

### AWS Notes
* Requires role with the AmazonEC2ReadOnlyAccess policy defined in import.yml
* Requires below policy
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "iam:PassRole",
                "iam:ListInstanceProfiles",
                "ec2:*"
            ],
            "Resource": "*"
        }
    ]
}
```
