Rails.application.routes.draw do

    devise_for :users

    scope "/:locale", locale: /#{I18n.available_locales.join("|")}/ do
        resources :posts
            root to: redirect("/%{locale}/posts", status: 302)
              end
                root to: redirect("/#{I18n.default_locale}", status: 302), as: :redirected_root
                  get "/*path", to: redirect("/#{I18n.default_locale}/%{path}", status: 302), constraints: {path: /(?!(#{I18n.available_locales.join("|")})\/).*/}, format: false
                    end