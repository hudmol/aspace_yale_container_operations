class AspaceYaleContainerOperationsController < ApplicationController

  set_access_control "update_resource_record" => [:index]

  def index
    @containers = JSONModel::HTTP::get_json("/repositories/#{session[:repo_id]}/containers")
  end

end