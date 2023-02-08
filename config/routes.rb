Rails.application.routes.draw do
  get "/" => "homes#top"
  get 'books/new'
  post "books" => "books#create"
  get "books" => "books#index", as: "index"
  get "books/:id" => "books#show", as: "book"
  get "books/:id/edit" => "books#edit", as: "edit"
  patch "books/:id" => "books#update"
  delete "books/:id" => "books#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
