Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Routes to CREATE directors
  get("directors/new_form", { :controller => "directors", :action => "new_form"})
  get("/create_director", { :controller => "directors", :action => "create_row"})

  # Routes to READ directors
  get("/directors",  { :controller => "directors", :action => "index" })
  get("/directors/:id",  { :controller => "directors", :action => "show" })

  # Routes to UPDATE directors
  get("/directors/:id/edit_form",  { :controller => "directors", :action => "edit_form" })
  get("/update_director/:id",  { :controller => "directors", :action => "update_row" })

  # Route to DELETE directors
  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })

  # Routes to CREATE actors
  get("actors/new_form", { :controller => "actors", :action => "new_form"})
  get("/create_actor", { :controller => "actors", :action => "create_row"})

  # Routes to READ actors
  get("/actors",  { :controller => "actors", :action => "index" })
  get("/actors/:id",  { :controller => "actors", :action => "show" })

  # Routes to UPDATE actors
  get("/actors/:id/edit_form",  { :controller => "actors", :action => "edit_form" })
  get("/update_actor/:id",  { :controller => "actors", :action => "update_row" })

  # Route to DELETE actor
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy" })

  # Routes to READ movies
  get("/movies",  { :controller => "movies", :action => "index" })
  get("/movies/:id",  { :controller => "movies", :action => "show" })

  # Route to DELETE movie
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy" })

end
