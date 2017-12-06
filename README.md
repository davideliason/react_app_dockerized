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

### Lessons Learned:
Shrinkwrapping dependency libraries will ensure consistency between devs.

### Conclusion: