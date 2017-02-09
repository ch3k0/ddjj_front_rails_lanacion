Ddjj2::Application.routes.draw do
  
  get "tags_personas/index"

  get "ddjj/index"

  get "ddjj/show"

  get "tareas/get_ganalytics"

  match "index" => "home#index" 
  match "search" => "home#search"
  match "ddjj/comparador" => "home#comparador"
  match "ddjj/:id" => "home#get_ddjj"
  match "filtros/:id" => "home#get_filtros" 
  match "data_bienes" => "home#data_bienes" 
  match "data_personas" => "home#data_personas" 
  match "descargar_poder/:id" => "home#descargar_poder" 
  match "personas" => "home#lista_personas" 
    
  get "data/reset_bd"
  
  
  get "data/gen_str_buscador"
  get "tareas/borrar_cache"
  get "tareas/crear_csv_poderes" => "tareas#crear_csv_poderes"
  
 
  ## ADMIN***
  get "admin" => "admin#index"
  match "admin/declaraciones_juradas/:poder" => "admin#declaraciones_juradas"
  # match "admin/:id" => "admin#ddjj"
  
  resources :tiempo_controls
  match "tiempo_controls/:id" => "tiempo_controls#update"

  # tags personas
  get "tags_personas/index"
  get "tags_personas/save_tags"
  get "tags_personas/personas_sin_tags"
  

  root :to => 'home#index'

end
