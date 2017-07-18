Rails.application.routes.draw do

  get("/", {:controller => "calculations", :action =>"flex_square"})  
  get("/flexible/square/:a_number", {:controller => "calculations", :action =>"flex_square"})
  get("/flexible/square_root/:a_number", {:controller => "calculations", :action =>"flex_squareroot"})
  get("/flexible/payment/:interest_rate/:term/:principal", {:controller => "calculations", :action =>"flex_payment"})
  get("/flexible/random/:lower_limit/:upper_limit", {:controller => "calculations", :action =>"flex_random"})

  get("/square/new", {:controller => "calculations", :action =>"square_form"})  
  get("/square/results", {:controller => "calculations", :action =>"process_square"})

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
