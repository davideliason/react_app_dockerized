# React App Dockerized
## December 6, 2017
### [David Eliason](http://www.davethemaker.com)
---
### Goal:
The goal is to dockerize a React app - this is the first step before more complex apps.

### Steps

    - Created React app using CRA
    - Ejected to update build files $ npm run eject
    - Shrinkwrapped dependencies:

```
    $npm prune
    $npm dedupe
    $npm install
    $npm shrinkwrap --dev
```

After creating the Dockerfile, I then built the container image:
```
 $ docker build -t react_app_dockerized .
```
At this point, the app successfully ran after this command:
```
$ docker run -p 5000:5000 react_app_dockerized
```
That created a local Docker container image, but to make it accessible, I first needed to tag the vanilla image from 'react_app_dockerized' to username/repository:tag like this:
```
$ docker tag react_app_dockerized davethemaker/react_app_dockerized:version1
```
After tagging that image, I pushed it to Docker Hub:
```
$ docker push davethemaker/react_app_dockerized:version1
```
### Lessons Learned:
Shrinkwrapping dependency libraries will ensure consistency between devs. After making changes, I rec'd error that the port was already allocated. To remedy this, I found out which process was running and then killed it:
```
$ docker ps
$ docker kill 4e05b88cd3c7

```


### Conclusion:
Build was successful, and the React app was Dockerized.
The app can be run from any computer using this command in terminal:
```
$ docker run -p 5000:5000 davethemaker/react_app_dockerized:version1
```

#### Resources
[Great tutorial](https://medium.com/ai2-blog/dockerizing-a-react-application-3563688a2378)