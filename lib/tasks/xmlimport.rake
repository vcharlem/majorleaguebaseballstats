namespace :import do
  desc 'import baseball teams from XML url link'
  task :getxmlteam => :environment do
    require 'nokogiri'
    doc = Nokogiri::XML(open("db/1998statistics.xml"))
    doc.xpath('//LEAGUE').each do |league|
      league_node = league.children
          leagues = {
            :league_name => league_node.css('LEAGUE_NAME').inner_text
          }
          puts "#{leagues}"
          myleague =  League.create!(leagues)
          
          league.xpath('./DIVISION').each do |division|
            divisions = {
              :division_name => division.at('DIVISION_NAME').text
            }
            
            puts " => #{divisions}"
            mydivision = Division.new(divisions)
            mydivision.save
            mydivision.update_attributes(:league => myleague)
            
               division.xpath('./TEAM').each do |team|
                  teams = {
                     :city => team.at('TEAM_CITY').text,
                     :name => team.at('TEAM_NAME').text
                  }  
                  puts " => => #{teams}"
                          
                  myteam = Team.new(teams) #Team.create!(teams)
                  myteam.save
                  myteam.update_attributes(:division => mydivision)
                  
                    team.xpath('./PLAYER').each do |player|
                      #puts " => => => Player: #{player.at('SURNAME').text}" if teams[:name].include?('Red Sox')
                      players = {
                        :surname          => player.at('SURNAME').text,
                        :given_name       => player.at('GIVEN_NAME').text,
                        :at_bat           => player.css('AT_BATS').inner_text,
                        :runs             => player.css('RUNS').inner_text,
                        :position         => player.css('POSITION').inner_text,
                        :hits             => player.css('HITS').inner_text,
                        :rbi              => player.css('RBI').inner_text,
                        :steals           => player.css('STEALS').inner_text,
                        :walks            => player.css('WALKS').inner_text,
                        :doubles          => player.css('DOUBLES').inner_text,
                        :triples          => player.css('TRIPLES').inner_text,
                        :home_runs        => player.css('HOME_RUNS').inner_text,
                        :sacrifice_flies  => player.css('SACRIFICE_FLIES').inner_text,
                        :hit_by_pitch     => player.css('HIT_BY_PITCH').inner_text
                      }               
                      myplayer = Player.new(players)
                      if (myplayer.save)
                            myplayer.update_attributes(:team => myteam)
                      end
                   end #team.xpath PLAYER 
               end #end doc.xpath TEAM
               
          end #league.xpath() DIVISION)
    end #doc.xpath(//LEAGUE)
  end #end task
  
  
  desc 'import baseball stats data from XML url link'
  task :getxmldata => :environment do
    require 'open-uri'
    require 'nokogiri'
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