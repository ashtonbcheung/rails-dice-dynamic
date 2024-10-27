Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "home"}) 
  get("/dice/:num_dice/:sides", { :controller => "zebra", :action => "flexible"}) 
end