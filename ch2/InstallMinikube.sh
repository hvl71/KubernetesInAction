#install minikube 
#chmod +x on this script to make it executable
#run it as root using sudo

apt-get update
apt-get install -y apt-transport-https

#this will prompt for user license acceptance - navigate to the bottom of the page to the ok bottom using the arrow keys
apt-get install -y virtualbox virtualbox-ext-pack

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
touch /etc/apt/sources.list.d/kubernetes.list 
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubectl

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube && mv minikube /usr/local/bin/

#verify kubectl version
#kubectl version -o json

#start minikube
#minikube start


