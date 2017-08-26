Rails.application.routes.draw do
  scope "(:locale)", locale: /en|pt-BR/ do
    root 'home#index'
  end

  post 'convert', to: 'home#convert'
end
