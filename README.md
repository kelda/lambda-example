# lambda-example

This repository contains an example of booting [AWS
Lambda](https://aws.amazon.com/lambda/) functions in development on [Blimp](https://blimpup.io).

It uses the [docker-lambda](https://github.com/lambci/docker-lambda) project.

## Usage

Just run `blimp up`.

The [Compose file](./docker-compose.yml) defines a Python lambda function, and another service that invokes it every 5 seconds.

The invoker logs should look something like this:
```
Invoking lambda
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  2039  100  2026  100    13   179k   1181 --:--:-- --:--:-- --:--:--  199k
{"event": {"foo": "bar"}, "executable": "/usr/bin/python2.7", "sys.argv": "['/var/runtime/awslambda/bootstrap.py']", "__file__": "/var/task/lambda_function.py", "os.environ": "{'HOSTNAME': 'lambda', '_HANDLER': 'lambda_function.lambda_handler', 'AWS_LAMBDA_FUNCTION_VERSION': '$LATEST', 'LAMBDA_TASK_ROOT': '/var/task', 'HOME': '/home/sbx_user1051', 'PATH': '/usr/local/bin:/usr/bin/:/bin:/opt/bin', 'AWS_XRAY_CONTEXT_MISSING': 'LOG_ERROR', 'LD_LIBRARY_PATH': '/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib', 'LANG': 'en_US.UTF-8', 'TZ': ':UTC', 'KUBERNETES_SERVICE_HOST': '10.7.240.1', 'AWS_REGION': 'us-east-1', 'KUBERNETES_SERVICE_PORT': '443', 'LAMBDA_RUNTIME_DIR': '/var/runtime', 'PYTHONPATH': '/var/runtime', 'AWS_LAMBDA_FUNCTION_MEMORY_SIZE': '1536', 'DOCKER_LAMBDA_WATCH': '1', '_AWS_XRAY_DAEMON_PORT': '2000', '_AWS_XRAY_DAEMON_ADDRESS': '169.254.79.2', 'AWS_LAMBDA_LOG_GROUP_NAME': '/aws/lambda/test', 'AWS_DEFAULT_REGION': 'us-east-1', 'KUBERNETES_PORT_443_TCP_ADDR': '10.7.240.1', 'KUBERNETES_PORT': 'tcp://10.7.240.1:443', 'KUBERNETES_SERVICE_PORT_HTTPS': '443', '_X_AMZN_TRACE_ID': 'Root=1-dc99d00f-c079a84d433534434534ef0d;Parent=91ed514f1e5c03b2;Sampled=1', 'KUBERNETES_PORT_443_TCP_PROTO': 'tcp', 'DOCKER_LAMBDA_STAY_OPEN': '1', 'KUBERNETES_PORT_443_TCP': 'tcp://10.7.240.1:443', 'AWS_LAMBDA_LOG_STREAM_NAME': '2020/9/17/[$LATEST]5703b26a0c599361', 'AWS_EXECUTION_ENV': 'AWS_Lambda_python2.7', 'KUBERNETES_PORT_443_TCP_PORT': '443', 'AWS_XRAY_DAEMON_ADDRESS': '169.254.79.2:2000', 'AWS_LAMBDA_FUNCTION_NAME': 'test'}", "context.__dict__": "{'aws_request_id': 'f1141604-365e-1d09-3791-37a7b4911457', 'log_stream_name': '2020/9/17/[$LATEST]5703b26a0c599361', 'invoked_function_arn': 'arn:aws:lambda:us-east-1:655795899:function:test', 'client_context': None, 'log_group_name': '/aws/lambda/test', 'function_name': 'test', 'function_version': '$LATEST', 'identity': <__main__.CognitoIdentity object at 0x7f6a01c407d0>, 'memory_limit_in_mb': '1536'}", "os.getcwd": "/var/task"}
Sleeping 5 seconds
```
