Rails.application.routes.draw do
  
  	devise_for :users
  
  	scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
  	
  	resources :posts
	root :to => 'posts#index'
  	
  
  # "posts#index"
end

end
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

