#!/bin/bash
sudo yum -y install python36
curl -O https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
export PATH=/usr/local/bin:$PATH
pip3 install --upgrade awscli --user
curl -o kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv kubectl /usr/local/bin
curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator
chmod +x ./aws-iam-authenticator
sudo mv aws-iam-authenticator /usr/local/bin
aws eks --region eu-west-1 update-kubeconfig --name observability-workshop
wget https://github.com/mikefarah/yq/releases/download/2.4.0/yq_linux_amd64
mv yq_linux_amd64 yq
chmod +x yq
sudo mv yq /usr/local/bin
curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > install-helm.sh
chmod u+x install-helm.sh
sudo ./install-helm.sh
export KUBECONFIG=~/.kube/config
