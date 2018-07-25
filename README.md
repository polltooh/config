# config

#### Init github with local dir:
git init
git add *
git commit -am "init"

#### Go to github to create a new repository
git remote add origin new_repository_url
git push -u origin master

#### If not success due to repeated files:
git pull origin master
git push
