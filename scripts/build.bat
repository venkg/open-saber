echo "STARTING training center and student"
pwd
cd prod_tccourses
copy /Y application.yml D:\prod_opensaber\java\registry\src\main\resources\
cd ..\..\prod_opensaber\java
cmd /C mvn clean install -DskipTests
echo "Copying jar from .m2"
copy /Y C:\Users\dgtadmin\.m2\repository\io\opensaber\registry\2.0.3-SNAPSHOT\registry-2.0.3-SNAPSHOT.jar d:\prod\prod_tccourses\
cd d:\prod\prod_tccourses\
cd ..

echo "STARTING student"
cd prod_student
copy /Y application.yml D:\prod_opensaber\java\registry\src\main\resources\
cd ..\..\prod_opensaber\java
cmd /C mvn clean install -DskipTests
copy /Y C:\Users\dgtadmin\.m2\repository\io\opensaber\registry\2.0.3-SNAPSHOT\registry-2.0.3-SNAPSHOT.jar d:\prod\prod_student\
cd d:\prod\prod_student\
cd ..

cd ..
cd prod_teacher
cd ..
copy /Y application.yml D:\prod_opensaber\java\registry\src\main\resources\
cd ..\..\prod_opensaber\java
cmd /C mvn clean install -DskipTests
copy /Y C:\Users\dgtadmin\.m2\repository\io\opensaber\registry\2.0.3-SNAPSHOT\registry-2.0.3-SNAPSHOT.jar d:\prod\prod_teacher\
cd d:\prod\prod_teacher\
cd ..
