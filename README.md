#H2 MLB Statistics

Response to: https://gist.github.com/wnoronha/9bc99ba2bc421c9599c72c9960c28333

1998 Data set: http://www.cafeconleche.org/examples/baseball/1998statistics.xml
> rake db:migrate
> rake import:getxmldata

see demo at http://majorleaguestats.herokuapp.com/

Below are urls for github of the code and the app which is now running on Heroku.
1.	https://github.com/vcharlem/MajorLeagueStats
2.	http://majorleaguestats.herokuapp.com/

Just a couple of notes regarding this project…

1.	It is currently running Rails 4.2/Ruby 22
2.	It uses popular gems like Bootstrap, Nokogiri and Will_pagination. 
3.	Calculations and terms were based on Wikipedia
http://en.wikipedia.org/wiki/Baseball_statistics
4.	It adds a Search Box which searches by last name of players

Future plan is to add
1. multiple views of the available baseball stats.
6. additional functionality and notes so that this repository can become a learning aid to others.
