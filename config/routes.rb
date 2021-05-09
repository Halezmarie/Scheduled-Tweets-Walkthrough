Rails.application.routes.draw do

  # GET /about
  get "about", to: "about#index"

 root to: "main#index"
 #root is special b/c it is a custom helper it can be in an empty string 
  
end
