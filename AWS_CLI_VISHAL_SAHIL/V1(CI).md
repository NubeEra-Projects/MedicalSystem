**Fully Managed CICD Pipeline**<br>
**Version 1 creation using following steps** <br>

1. Clone a Project. <br>
2. Install Java. <br>
3. Compile the program <br>
4. Exceute the program <br>
5. Add all the changes. <br>

**Creating .yml file** <br>
```
name: Perform CICD Operations on Console Based Java App
on: push
jobs:
  CICD:
    runs-on: ubuntu-latest
    steps:
      - name: 1. Clone Project
        uses: actions/checkout@v3     

      - name: 2. Set up JDK 17 
        uses: actions/setup-java@v3
        with:
          java-version: '17'
          distribution: 'temurin'

      - name: 3. Compilation
        run: javac WelcomeWorld.java

      - name: 4. Class Generation
        run: ls -ltra

      - name: 5. Running Project
        run: java WelcomeWorld

```
<br>

**After Creating .yml file we will now do some git commands** <br>

6. Adding all the changes <br>

```git add .```
<br>
7. Commit all the Changes <br>

```git commit -m "V1"```
<br>
8. Push all the changes to the repository<br>

```git push -u origin main ```