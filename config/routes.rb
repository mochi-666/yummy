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
    resources :genres, only: [:index, :create, :edit, :update]
    resources :tags, only: [:index, :create, :edit, :update]
    resources :scenes, only: [:index, :create, :edit, :update]
    resources :atmospheres, only: [:index, :create, :edit, :update]
    resources :users, only: [:index, :show, :edit, :update]
    resources :searches, only: [:index, :show]

  end

  scope module: :public do
    root to: 'homes#top'
    resources :stores, only: [:index, :show]
    get 'my_page' => 'users#show'
    get 'unsbscribe' => 'users#create'
    patch 'withdraw' => 'users#destroy'
    resources :users, only: [:edit, :update, :create, :destroy]
    resources :reviews, only: [:new, :show, :edit, :update, :destroy]
    resources :review_comments, only: [:create, :update, :destroy]
    resources :genres, only: [:index]
  end

  devise_scope :user do
    post 'user/guest_sign_in', to: 'user/sessions#guest'
  end

end
