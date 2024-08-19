# CS304_Final Delivery_Team Report

[toc]

## 1.Metrics

### 1.Firstly, we will collect five metrics of our project(1 point)

* Lines of Code: 338
* Number of modules/subprojects: 4
* Number of packages: 22
* Number of source files: 54
* Number of 3rd party dependencies: 108

### 2.Secondly, we need to analyze the maintainability of our team project(1 point)

​	Our project comprises of four modules, with the 'global' module serving as the core dependency for the remaining three. However, as can be discerned from our dependency matrix, apart from the 'global' module, there is no interdependency amongst the other modules. This inherent non-reliance ensures an inherent scalability within these three modules. They are designed to function independently of each other, thereby allowing for an individual expansion and growth in capabilities, without inadvertently impacting the others. This structure provides the groundwork for a robust, flexible system that can adapt and evolve according to future needs and developments.

![dependency_graph](https://p.ipic.vip/8qr6a0.jpg)

![dependency_matrix](https://p.ipic.vip/ldqfg3.jpg)

​	The heatmap illustrates a promising level of maintainability within our project. High maintainability is critical in the lifespan of a software system as it allows for cost-effective updates and adaptations over time. Our design lends itself to an intuitive understanding of interrelationships and dependencies, which allows for seamless navigation through the codebase. Furthermore, it enables easier debugging, enhancement, and potential refactoring processes, thereby reinforcing the overall reliability and flexibility of our project. This maintainability not only promotes continuous improvement but also ensures our system remains adaptable to evolving requirements and resilient in the face of future challenges.

![maintainability_1](https://p.ipic.vip/ndn4gk.jpg)



## 2.Documentation

### 1.Documentation for end users(1 point)

#### a.Github url

The url of our end users documentation is :```https://github.com/sustech-cs304/team-project-2122/blob/main/南科老坛网站用户手册.md```

#### b.Screenshots:

![截屏2023-06-01 02.19.18](https://p.ipic.vip/og23q4.png)

![截屏2023-06-01 02.19.53](https://p.ipic.vip/xjeavt.png)

![截屏2023-06-01 02.22.55](https://p.ipic.vip/t46tvg.png)

#### c.Brief Decription:

This user manual offers comprehensive guidance on the use of the SUSTech Student Forum Website. Our main audience is the student body of Southern University of Science and Technology. This forum serves as a robust platform for student interaction, information dissemination, and experience sharing. The manual navigates through the site's features such as login/registration, posting and browsing threads, responding to posts, utilizing the flea market, watching short videos, and personalizing the user center. Our aim is to provide a seamless and engaging online community experience to all SUSTech students.

### 2.Documentation for developers(1 point)

#### a.Github url:

```https://github.com/sustech-cs304/team-project-2122/blob/main/南科老坛网站前端开发者手册.md```

#### b.Screenshot :

![截屏2023-06-01 02.25.15](https://p.ipic.vip/kvvg9u.png)

![截屏2023-06-01 02.25.30](https://p.ipic.vip/52h11c.png)

![截屏2023-06-01 02.25.42](https://p.ipic.vip/nbgvre.png)



#### c.Description:

This manual introduces the SUSTech Campus Forum project, designed as a digital hub for students of Southern University of Science and Technology. Key functionalities of the platform are covered such as information sharing, community discussion, private messaging, personalized user profiles, search engine, notification system, and user rights management.

An in-depth environment setup section is provided that guides developers on the use of Vue3 as the primary development language and npm for package management. A detailed description of the project directory structure helps developers navigate through the project.

The manual specifies coding and development conventions which are expected to be followed to maintain code consistency and readability. Furthermore, details on version control through GitHub and the steps to build and run the project using npm are outlined.

Lastly, the manual encourages an open community approach to addressing common issues, inviting developers to actively participate in discussions and problem-solving through GitHub's issue tracking.



## 3.Tests

### 1.We will introduce the testing tools we used.

We have meticulously executed both Integration Testing (IT) and End-to-End (E2E) testing on our backend. For the IT, we utilized the built-in 'Spring Boot Test' feature of Spring Boot and the 'Coverage Report' function of IDEA to conduct comprehensive testing of our backend code. We created automated test methods for every method in each controller. After running these tests and generating the subsequent reports, we were delighted to confirm a total line coverage of 100%. This signifies that over half of our codebase has been thoroughly vetted, providing a level of confidence in the robustness and reliability of our backend.

During our End-to-End (E2E) testing, we ran both the frontend and backend concurrently, emulating the actions of an ordinary user trying out various provided functionalities. The outcomes aligned well with our expectations, demonstrating that our system behaves as intended under typical user interactions.

### 2.Source code of related artifact for testing

#### a.Screenshots:

![截屏2023-06-01 02.56.36](https://p.ipic.vip/vovhqa.png)

![截屏2023-06-01 02.57.14](https://p.ipic.vip/qdmtkt.png)



#### b.GitHub url:

https://github.com/2002-Goatsucker/SUSForum/tree/master/service/main_service/src/test/java/com/sustech/main_service/controller

### 3.Test execution results

#### a.Test result:

![7311685556169_.pic](https://p.ipic.vip/yquq0h.png)

#### b.Coverage report:

![coverage](https://p.ipic.vip/qnn8vy.png)

https://github.com/sustech-cs304/team-project-2122/blob/main/coverage_report.png





## 4.Build

####  a. **Technology/Tools/Frameworks/Approaches for Building the Project**

On the backend, we used Spring Boot, a framework based on Java, along with Maven as our build tool. Spring Boot provides a simplified platform for building and running Java applications, and Maven manages our project dependencies and controls our build process.

On the frontend, we used Vue.js, a JavaScript framework for building user interfaces. Node.js and npm (Node Package Manager) were used for running our application locally during development and for managing our JavaScript dependencies.



#### b.Explain the tasks executed in a build

During a build, several tasks are executed. Here's a basic breakdown:

- **Dependency Resolution**: Maven and npm download and manage necessary project dependencies defined in the `pom.xml` and `package.json` files respectively.
- **Compilation**: Source code (Java for backend, JavaScript for frontend) is compiled into bytecode (Java) or transpiled into browser-compatible JavaScript (frontend).
- **Testing**: Unit tests and integration tests are run to ensure that the code behaves as expected.
- **Packaging**: For the backend, Maven packages the compiled code into a JAR or WAR file which includes the application and its dependencies. For the frontend, npm runs a build script which bundles and minifies the JavaScript code into static files suitable for serving by a web server.

#### c.Describe the final artifacts produced by a successful build

The final artifact of the backend build is a JAR or WAR file which can be run using the Java Runtime Environment (JRE). It can be executed with the command `java -jar <filename>.jar`.

The frontend build produces a set of static files (HTML, CSS, JavaScript) that can be served by any web server. These files are typically placed in a `dist` directory.

#### d.Buildfile or related artifacts/scripts used for building

The primary build files for our project are:

- Backend: `pom.xml` for Maven. This file specifies the project dependencies and controls the build process.
- Frontend: `package.json` for npm. This file lists the project dependencies and includes scripts for running the application locally and building for production.

Pom.xml file:

![截屏2023-06-01 03.24.10](https://p.ipic.vip/2586xx.png)

Package:

![截屏2023-06-01 03.27.29](https://p.ipic.vip/h69562.png)

## 5.Deployment

### 1.Introduce the containerization technology

Docker is a popular open-source platform that automates the deployment, scaling, and management of applications by using containerization technology. Containerization is a lightweight alternative to full machine virtualization that involves encapsulating an application in a container with its own operating environment. This provides many of the benefits of load isolation and security, but is much more portable and efficient.

Docker allows developers to package an application with all of its dependencies into a standardized unit for software development. This Docker container includes everything needed to run the application - the code itself, a runtime, libraries, environment variables, and config files.

### 2.The script or related artifacts (e.g., Dockerfile) used for containerization (URL links or snapshots).

#### Frontside:

![截屏2023-06-01 03.04.36](https://p.ipic.vip/9xcbcn.png)

#### Backside:

we used the docker compose to deploy different services into different containers. Followings are screenshots of our docker files.

![截屏2023-06-01 03.12.56](https://p.ipic.vip/9be4vm.png)

![截屏2023-06-01 03.13.23](https://p.ipic.vip/53bl5x.png)

![截屏2023-06-01 03.10.28](https://p.ipic.vip/k6q77x.png)

![截屏2023-06-01 03.10.42](https://p.ipic.vip/rg6i9z.png)



![截屏2023-06-01 03.11.25](https://p.ipic.vip/uy37jc.png)

![截屏2023-06-01 03.11.44](https://p.ipic.vip/sz2vrf.png)



![截屏2023-06-01 03.12.10](https://p.ipic.vip/t0z758.png)

![截屏2023-06-01 03.12.25](https://p.ipic.vip/3j7cnn.png)



### 3.A proof of successful containerization:

#### Frontside:

![7501685559263_.pic](https://p.ipic.vip/gj1w9o.png)

![7511685559307_.pic](https://p.ipic.vip/53ve4q.png)



#### Backside:

![7491685559229_.pic](https://p.ipic.vip/wt8xgs.png)