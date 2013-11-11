BourbonApp::Application.routes.draw do
  resources :bourbon_whiskeys, only: [:index, :show, :edit] do
    member do
      post "like"
      post "hate"
    end
  end

  root to: "bourbon_whiskeys#index"
end
