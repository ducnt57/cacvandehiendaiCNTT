Project002::Application.routes.draw do      
  #USER
  get "logout"    => "sessions#destroy",  :as => "logout"
  get "login"     => "sessions#new",      :as => "login"
  get "register"  => "users#new",         :as => "register"
  get "home"      => "pages#home",        :as => "home"
  get "contact"   => "pages#contact",     :as => "contact"
  get "profile"   => "users#show",        :as => "profile"
  get "subject/:cate_id/:slug"		            => "pages#subject"	, :as => "subject"
  post "pages/checkanswer"
  #ADMIN
  get "admin/home"                            => "admin#admin_home"
  get "quizzes/home"
  get "quizzes/new"
  post "quizzes/create"
  get "quizzes/edit/:quiz_id/:quiz_slug"      => "quizzes#edit"
  post "quizzes/update"
  get "quizzes/del/:quiz_id"                  => "quizzes#del"                  

  get "category/new"
  post "category/create"
  get "category/edit/:cate_id/:cate_slug"     => "category#edit"
  post "category/update"
  get "category/del/:cate_id"                 => "category#del"


  root :to => "pages#home"
  resources :users
  resources :sessions  
  
end
