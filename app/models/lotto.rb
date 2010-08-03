class Lotto
  
  class << self
    def lotto_wednesday_numbers
      (1..49).to_a.sort{rand() - 0.5 } [0..5]
    end
    
    def euro_numbers
      (1..50).to_a.sort{ rand() - 0.5 }[0..4]
    end
    
    def euro_stars
      (1..9).to_a.sort{ rand() - 0.5 }[0..1]
    end
    
    
    
  end
  
end

