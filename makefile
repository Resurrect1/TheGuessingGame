readme.md:
	touch readme.md
	echo "# This hub is dedicated towards THE GUESSING GAME" > readme.md
	echo "This page has to sole purpose of hosting 'The Guessing Game' for a UNIX course, 'The UNIX Workbech', on coursera.com." >> readme.md
	echo " " >> readme.md
	echo -n "This page was created on: " >> readme.md
	date >> readme.md
	echo -n "At the time of creation, 'The Guessing Game' has the following number of lines in it's code: " >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
