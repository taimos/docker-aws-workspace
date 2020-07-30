FROM gitpod/workspace-full
LABEL maintainer="Taimos GmbH <info@taimos.de>"

RUN pip3 install cfn-lint boto3 botocore botostubs && npm install -g aws-authenticate aws-cdk jsmin

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip" && unzip /tmp/awscliv2.zip -d /tmp/awscli && sudo /tmp/awscli/aws/install && rm -f /tmp/awscliv2.zip && sudo rm -rf /tmp/awscli
