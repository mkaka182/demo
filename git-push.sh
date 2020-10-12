echo "Enter message"
read message
git add .
git commit -m"${message}"
if [ -n "$(git status - porcelain)" ];
then 
 echo "it is clean"
else
 git status 
 echo "Pushing data to remote server!"
 git push -u origin master
fi
