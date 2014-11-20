## VICtR template site

Clone this repository to start working on. Caution, VICtR is in early development and 
may not yet be practically useful for most people.

1. Make a fork of: https://github.com/tgreiser/victr-template.git
    This will be your repository to hold your HTML/CSS/JS and asset files for your designs

2. Run: git clone <your forked repository URL>

### Important locations

    * site/ - everything lives here
    * site/app.yaml - appengine configuration file for your site generator
    * site/themes/ - make one or more directories here to hold your themes. DO NOT USE "simple", make a copy if you must.

### Updating

Method #1 

If you are on an OS with bash, run site/update_deps.sh
If not, install cygwin or write a batch file or something, I don't know.

This process updates all the files in site/github.com and site/labix.org, it also depends on godep
being in your $GOPATH/bin directory.

Method #2

Fetch the git changes from victr-template and merge them into your fork.

    git checkout master
    git remote add upstream https://github.com/tgreiser/victr-template.git
    git fetch upstream
    git merge upstream/master

If you customize a lot, or you used themes/simple, you might have a bad time.

Method #3

Clone victr-template into a temporary directory somewhere and copy site/github.com and site/labix.org into your own site/ directory.
