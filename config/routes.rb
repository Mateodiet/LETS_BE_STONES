Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :stones do
    resources :bookings, only: :create
  end
  patch "bookings/:id/accept", to: "bookings#accept"
  patch "bookings/:id/decline", to: "bookings#decline"
  patch "bookings/:id/cancel", to: "bookings#cancel"
end
