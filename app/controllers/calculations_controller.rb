class CalculationsController < ApplicationController
   
   def flex_square
      
    # The incoming parameters for this action look like {"a_number"=>"5"}
    # Rails stores that hash in a variable called params
    
      @user_number = params["a_number"].to_i
      @squared_number = @user_number ** 2
      
      render ("calculations/flexible_square_template.html.erb")
   end
   
    def flex_squareroot
      
      @user_number = params["a_number"].to_f
      @square_root = @user_number ** (1.0/2.0)
      
      render ("calculations/flexible_squareroot_template.html.erb")
    end
   
    def flex_payment
      
      @term = params["term"].to_i
      @principal = params["principal"].to_f      
      @interest_rate = params["interest_rate"].to_f
      
      @interest_rate_decimal = @interest_rate/120000.0
      @monthly_payment = (@interest_rate_decimal/(1-(1+@interest_rate_decimal)**(-1*@term*12)))*@principal

      render ("calculations/flexible_payment_template.html.erb")
    end
   
    def flex_random
      
      @lower_limit = params["lower_limit"].to_i
      @upper_limit = params["upper_limit"].to_i      
      @random_number = rand(@upper_limit - @lower_limit) + @lower_limit
      
      render ("calculations/flexible_random_template.html.erb")
    end
   
#############################################################################   
   
    def square_form
      render ("calculations/square_form_template.html.erb")
    end
   
    def process_square
    
        @user_number = params["user_number"].to_f
        @squared_number = @user_number ** 2
      
      render ("calculations/square_results_template.html.erb")
    end
   
    def square_root_form
      render ("calculations/square_root_form_template.html.erb")
    end
   
    def process_square_root
    
        @user_number = params["user_number"].to_f
        @square_root_number = @user_number ** (1.0/2.0)
      
      render ("calculations/square_root_results_template.html.erb")
    end

    def payment_form
      render ("calculations/payment_form_template.html.erb")
    end
   
    def process_payment
    
      @term = params["term"].to_i
      @principal = params["principal"].to_f      
      @interest_rate = params["interest_rate"].to_f
      
      @interest_rate_decimal = @interest_rate/1200.0
      @monthly_payment = (@interest_rate_decimal/(1-(1+@interest_rate_decimal)**(-1*@term*12)))*@principal
      
      render ("calculations/payment_results_template.html.erb")
    end

    def random_form
      render ("calculations/random_form_template.html.erb")
    end
   
    def process_random
    
      @lower_limit = params["lower_limit"].to_i
      @upper_limit = params["upper_limit"].to_i      
      @random_number = rand(@upper_limit - @lower_limit) + @lower_limit
      
      render ("calculations/random_results_template.html.erb")
    end


end