concourse-ci-sandbox
====================

Setup
-----

    git clone https://github.com/vspiewak/concourse-ci-sandbox.git
    cd concourse-ci-sandbox
    vagrant box add concourse/lite --box-version $(cat VERSION)
    vagrant up

Open http://192.168.100.4:8080/ in your browser


Configure fly with `sandbox` target:

    fly --target sandbox login --concourse-url http://192.168.100.4:8080
    fly --target sandbox sync


You can now see this saved target Concourse API in a local file:

```
cat ~/.flyrc
```

Shows a simple YAML file with the API, credentials etc:

```yaml
targets:
  sandbox:
    api: http://192.168.100.4:8080
    token:
      type: ""
      value: ""
```

    fly set-pipeline --target sandbox --config pipeline.yml --pipeline dataflow
    fly unpause-pipeline --target sandbox --pipeline dataflow
