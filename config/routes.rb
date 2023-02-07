Rails.application.routes.draw do
  get "/" => "homes#top"
  get 'books/new'
  post "books" => "books#create"
  get "books" => "books#index"
  get "books/:id" => "books#show"
  get "books/:id/edit" => "books#edit", as: "edit_book"
  patch "books" => "books#update"
  delete "books" => "books#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
