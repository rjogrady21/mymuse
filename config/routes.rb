Rails.application.routes.draw do
  root to: 'pages#home'
  resources :books, except: [:show]
  resources :poems, except: [:show]
  resources :plays, except: [:show]
  resources :films, except: [:show]
  resources :arts, except: [:show]
end
