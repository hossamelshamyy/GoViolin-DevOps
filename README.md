# GoViolin with DevOps Technologies

GoViolin is a web app written in Go that helps with violin practice, and docker, jenkins and k8s files are added.<br /><br />



**Note**<br />
-Make sure you added your DockerHub credentials in jenkins with ID=`DockerHub`.<br />
-If you faced any problem in building docker stage, try to add jenkins to docker group -incase you didn't before- by excuting this command:<br /> `$ sudo usermod -a -G docker jenkins`. <br /><br /><br />
### To run the app in browser locally using minikube
1) Make sure that minikube is running
2) Create deployment `$ kubectl create -f deployment.yml`
3) Open tunnel for the virtual load balancer, run it on another terminal `$ minikube tunnel`
4) Create virtual load balancer service `$ kubectl expose deployment goviolin-app --type=LoadBalancer --port=8080`
5) Get external IP of the load balancer service we just created `$ kubectl get svc`
6) Open any brower and browse `http://<external-ip>:8080` 

![Deploying GoViolin on minikube](https://github.com/hossamelshamyy/GoViolin-DevOps/blob/master/gif.gif)
