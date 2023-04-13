# jenkins-docker-Project1
# CI & CD of docker based application using Jenkins Pipeline scripts(Groovy DSL)

# Steps followed:
1. Launch 2 EC2 instances(Jenkins+ Webapp)
2. Ensure docker is installed on both servers
3. Install jenkins on jenkins server
   -Manage jenkins->plugins->avaliable plugins->SSH Agents
4. Create Pipeline and mention stages
   -git checkout
   -build docker images
   -push docker images to docker hub
   -run container on webapp server by pulling same image on docker hub
5. Rectify if any issue

PIPELINE STAGES STEPS:
      #on creating (first pipeline stage) after writing the groovy script and build,
      chk in our virtual machine(jenkins server) for the files from github.
      /var/lib/jenkins/workspace
pipeline creation stages help:
1. for stage 1-Click Pipeline Syntax to generate code for git repo
  -select branch and repo link and generate script
3. for stage 3-pushing images to docker hub
  -Click Pipeline Syntax ->withCredentials:bind credentials to variable->secret text->add details and generate script.
4. for stage 4-docker container deployment
  -Click Pipeline Syntax ->sshagent: SSH AGENT->add jenkins->ssh username with private key->provide key of server

#SSH to webapp server through SSHAgent Plugin and create a container.


#errors while writing script and running build:

1.forgot to change branch from master to main as our code is in main branch.

2.jenkins job name should be in lowercase.

3.dial unix /var/run/docker.sock: connect: permission denied
  -solution: chmod 777 /var/run/docker.sock on jenkins server
