DmtcMini::Application.routes.draw do
  resources :pages, only: [:index], defaults: {format: :json} do
    collection do
      get :count
    end
  end
end
