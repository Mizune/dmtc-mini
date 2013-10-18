DmtcMini::Application.routes.draw do
  resources :pages, only: [:index] do
    collection do
      get :count
    end
  end
end
