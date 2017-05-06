require 'httparty'
require 'nokogiri'
require 'open-uri'

class Statistic
	include HTTParty

	def populatedb (location_url=nil)
		puts "*************************"
		puts "Processing Url Location :: #{location_url.class}"
		puts "*************************"

		# response = HTTParty.get(
		# 	'http://www.cafeconleche.org/examples/baseball/1998statistics.xml',
		# 	:headers => {'Content-type' => 'text/xml'}
		# )

	    doc = Nokogiri::XML(open("http://www.cafeconleche.org/examples/baseball/1998statistics.xml"))
	    
	    doc.css('PLAYER').each do |node|
		      children = node.children
		      players = {
		        :surname => children.css('SURNAME').inner_text,
		        :given_name => children.css('GIVEN_NAME').inner_text,
		        :at_bat  => children.css('AT_BATS').inner_text,
		        :runs    =>children.css('RUNS').inner_text,
		        :position  => children.css('POSITION').inner_text,
		        :hits  => children.css('HITS').inner_text,
		        :rbi  => children.css('RBI').inner_text,
		        :steals  => children.css('STEALS').inner_text,
		        :walks  => children.css('WALKS').inner_text,
		        :doubles  => children.css('DOUBLES').inner_text,
		        :triples  => children.css('TRIPLES').inner_text,
		        :home_runs  => children.css('HOME_RUNS').inner_text,
		        :sacrifice_flies => children.css('SACRIFICE_FLIES').inner_text,
		        :hit_by_pitch => children.css('HIT_BY_PITCH').inner_text
		      }
		      #Player.create!(players)
		     getplayer =  Player.new(players)
		     getplayer.save
	    end
	end

end