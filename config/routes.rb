Rails.application.routes.draw do
  root to: "top#index"

  mount RailsAdmin::Engine, at: "/kanri", as: "rails_admin"
end
