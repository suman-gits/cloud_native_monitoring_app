import boto3

client = boto3.client('ecr')

response = client.create_repository(
    repositoryName='cloud_native_app',
)
repository_uri = response['repository']['repositoryUri']
print(repository_uri)