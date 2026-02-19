exit
sudo apt update
sudo apt install -y openjdk-11-jdk
java -version
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install -y jenkins
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install -y jenkins
sudo rm -f /etc/apt/sources.list.d/jenkins.list
sudo rm -f /usr/share/keyrings/jenkins-keyring.asc
sudo apt update
sudo apt install -y ca-certificates curl gnupg
sudo mkdir -p /usr/share/keyrings
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo gpg --dearmor -o /usr/share/keyrings/jenkins-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.gpg] \
https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt update
sudo apt install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
# Import the Jenkins GPG key directly
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo gpg --dearmor -o /usr/share/keyrings/jenkins-keyring.gpg
# Update and install Jenkins
sudo apt update
sudo apt install -y jenkins
# Clean up existing configuration
sudo rm -f /etc/apt/sources.list.d/jenkins.list
sudo rm -f /usr/share/keyrings/jenkins-keyring.gpg
# Add the Jenkins repository with the correct key
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list
# Update and install
sudo apt update
sudo apt install -y jenkins
# Clean up everything
sudo rm -f /etc/apt/sources.list.d/jenkins.list
sudo rm -f /usr/share/keyrings/jenkins-keyring.*
# Import the GPG key directly into APT's keyring with the correct format
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo gpg --dearmor -o /usr/share/keyrings/jenkins-keyring.gpg
# Add the repository
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.gpg] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list
# Update and install
sudo apt update
sudo apt install -y jenkins
# Import the missing key by its ID
sudo gpg --keyserver keyserver.ubuntu.com --recv-keys 7198F4B714ABFC68
sudo gpg --export --armor 7198F4B714ABFC68 | sudo gpg --dearmor -o /usr/share/keyrings/jenkins-keyring.gpg
# Then update and install
sudo apt update
sudo apt install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
# Check the detailed error logs
sudo journalctl -xeu jenkins.service --no-pager
# Check Java version
java -version
# Check Jenkins user and directories
sudo ls -la /var/lib/jenkins
sudo ls -la /var/cache/jenkins
sudo ls -la /var/log/jenkins
# Check Jenkins configuration
sudo cat /etc/default/jenkins
# Check the systemd service file
sudo cat /lib/systemd/system/jenkins.service
sudo netstat -tlnp | grep 8080
# or
sudo lsof -i :8080
# Install Java 17
sudo apt install -y fontconfig openjdk-17-jre
# Verify Java 17 is installed
java -version
# If multiple Java versions exist, set Java 17 as default
sudo update-alternatives --config java
sudo systemctl daemon-reload
sudo systemctl reset-failed jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl status docker
sudo usermod -aG docker jenkins
sudo usermod -aG docker vagrant
sudo systenctl restart jenkins
sudo systemctl restart jenkins
sudo systenctl status jenkins
sudo systemctl status jenkins
docker --version
sudo curl -L "https://github.com/docker/compose/releases/download/v2.20.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
exit
sudo ls -la /var/lib/jenkins/workspace/chatbot-ci-cd-pipeline/
sudo ls -la /var/lib/jenkins/workspace
# Check the @tmp workspace
sudo ls -la /var/lib/jenkins/workspace/chatbot-ci-cd-pipeline@tmp/
# List all workspaces
sudo ls -la /var/lib/jenkins/workspace/
# Check the latest build log (build #8)
sudo cat /var/lib/jenkins/jobs/chatbot-ci-cd-pipeline/builds/8/log
# If that's too long, check just the beginning (first 200 lines)
sudo head -200 /var/lib/jenkins/jobs/chatbot-ci-cd-pipeline/builds/8/log
# Look for Git-related errors
sudo cat /var/lib/jenkins/jobs/chatbot-ci-cd-pipeline/builds/8/log | grep -i "error\|fatal\|failed" | head -20
# Navigate to your projects directory
cd C:\devops-projects
# Clone your repository
git clone https://github.com/pawan-321/chatbot-devops-project.git
cd chatbot-devops-project
# Switch to staging branch
git checkout staging
code Dockerfile
nano Dockerfile
git add Dockerfile
git commit -m "add dockerfile for containerization"
git config --global user.email "pawana019358@nec.edu.np"
git config --global user.name "pawan-321"
git push origin staging
git status
ls -la Dockerfile
cat dockerfile
cat Dockerfile
# Verify the file was saved
cat Dockerfile
# Add the file
git add Dockerfile
# Commit
git commit -m "add dockerfile for containerization"
# Push to GitHub
git push origin staging
ls -la
cat package.json
ls -la
cd chatbot-UI
cd Chatbot-UI
LS
ls
nnano Dockerfile
nano Dockerfile
cat next.config.js
ls
cd ..
ls
# Add changes
git add Dockerfile
# If you modified next.config.js
git add Chatbot-UI/next.config.js
# Commit
git commit -m "Update Dockerfile for Next.js Chatbot-UI application"
# Push
git push origin staging
# Go to the project root
cd ~/chatbot-devops-project
# Edit the Dockerfile
nano Dockerfile
git add Dockerfile
git commit -m "Fix Dockerfile to copy from Chatbot-UI directory"
git push origin staging
# Install containerd
sudo apt-get update
sudo apt-get install -y containerd
# Create default configuration
sudo mkdir -p /etc/containerd
containerd config default | sudo tee /etc/containerd/config.toml
# Enable SystemdCgroup (required for Kubernetes)
sudo sed -i 's/SystemdCgroup = false/SystemdCgroup = true/' /etc/containerd/config.toml
# Restart containerd
sudo systemctl restart containerd
sudo systemctl enable containerd
# Verify
sudo systemctl status containerd
exit
ls
cd chatbot-devops-project/
ls
cd infrastructure/
ls
cd vagrant/
cd ..
cd k
ls
cd vagrant/
la
ls
cd ..
ls
cd kubernetes
cd ..
ls
# Navigate to your project
cd C:\devops-projects\Chatbot-node-project
# Create kubernetes directory if it doesn't exist
New-Item -Path "infrastructure\kubernetes" -ItemType Directory -Force
# Open VS Code to create files
code infrastructure\kubernetes
ls
cd infrastructure/
ls
cd vagrant/
ls
# You're inside the VM already
cd ~/chatbot-devops-project
# Check what's there
ls -la
# Create kubernetes files here
mkdir -p infrastructure/kubernetes
# Create namespace.yaml
cat > infrastructure/kubernetes/namespace.yaml <<'EOF'
apiVersion: v1
kind: Namespace
metadata:
  name: chatbot-app
  labels:
    name: chatbot-app
EOF

# Create mongodb-deployment.yaml
cat > infrastructure/kubernetes/mongodb-deployment.yaml <<'EOF'
[paste MongoDB YAML content from earlier]
EOF

# Create chatbot-deployment.yaml  
cat > infrastructure/kubernetes/chatbot-deployment.yaml <<'EOF'
[paste chatbot YAML content from earlier]
EOF

ls 
cd infrastructure/
ls
cd kubernetes/
ls
cdt namespace.yaml 
cat namespace.yaml 
nano mongodb-deployment.yaml 
nano chatbot-deployment.yaml 
kubectl apply -f namespace.yaml
kubectl apply -f mongodb-deployment.yaml
kubectl apply -f chatbot-deployment.yaml
kubectl get all -n chatbot-app
kubectl get pods -n chatbot-app -o wide
kubectl scale deployment chatbot-deployment --replicas=10 -n chatbot-app
kubectl get pods -n chatbot-app 
curl http://192.168.56.11:30080
curl http://192.168.56.12:30080
code .
# Update package index
sudo apt-get update
# Install required packages
sudo apt-get install -y apt-transport-https ca-certificates curl gpg
# Add Kubernetes GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
# Add Kubernetes repository
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
# Update package index
sudo apt-get update
# Install kubelet, kubeadm, kubectl
sudo apt-get install -y kubelet=1.28.0-1.1 kubeadm=1.28.0-1.1 kubectl=1.28.0-1.1
# Hold packages at current version
sudo apt-mark hold kubelet kubeadm kubectl
# Enable kubelet
sudo systemctl enable kubelet
# Verify installation
kubeadm version
kubectl version --client
# Initialize the cluster
sudo kubeadm init   --apiserver-advertise-address=192.168.56.10   --pod-network-cidr=10.244.0.0/16   --node-name=k8s-master
# ⚠️ IMPORTANT: Save the join command that appears at the end!
# It looks like:
# kubeadm join 192.168.56.10:6443 --token abc123... \
#   --discovery-token-ca-cert-hash sha256:xyz789...
# Setup kubectl for regular user
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
# Verify master node
kubectl get nodes
# Should show: k8s-master NotReady (normal, network plugin needed)
# Initialize the cluster
sudo kubeadm init   --apiserver-advertise-address=192.168.56.10   --pod-network-cidr=10.244.0.0/16   --node-name=k8s-master
# ⚠️ IMPORTANT: Save the join command that appears at the end!
# It looks like:
# kubeadm join 192.168.56.10:6443 --token abc123... \
#   --discovery-token-ca-cert-hash sha256:xyz789...
# Setup kubectl for regular user
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
# Verify master node
kubectl get nodes
# Should show: k8s-master NotReady (normal, network plugin needed)
# Install Flannel CNI
kubectl apply -f https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml
# Wait 2-3 minutes for flannel pods to start
kubectl get pods -n kube-flannel
# Check master status (should now be Ready)
kubectl get nodes
# Should show: k8s-master Ready control-plane
kubectl get nodes
kubectl get pods -n kube-flannel
kubectl get pods -A
kubectl logs -n kube-flannel -l app=flannel
kubectl describe node k8s-master
kubectl get nodes
# Generate join command for worker nodes
kubeadm token create --print-join-command
kubectl get nodes
kubectl get pods -A
cd /vagrant
ls
cd ..
cd kubernetes
ls
cd vagrant/
ls
ls -la
# Go up two directories to project root
cd ../..
# Check where you are
pwd
# Should show: /vagrant or similar
# List files
ls -la
cd vagrant/
ls
# Navigate to your project
cd C:\devops-projects\Chatbot-node-project
# Create kubernetes directory if it doesn't exist
New-Item -Path "infrastructure\kubernetes" -ItemType Directory -Force
# Open VS Code to create files
code infrastructure\kubernetes# Navigate to your project
cd C:\devops-projects\Chatbot-node-project
# Create kubernetes directory if it doesn't exist
New-Item -Path "infrastructure\kubernetes" -ItemType Directory -Force
# Open VS Code to create files
code infrastructure\kubernetes
kubectl get nodes
kubectl get pods -n chatbot-app
sudo systemctl status kubectl
# Check logs of one chatbot pod
kubectl logs chatbot-deployment-7bf5db864b-8t9nh -n chatbot-app
# Check previous crash logs
kubectl logs chatbot-deployment-7bf5db864b-8t9nh -n chatbot-app --previous
# Check current logs (without --previous)
kubectl logs chatbot-deployment-7bf5db864b-8t9nh -n chatbot-app
# If that doesn't work, try a different pod
kubectl logs chatbot-deployment-7bf5db864b-j9shc -n chatbot-app
# Get detailed info about why it's failing
kubectl describe pod chatbot-deployment-7bf5db864b-8t9nh -n chatbot-app
# Get logs from the crashed container
kubectl logs chatbot-deployment-7bf5db864b-8t9nh -n chatbot-app
# Also check a few other pods
kubectl logs chatbot-deployment-7bf5db864b-j9shc -n chatbot-app# Get logs from the crashed container
kubectl logs chatbot-deployment-7bf5db864b-8t9nh -n chatbot-app
# Also check a few other pods
kubectl logs chatbot-deployment-7bf5db864b-j9shc -n chatbot-app
# Get logs from first pod
kubectl logs chatbot-deployment-7bf5db864b-8t9nh -n chatbot-app
# Get logs from second pod
kubectl logs chatbot-deployment-7bf5db864b-j9shc -n chatbot-app
kubectl get pods -n chatbot-app
kubectl describe pod mongodb-b979bdd6f-hsqf6 -n chatbot-app
kubectl get pvc -n chatbot-app
kubectl delete namespace chatbot-app
kubectl get namespaces | grep chatbot-app
kubectl create namespace chatbot-app
kubectl apply -f /tmp/mongo-deployment.yaml
kubectl apply -f mongo-deployment.yaml
kubectl apply -f mongodb-deployment.yaml
ls
cd chatbot-devops-project/
ls
cd infrastructure/kubernetes/
ls
nano mongodb-deployment.yaml 
kubectl apply -f mongodb-deployment.yaml
kubectl get pods -n chatbot-app
curl http://192.168.56.11:30080
nano chatbot-deployment.yaml 
kubectl apply -f chatbot-deployment.yaml
kubectl get pods -n chatbot-app
kubectl logs chatbot-deployment-5799dcd8b5-5fgst -n chatbot-app
# Get current pod names
kubectl get pods -n chatbot-app
kubectl logs -n chatbot-app -l app=chatbot --tail=100
# Get a specific pod name
kubectl get pods -n chatbot-app -l app=chatbot -o name | head -1
kubectl logs pod/chatbot-deployment-5799dcd8b5-5fgst -n chatbot-app
# Without the "pod/" prefix
kubectl logs chatbot-deployment-5799dcd8b5-5fgst -n chatbot-app --container=chatbot
# Get current pods
kubectl get pods -n chatbot-app
# Immediately get logs from one (use a pod name from the output above)
kubectl logs chatbot-deployment-5799dcd8b5-cj87r -n chatbot-app
# Get current pod list
kubectl get pods -n chatbot-app -o wide
# Describe one pod to see events
kubectl describe pod chatbot-deployment-5799dcd8b5-cj87r -n chatbot-app
# Pull the image
docker pull pawannetizen12/chatbot-app:latest
# Run it to see the error
docker run --rm pawannetizen12/chatbot-app:latest
# Pull the image
# Run it to see the error
docker run --rm pawannetizen12/chatbot-app:latest
kubectl logs -n chatbot-app pod/chatbot-deployment-5799dcd8b5-5fgst --previous
kubectl describe pod -n chatbot-app chatbot-deployment-5799dcd8b5-5fgst
kubectl logs -n chatbot-app pod/chatbot-deployment-5799dcd8b5-5fgst --previous
kubectl logs -n chatbot-app chatbot-deployment-5799dcd8b5-5fgst -c chatbot --previous
kubectl describe pod chatbot-deployment-5799dcd8b5-5fgst -n chatbot-app | grep -A5 "Last State"
```

This will show something like:
```
Last State: Terminated
kubectl describe pod chatbot-deployment-5799dcd8b5-5fgst -n chatbot-app | grep -A5 "Last State"
kubectl logs -n chatbot-app -f chatbot-deployment-5799dcd8b5-5fgst
kubectl run debug-chatbot --rm -it   --image=pawannetizen12/chatbot-app:latest   --restart=Never   -n chatbot-app   -- /bin/sh
kubectl get nodes
kubectl get pods -n kube-system
kubectl cluster info
kubectl cluster-info
kubectl get pods -n chatbot-app -o wide
cd ..
cd vagrant/
ssh vagrant@k8s-worker1
ssh vagrant worker1
ssh vagrant@k8s-worker1
ssh vagrant worker1
ssh vagrant@k8s-worker1
ssh vagrant@192.168.56
exit
kubectl get nodes
kubectl get pods -n kube-system
kubectl get pods -n chatbot-app -o wide
kubectl top nodes
# if metrics-server isn't installed:
free -h && df -h
exit
sudo apt-get install -y docker.io
sudo systemctl start docker
cd ~/chatbot-ui
nano Dockerfile
sudo docker build -t pawannetizen12/chatbot-app:latest .
sudo docker login
docker login -u pawannetizen12
sudo docker push pawannetizen12/chatbot-app:latest
sudo docker login
docker login -u pawannetizen12
sudo docker push pawannetizen12/chatbot-app:latest
docker push pawannetizen12/chatbot-app:latest
docker login -u pawannetizen12
docker push pawannetizen12/chatbot-app:latest
kubectl rollout restart deployment/chatbot-deployment -n chatbot-app
kubectl rollout status deployment/chatbot-deployment -n chatbot-app
kubectl get pods -n chatbot-app
curl http://192.168.56.11:30080
ls
cd ..
ls
cd chatbot-devops-project/
ls
cd infrastructure/vagrant/
ls
cd ..
ls
cd kubernetes/
ls
nano chatbot-deployment.yaml 
cd
cd chatbot-ui/
kubectl get secret openai-secret -n chatbot-app
curl http://192.168.56.11:30080
kubectl rollout restart deployment/chatbot-deployment -n chatbot-app
kubectl get pods -n chatbot-app
curl -I http://192.168.56.11:30080
cd ..
cd chatbot-devops-project/infrastructure/kubernetes/
ls
nano chatbot-deployment.yaml 
kubectl scale deployment chatbot-deployment --replicas=5 -n chatbot-app
kubectl get pods -n chatbot-app
cd 
ls
cd chatbot-devops-project/
ls
cd infrastructure/kubernetes/
ls
nano backup-cronjob.yaml
kubectl apply -f ~/chatbot-devops-project/infrastructure/kubernetes/backup-cronjob.yaml
kubectl get cronjob -n chatbot-app
kubectl create job --from=cronjob/mongodb-backup manual-backup-test -n chatbot-app
kubectl get pods -n chatbot-app | grep backup
kubectl logs -n chatbot-app -l job-name=manual-backup-test
exit
cd chatbot-devops-project/infrastructure/kubernetes
nano backup-cronjob.yaml 
rm  backup-cronjob.yaml 
ls
nano backup-cronjob.yaml
kubectl delete cronjob mongodb-backup -n chatbot-app
kubectl delete job manual-backup-test -n chatbot-app
kubectl apply -f ~/chatbot-devops-project/infrastructure/kubernetes/backup-cronjob.yaml
kubectl create job --from=cronjob/mongodb-backup manual-backup-test -n chatbot-app
watch kubectl get pods -n chatbot-app
exit
# On master
kubectl get pod manual-backup-test-mgrhl -n chatbot-app -o wide
# Check current pods
kubectl get pods -n chatbot-app
# Check jobs
kubectl get jobs -n chatbot-app
kubectl get pod manual-backup-test-8g279 -n chatbot-app -o wide
exit
# Get mongodb pod name
MONGO_POD=$(kubectl get pod -n chatbot-app -l app=mongodb -o jsonpath='{.items[0].metadata.name}')
echo $MONGO_POD
# Run backup inside mongodb pod
kubectl exec -n chatbot-app $MONGO_POD -- mongodump --out /tmp/b
# Verify backup was created
kubectl exec -n chatbot-app $MONGO_POD -- ls -lh /tmp/
kubectl get pods -n chatbot-app
MONGO_POD=$(kubectl get pod -n chatbot-app -l app=mongodb -o jsonpath='{.items[0].metadata.name}')
echo $MONGO_POD
kubectl exec -n chatbot-app $MONGO_POD -- ls /tmp
exit
sudo systemctl restart kubelet
kubectl get nodes
MONGO_POD=$(kubectl get pod -n chatbot-app -l app=mongodb -o jsonpath='{.items[0].metadata.name}')
kubectl exec -n chatbot-app $MONGO_POD -- ls /tmp
# Check kubelet configuration on master
sudo cat /var/lib/kubelet/config.yaml | grep -i address
# Check if port 10250 is accessible on worker
curl -k https://192.168.56.11:10250/healthz
curl -k https://192.168.56.12:10250/healthz
exit
# On k8s-master
curl -k https://192.168.56.11:10250/healthz
curl -k https://192.168.56.12:10250/healthz
MONGO_POD=$(kubectl get pod -n chatbot-app -l app=mongodb -o jsonpath='{.items[0].metadata.name}')
echo $MONGO_POD
kubectl exec -n chatbot-app $MONGO_POD -- ls /tmp
kubectl get nodes -o wide
sudo nano /etc/default/kubelet
sudo systemctl restart kubelet
exit
kubectl get nodes -o wide
cat /etc/default/kubelet
vagrant ssh worker1
cat /etc/default/kubelet
sudo systemctl daemon-reload
sudo systemctl restart kubelet
exit
cat /etc/default/kubelet
sudo nano /etc/default/kubelet
sudo systemctl restart kubelet
exit
kubectl get nodes -o wide
exit
kubectl get nodes -o wide
exit
kubectl get nodes 
kubectl get pods
kubectl get pods -n chatbot
kubectl get pods -n chatbot-app
exit
kubectl get nodes -o wide
MONGO_POD=$(kubectl get pod -n chatbot-app -l app=mongodb -o jsonpath='{.items[0].metadata.name}')
kubectl exec -n chatbot-app $MONGO_POD -- mongosh --eval "db.getSiblingDB('chatbot').users.insertMany([{name:'John'},{name:'Jane'}])"
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
helm version
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
kubectl create namespace monitoring
helm install prometheus prometheus-community/kube-prometheus-stack   --namespace monitoring   --set grafana.adminPassword=admin123   --set prometheus.prometheusSpec.retention=7d
kubectl get pods -n monitoring
kubectl port-forward svc/prometheus-grafana 3000:80 -n monitoring --address=0.0.0.0
echo 'KUBELET_EXTRA_ARGS=--node-ip=192.168.56.10' | sudo tee /etc/default/kubelet
sudo systemctl daemon-reload
sudo systemctl restart kubelet
# Check if the service exists
kubectl get svc -n monitoring | grep prometheus-grafana
# Check if there are any pods running for this service
kubectl get pods -n monitoring -l app=grafana
# (adjust the label selector based on your actual labels)
# Get more details about the service
kubectl describe svc prometheus-grafana -n monitoring
# Find the grafana pod
kubectl get pods -n monitoring -o wide
# Check the pod's status
kubectl describe pod <grafana-pod-name> -n monitoring
# Check pod logs
kubectl logs -n monitoring <grafana-pod-name>
kubectl logs -n monitoring prometheus-grafana-6cb5dd87dd-88s99
cd chatbot-devops-project/infrastructure/kubernetes/
ls
cd ..
cd
echo 'KUBELET_EXTRA_ARGS=--node-ip=192.168.56.10' | sudo tee /etc/default/kubelet
sudo systemctl daemon-reload && sudo systemctl restart kubelet
exit
kubectl get nodes -o wide
ip addr show | grep 192.168
exit
sudo sed -i 's/"$/ --node-ip=192.168.56.10"/' /var/lib/kubelet/kubeadm-flags.env
cat /var/lib/kubelet/kubeadm-flags.env
sudo systemctl daemon-reload && sudo systemctl restart kubelet
exit
kubectl port-forward svc/prometheus-grafana 3001:80 -n monitoring --address=0.0.0.0
Forwarding from 0.0.0.0:3001 -> 3000
kubectl get pods -n monitoring | grep prometheus-prometheus
kubectl get svc -n monitoring
kubectl get pods -n kube-flannel 2>/dev/null || kubectl get pods -n kube-system | grep -E "flannel|calico|weave|cilium"
kubectl rollout restart daemonset -n kube-flannel kube-flannel-ds
kubectl run curl-test --image=curlimages/curl -it --rm --restart=Never --   curl -s http://prometheus-kube-prometheus-prometheus.monitoring.svc.cluster.local:9090/-/healthy
kubectl rollout restart deployment -n monitoring
kubectl delete pod -n monitoring -l app.kubernetes.io/name=prometheus --force
kubectl delete pod -n monitoring -l app.kubernetes.io/name=alertmanager --force
kubectl run curl-test --image=curlimages/curl -it --rm --restart=Never --   curl -s http://prometheus-kube-prometheus-prometheus.monitoring.svc.cluster.local:9090/-/healthy
kubectl get pods -n kube-flannel 2>/dev/null || kubectl get pods -n kube-system | grep -E "flannel|calico|weave|cilium"
kubectl rollout restart deployment -n monitoring
kubectl delete pod -n monitoring prometheus-prometheus-kube-prometheus-prometheus-0 --force
kubectl delete pod -n monitoring alertmanager-prometheus-kube-prometheus-alertmanager-0 --force
kubectl get pods -n monitoring
kubectl run curl-test --image=curlimages/curl -it --rm --restart=Never --   curl -s http://prometheus-kube-prometheus-prometheus.monitoring.svc.cluster.local:9090/-/healthy
kubectl describe pod curl-test -n default 2>/dev/null || kubectl get events -n default --sort-by='.lastTimestamp' | tail -10
kubectl run nettest --image=busybox --restart=Never -- sleep 3600
kubectl get pod nettest
kubectl exec -it nettest -- wget -qO- --timeout=5 http://10.244.1.30:3000/metrics 2>&1
ip addr show flannel.1
ip route | grep flannel
kubectl edit configmap kube-flannel-cfg -n kube-flannel
kubectl rollout restart daemonset kube-flannel-ds -n kube-flannel
kubectl rollout status daemonset kube-flannel-ds -n kube-flannel
kubectl exec -it nettest -- ping -c 3 10.244.1.30
kubectl get configmap kube-flannel-cfg -n kube-flannel -o jsonpath='{.data.net-conf\.json}'
kubectl delete pods -n kube-flannel --all
sudo ip link delete flannel.1
exit
kubectl rollout status daemonset kube-flannel-ds -n kube-flannel
ip route | grep flannel
bridge fdb show dev flannel.1
ip neigh show dev flannel.1
kubectl get nodes -o jsonpath='{range .items[*]}{.metadata.name}{" "}{.metadata.annotations.flannel\.alpha\.coreos\.com/public-ip}{"\n"}{end}'
kubectl annotate node k8s-master flannel.alpha.coreos.com/public-ip=192.168.56.10 --overwrite
kubectl annotate node k8s-worker1 flannel.alpha.coreos.com/public-ip=192.168.56.11 --overwrite
kubectl annotate node k8s-worker2 flannel.alpha.coreos.com/public-ip=192.168.56.12 --overwrite
ip neigh flush dev flannel.1
bridge fdb flush dev flannel.1
kubectl delete pods -n kube-flannel --all
# Master
sudo ip link delete flannel.1
exit
bridge fdb show dev flannel.1
kubectl get configmap kube-flannel-cfg -n kube-flannel -o json |   sed 's/"Type": "vxlan",\n.*"iface": "enp0s8"/"Type": "vxlan"/' |   kubectl apply -f -
ip neigh flush dev flannel.1
bridge fdb flush dev flannel.1
sudo ip link delete flannel.1
kubectl delete pods -n kube-flannel --all
exit
sudo kubeadm reset -f
exit
