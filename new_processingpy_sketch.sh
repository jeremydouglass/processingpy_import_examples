#!/usr/bin/env bash
#
# create a Processing.py blank sketch project in a new Git repository
#
# Usage:
#    new_processingpy_sketch.sh sketchname


# create repo
mkdir $1 
cd $1
git init
git commit --allow-empty -m "Initial commit"
git status

# create default gitignore
echo "
.DS_Store
applet
application.linux32
application.linux64
application.windows32
application.windows64
application.macosx
__pycache__/
*.py[cod]
*\$py.class
.Python
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
*.egg-info/
.installed.cfg
*.egg
MANIFEST
.python-version
.env
.venv
env/
venv/
ENV/
env.bak/
venv.bak/
" >> .gitignore
git add .gitignore
git commit -m "add .gitignore defaults"

# create a blank processing.py sketch with the same name
echo "mode=Python
mode.id=jycessing.mode.PythonMode" >> sketch.properties
echo "def setup():
    pass
    
def draw():
    pass" >> $1.pyde
git add sketch.properties $1.pyde
git commit -m "blank processing.py sketch"

# instructions on pushing to GitHub
echo "To sync to GitHub, create a repo $1, then:"
echo "   git remote add origin https://github.com/YOURACCOUNT/$1.git"
echo "   git push -u origin master"
