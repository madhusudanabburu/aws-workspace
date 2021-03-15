aws cloudformation create-stack \
  --stack-name ApplicationStackWithECS \
  --template-body file://~/Documents/aws-workspace/CloudFormationWorkspace/Public-Network-Application-Service.yml \
  --parameters \
      ParameterKey=StackName,ParameterValue=NetworkStackWithECS \
      ParameterKey=ServiceName,ParameterValue=reflectoring-hello-world \
      ParameterKey=ImageUrl,ParameterValue=docker.io/reflectoring/aws-hello-world:latest \
      ParameterKey=ContainerPort,ParameterValue=8080 \
      ParameterKey=HealthCheckPath,ParameterValue=/hello \
      ParameterKey=HealthCheckIntervalSeconds,ParameterValue=90