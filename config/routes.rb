Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :stones do
    resources :bookings, only: [:create, :new]
  end
  patch "bookings/:id/accept", to: "bookings#accept"
  patch "bookings/:id/decline", to: "bookings#decline"
  patch "bookings/:id/cancel", to: "bookings#cancel"
  get "dashboard", to: "pages#dashboard"
end
