# Docker MLDM

my docker-compose environment for machine learning products, including:  

1. machine learning environment  
2. redis-cache  
3. mongodb  
4. postgres db  

If you don't need 2-4, un-comment the first couple of lines to start a single container for machine learning!


# How to use

just follow the script number:

* **0-prepare-host.sh**   
  install docker and add yourself into docker group.  
  (NOTE: have to re-login to activate docker group!)
  
* **1-build-mldm.sh**  
  build my machine learning toolbelt container, feel free to append anything you like in Dockerfile!
  
  
* **2-start-mldm.sh**  
  start the container with some environment setup script, with ipython notebook in http://<your_machine>:8888
  
  
Enjoy!

