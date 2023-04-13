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


#errors while writing script and running build:

forgot to change branch from master to main as our code is in main branch.
