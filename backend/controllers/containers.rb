class ArchivesSpaceService < Sinatra::Base

  Endpoint.get('/repositories/:repo_id/containers')
  .description("Get all containers")
  .params(["repo_id", :repo_id])
  .permissions([])
  .returns([200, "[(:container)]"]) \
  do
    handle_unlimited_listing(Container)
  end

end
