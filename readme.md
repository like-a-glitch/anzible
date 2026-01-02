# Run

```
sudo ansible-playbook playbook.yml --limit=$(hostname)
```

### To run only selected role(s):

```bash
-e "host_roles=['INSERT_ROLE_NAME']"
```

### If username does not match `remote_user_name` in [vars.yml](./vars.yml):

```bash
-e "remote_user_name=INSERT_USER_NAME"
```