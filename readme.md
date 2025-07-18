# Run

```
sudo ansible-playbook playbook.yml --limit=$(hostname)
```

*If username does not match `remote_user_name` in [vars.yml](./vars.yml):*

```
-e "remote_user_name=INSERT_USER_NAME"
```