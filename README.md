Author: Jim Munro

**ant4fed** is a fairly simple ANT build script for front-end developers. It allows you
to lint your js and css and beautify javascript all from the same tool. I may also 
build in a compressor and a unit-tester at some point.

I have not included ANT into the project itself yet, so you have to have ANT
installed to be able to use it. If you're not sure if you have it installed, open
a terminal and type:
	> ant -version
If you get a version number, you're all set. If not, download Apache ANT.

# Usage 
ant4fed currently has the following packages:

---
## CSS Lint  
This will 'lint' your CSS for you and give you helpful tips on making your
code more efficient. Look at <http://csslint.net/> for more info. There is a doc
link at the bottom of the page for options and such.

### Syntax:
Navigate to this folder in terminal or cmd prompt. Then type:
	> ant csslint -Dcssdir=path/to/cssdir
where path/to/cssdir is the path *FROM ONE LEVEL ABOVE ant4fed* For Example:

If your project is a sibling of the ant4fed root folder, it would be:
	> ant csslint -Dcssdir=project/css

### Customizations
You can change the things csslint looks for by changing the options in the options
properties file. Look at the site for info on options.

## JS Lint
This will 'lint' your JS for you and give you helpful tips on making your
code more efficient Look at jslint.com for more info. There is a lot of documentation
in the lib/jslint4java-2.0.0/docs folder.

### Syntax:
Navigate to this folder in terminal or cmd prompt. Then type:

		> ant jslint -Djsdir=path/to/jsdir

where path/to/jsdir is the path *FROM ONE LEVEL ABOVE ant4fed* For Example:
If your project is a sibling of the ant4fed root folder, it would be:

		> ant jslint -Djsdir=project/javascript


### Customizations
You can change the things jslint overlooks by adding to the options in the options
properties file. Look at the documentation in the docs folder for plenty more info on that.


## JS Beautifier 
This will beautify your JS for you. This DOES OPERATE DIRECTLY ON THE FILE,
so be careful. It will only allow you to specify one file at a time. This is based on the
<http://jsbeautifier.org/> beautifier.


### Syntax
Navigate to this folder in terminal or cmd prompt. Then type:
	> ant beautify -Dbfile=path/to/file.js
where path/to/file.js is the path *FROM ONE LEVEL ABOVE ant4fed* For Example:

If your project is a sibling of the ant4fed root folder, it would be:
	> ant beautify -Dbfile=project/js/file.js


### Customizations 
There aren't really any custom settings for this yet.
