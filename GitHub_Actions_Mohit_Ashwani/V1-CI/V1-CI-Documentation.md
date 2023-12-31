# Github Actions:
## V1: Java Console(Github Checkout, Install Java)
In this task I have to create a CI pipeline.For this I need to install java and do Github checkout.<br>

## CI architecture: <br>

![Untitled Diagram-V1 drawio (2)](https://github.com/NubeEra-Projects/MedicalSystem/assets/103624779/d8285614-f7b9-4691-a20d-ff730626df6b)


### Create a .yml file and write the below code : <br>

```

name: Perform CICD Operations on Console Based Java Application
  on: push
  jobs:
    CICD:
      runs-on: ubuntu-latest
      steps:
        - name: 1. Clone Project
          uses: actions/checkout@v3     

        - name: 2. Set up JDK 17 From My Friend Temurin
          uses: actions/setup-java@v3
          with:
            java-version: '17'
            distribution: 'temurin'

        - name: 3. Compile Java Console App Project
          run: javac WelcomeWorld.java

        - name: 4. Check Class Generated
          run: ls -ltra

        - name: 5. Run Java Console App Project
          run: java WelcomeWorld

```

1. Clone a Project. <br>
2. Install Java. <br>
3. Compile the program <br>
4. Exceute the program <br>
5. Create a new branch. Ex-V1 <br>
6. Add all the changes. <br>

``` 
git add .

 ```

7. Commit all the changes. <br>

``` 
git commit -m "V1"

 ```

8. Push the changes to the branch. <br>

``` 
git push origin V1

```


--> on: is for the command on which you want the file to be executed <br>
--> name: In this any text can be given. <br>
--> run: In run the command which needs to be executed <br>

## Output: <br>
* Changes will be reflected in GitHub repository under actions section. <br>

![image](https://github.com/NubeEra-Projects/MedicalSystem/assets/103624779/54bcdb11-25c7-462e-bdf7-d174cb424532)
![image](https://github.com/NubeEra-Projects/MedicalSystem/assets/103624779/e6adf356-0daa-49d3-9205-5e19a603ef79)






