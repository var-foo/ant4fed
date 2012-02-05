# ant4fed 
A fairly simple ANT build script for front-end developers. It allows you
to lint your js and css and beautify javascript all from the same tool. I may also 
build in a compressor and a unit-tester at some point.

I have not included ANT into the project itself yet, so you have to have ANT
installed to be able to use it. If you're not sure if you have it installed, open
a terminal and type:
	
	> ant -version
	
If you get a version number, you're all set. Navigate to the ant4fed folder in a terminal to
use the targets outlined below. If not, download [Apache ANT] (http://ant.apache.org/).

---

ant4fed currently has the following packages:

## CSS Lint 
<https://github.com/stubbornella/csslint/wiki/Command-line-interface> 

This will 'lint' your CSS for you and give you helpful tips on making your
code more efficient. Look at <http://csslint.net/> for more info. There is a doc
link at the bottom of the page for options and such.

This works by directory but is not recursive.

### Syntax:
Navigate to this folder in terminal or cmd prompt. Then type:

	> ant csslint -Dcssdir=path/to/cssdir

where path/to/cssdir is the path **from one level above ant4fed** For Example:

If your project is a sibling of the ant4fed root folder, it would be:
	
	> ant csslint -Dcssdir=project/css

### Customizations
You can change the things csslint looks for by changing the options in the options
properties file. Look at the site for info on options.

## JS Lint
<http://code.google.com/p/jslint4java/>

This will 'lint' your JS for you and give you helpful tips on making your
code more efficient Look at jslint.com for more info. There is a lot of documentation
in the lib/jslint4java-2.0.0/docs folder. This works on the directory level, but is
not yet set up to work recursively.

### Syntax:
Navigate to this folder in terminal or cmd prompt. Then type:

		> ant jslint -Djsdir=path/to/jsdir

where path/to/jsdir is the path **from one level above ant4fed** For Example:
If your project is a sibling of the ant4fed root folder, it would be:

		> ant jslint -Djsdir=project/javascript


### Customizations
You can change the things jslint overlooks by adding to the options in the options
properties file. Look at the documentation in the docs folder for plenty more info on that.


## JS Beautifier
<https://github.com/einars/js-beautify>

This will beautify your JS for you. This **operates directly on the file**,
so be careful. It will only allow you to specify one file at a time. This is based on the
<http://jsbeautifier.org/> beautifier.


### Syntax
Navigate to this folder in terminal or cmd prompt. Then type:
	
	> ant beautify -Dbfile=path/to/file.js

where path/to/file.js is the path **from one level above ant4fed** For Example:

If your project is a sibling of the ant4fed root folder, it would be:

	> ant beautify -Dbfile=project/js/file.js


### Customizations 
There aren't really any custom settings for this yet.


## JS Min
<http://code.google.com/p/jsmin-ant-task/>

jsmin is a very light minification program by [http://www.crockford.com](Douglas Crockford). It
removes unnecessary whitespace and comments but won't actually change any of the code. It is
strongly recommended that you lint your js before using this tool.

This tool is set up to create .min.js files from your source files. It works recursively by
directory.


### Syntax
Navigate to this folder in terminal or cmd prompt. Then type:

	> ant jsmin -Dminout=path/to/min/dir -Dminsrc=path/to/src/dir

where path/to/min/dir is the path to your destination directory for your .min files **from one level above ant4fed**
and path/to/src/dir is the path to your source js **from one level above ant4fed** For Example:

If your project is a sibling of the ant4fed root folder, it would be:

	> ant jsmin -Dminout=myProject/js/compressed -Dminsrc=myProject/js/src


### Customizations 
There are a few customizations for jsmin. In the jsmin task of the build script, you can look for the following:
	
	<jsmin destdir="../${minout}" suffix="true">
		       <fileset dir="../${minsrc}/" includes="**/*.js"/>
		</jsmin>
		
		<!-- comment the previous <jsmin> and uncomment the following to do only one file at a time -->
	<!-- <jsmin srcfile="../${minsrc}" destdir="../${minout}" suffix="true" /> -->
	
*	Note that the last 2 lines are commented. If you uncomment the last line and comment out the first ``<jsmin>``, you
	can do one file at a time. 
	
*	You can also change the compression extension to whatever you want. For example, instead of .min.js, you could
	have -compressed.js. You can change the extension in the options.properties file. The property is called
	"jsmin.compressionextension".
	
*	There is an option called "force" that allows jsmin to overwrite existing compressed files. **This is set to true!!!**.
	You can change this in the options.properties file by changing the "jsmin.force" propety to false.

## JS Doc
<http://code.google.com/p/jsdoc-toolkit/>

This is a handy little program that will take javadoc style comments in the code and turn them into a usable documentation
microsite. The generated HTML files will be located in /reports/jsdoc. If you're not familiar with jsdoc, see the site
for usage details.

### Syntax
Navigate to this folder in terminal or cmd prompt. Then type:

	> ant jsdoc -Djsdir=/path/to/js/dir
	
where path/to/js/dir is the path to the source files you want to document **from one level above ant4fed** For Example:

If your project is a sibling of the ant4fed root folder, it would be:

	> ant jsdoc -Djsdir=myProject/js/src

### Customizations
Currently, there are none. There will be some coming up soon, but for now, we're going to keep it simple.
