# aws

## Create Sandbox
```yaml
ansible-playbook sandbox.yml
```

## Terminate Sandbox
```yaml
ansible-playbook terminate.yml
```

### Notes
* Update /Users/raymond/Projects/aws/ in ansible.cfg accordingly
* secrets.yml is in the format
```yaml
access_key: THISISMYACCESSKEY
secret_key: THISISMYSECRETKEY
```
* To encrypt secrypts.yml
```yaml
ansible-vault encrypt secrets.yml
```
* Place vault password inside vault_pass.txt mentioned in ansible.cfg

