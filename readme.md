# Prerequisites

- set required variables in [vars.yml](./vars.yml)

# Run

```
sudo ansible-playbook playbook.yml -i inventory.yml --limit=$(hostname)
```

*or if not set in [vars.yml](./vars.yml):*

```
-e "remoteUserName=INSERT_USER_NAME"
```