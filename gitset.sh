# setup GIT aliases

git config --global alias.co checkout; 
git config --global alias.ci commit; 
git config --global alias.st status; 
git config --global alias.br branch; 
git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'; 
git config --global alias.type 'cat-file -t'; 
git config --global alias.dump 'cat-file -p'; 
git config status.showuntrackedfiles no; 
git config --global push.default simple;

#GIT setup GIT default user config (customize to yourself)
git config --global user.name "Logan Gray"; git config --global user.email logan@intensetech.com; 

