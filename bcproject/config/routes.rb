Rails.application.routes.draw do

  devise_for :users

  scope "/:locale", locale: /#{I18n.available_locales.join("|")}/ do
    resources :posts
    root to: redirect("/%{locale}/posts", status: 302)
  end
  root to: redirect("/#{I18n.default_locale}", status: 302), as: :redirected_r\
                                                                 oot
  get "/*path", to: redirect("/#{I18n.default_locale}/%{path}", status: 302)\
      , constraints: {path: /(?!(#{I18n.available_locales.join("|")})\/).*/}, format: false
end













# Rails.application.routes.draw do
  
#   	devise_for :users
  
#   	scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
  	
#   	resources :posts
# 	root :to => 'posts#index'
  	
  
#   # "posts#index"
# end

# end
#    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

