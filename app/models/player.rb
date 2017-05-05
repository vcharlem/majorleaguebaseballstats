class Player < ActiveRecord::Base
    #All calcuations based on http://en.wikipedia.org/wiki/Baseball_statistics
    #http://en.wikipedia.org/wiki/On-base_plus_slugging
  belongs_to :team
  before_save :calculate_stats
  before_save :calculate_ops
  
  def self.search(search)
    if search
      where('surname LIKE ?', "%#{search.capitalize}%")
    else
      all
    end
  end
  
  def calculate_stats
    self.hits   ||= 0
    self.steals ||= 0
    self.runs   ||= 0
    self.rbi    ||= 0
    
    if (!self.at_bat.nil? && !self.at_bat.zero?)
      self.avg = ((self.hits).to_f / self.at_bat).round(3)
    else
      self.avg = 0.0
    end
  end
  
  def calculate_ops
    self.hits    ||=0
    self.doubles ||=0
    self.triples ||=0
    self.at_bat  ||=0
    self.home_runs ||=0
    self.walks   ||=0
    self.sacrifice_flies ||=0
    self.hit_by_pitch ||=0

    tb = ((self.hits * 1) + (self.doubles * 2) + (self.triples * 3) + (self.home_runs * 4))
    factor_a =  (self.at_bat * (self.hits + self.walks + self.hit_by_pitch))
    factor_b =  (tb * (self.at_bat + self.walks + self.sacrifice_flies + self.hit_by_pitch))
    factor_c =  (self.at_bat * (self.at_bat + self.walks + self.sacrifice_flies + self.hit_by_pitch))  

    if (factor_c > 0 ) 
      self.ops = ((factor_a + factor_b).to_f / factor_c).round(3)
    end
    self.ops ||=0
  end
end
