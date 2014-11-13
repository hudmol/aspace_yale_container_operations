ArchivesSpace::Application.routes.draw do

  match('/plugins/bulk_container_operations' => 'bulk_container_operations#index', :via => [:get])

end
