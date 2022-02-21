Preperation work
Ubuntu
Base loading
- Load python
- load pip
-- sudo apt install python3-pip

Proje ct Specific - Create new project
- create virtual environment
-- mkvirtualenv my_project
- load pip
-- pip install django
- make new django project
-- django-admin startproject my_project
-- python manage.py runserver


Docker Application Setup
- 

Kubernetes Application Setup
- 

 
Push to git
- git add .
- git commit -m "What I added"
- git push origin master

Terraform
- curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
- sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
- sudo apt-get update && sudo apt-get install terraform