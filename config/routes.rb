Bourbon::Application.routes.draw do
  resources :bourbon_whiskeys, only: [:index, :show, :edit]

  root to: "bourbon_whiskeys#index"
end
