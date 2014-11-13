ArchivesSpace::Application.routes.draw do

  match('/plugins/aspace_yale_container_operations' => 'aspace_yale_container_operations#index', :via => [:get])

end
