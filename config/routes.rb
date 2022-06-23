Rails.application.routes.draw do

  devise_for :user, controllers: {
     sessions:      'public/sessions',
     registrations: 'public/registrations'
  }

  devise_for :admin, controllers: {
    sessions:      'admin/sessions',
    passwords:     'admin/passwords',
    registrations: 'admin/registrations'
  }

  namespace :admin do
    resources :stores, only: [:index, :show, :new, :edit, :update, :create, :destroy]
    resources :users, only: [:index, :show, :edit, :update]
    resources :searches, only: [:index]
     resources :reviews, only: [:show,:destroy] do
      resources :review_comments, only: [:destroy]
    end

  end

  scope module: :public do
    root to: 'homes#top'
    resources :stores, only: [:index, :show]
    get 'my_page' => 'users#show'
    get 'unsbscribe' => 'users#create'
    patch 'withdraw' => 'users#destroy'
    resources :users, only: [:edit, :update, :create, :destroy]
    resources :reviews, only: [:new, :show, :edit, :update, :destroy, :create] do
      resources :review_comments, only: [:create, :destroy]
    end
    resources :genres, only: [:index]
  end

  devise_scope :user do
    post 'user/guest_sign_in', to: 'user/sessions#guest_sign_in'
  end

end
