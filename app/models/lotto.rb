class Lotto
  
  class << self
    def lotto_numbers
      (1..49).to_a.sort{rand() - 0.5 } [0..5]
    end
    
    def euro_numbers
      (1..50).to_a.sort{ rand() - 0.5 }[0..4]
    end
    
    def euro_stars
      (1..9).to_a.sort{ rand() - 0.5 }[0..1]
    end
    
    def thunder_main
      (1..34).to_a.sort{ rand() - 0.5 }[0..4]
    end
    
    def thunderball
      rand(14) + 1
    end
    
    def powerball_main
      (1..59).to_a.sort{ rand() - 0.5 }[0..4]
    end
    
    def powerball
      rand(39) + 1
    end
    
    def canada_649
      powerball_main
    end
    
    def usa_mega
      (1..56).to_a.sort{ rand() - 0.5 }[0..4]
    end
    
    def megaball
      rand(46) + 1
    end
    
    def new_york
      (1..59).to_a.sort{ rand() - 0.5 }[0..5]
    end
    
    def irish
      (1..45).to_a.sort{ rand() - 0.5 }[0..5]
    end
    
    
  end
  
end

