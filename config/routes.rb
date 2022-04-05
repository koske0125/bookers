Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root :to => 'homes#index' #rootにアクセスするとhomesコントローラーのindexアクションを実行
get '/books' => 'books#list' #/booksにアクセスするとbooksコントローラーのlistアクションを実行
get '/books/:id' => 'books#show', as: 'book'
get '/books/:id/edit' => 'books#edit', as: 'edit_book'
patch '/books/:id' => 'books#update', as: 'update_book'
post 'books' => 'books#create'
delete '/books/:id' => 'books#destroy', as: 'destroy_book'

end
