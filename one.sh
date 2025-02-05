git init
echo "node_modules/" > .gitignore
echo "build/" >> .gitignore
echo ".dockerignore" >> .gitignore
git add .
git commit -m "Initial commit"
git branch -M dev
git remote add origin https://github.com/e01936316/umar_learning.git
git push -u origin dev
