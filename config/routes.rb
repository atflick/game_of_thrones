Rails.application.routes.draw do
  root to: "landings#welcome"
  get "landings/changes", :to =>  "landings#changes"
  resources :races, :characters
end
