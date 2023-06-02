Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :stones do
    resources :bookings, only: [:create, :new]
  end
  patch "bookings/:id/accept", to: "bookings#accept", as: :booking_accepted
  patch "bookings/:id/decline", to: "bookings#decline", as: :booking_refused
  patch "bookings/:id/cancel", to: "bookings#cancel"
  get "espace", to: "pages#espace"
  get "resa", to: "pages#resa"
end
