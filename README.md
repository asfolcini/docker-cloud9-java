# docker-cloud9-java
A docker image for online IDE Cloud9 and openJDK environment ( mvn and git included )<br>
Basic HTTP AUTH.


# RUN
<pre>
  docker run -d -v c:/your_local_workspace:/workspace -p 8181:8181 asfolcini/cloud9-java --auth userid:password
</pre>
