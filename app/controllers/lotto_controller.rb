class LottoController < ApplicationController
 
  def index
      
  end
  
  def new_lotto
    #Generate 6 unique random numbers 1 - 49
    @lotto_numbers = (1..49).to_a.sort{rand() - 0.5 } [0..5]
    
  end
  
  def new_euro
    #Generate 5 unique random numbers 1 - 50
  	@euro_numbers = (1..50).to_a.sort{ rand() - 0.5 }[0..4]

  	#Generate 2 unique random numbers 1 - 9
  	@euro_stars = (1..9).to_a.sort{ rand() - 0.5 }[0..1]
    
  end
  
  def new_thunder
    #Generate 5 unique random numbers 1 - 34 
    @thunder_main_numbers = (1..34).to_a.sort{ rand() - 0.5 }[0..4]
    #Generate 1 unique random number
    @thunderball = rand(14) + 1
  end
end
