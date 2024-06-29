# Run

```
sudo ansible-playbook playbook.yml --limit=$(hostname)
```

*If username does not match `remoteUserName` in [vars.yml](./vars.yml):*

```
-e "remoteUserName=INSERT_USER_NAME"
```