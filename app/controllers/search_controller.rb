class SearchController < ApplicationController
  def index
    @nation_members = AvatarsFacade.nation_members(params[:nation].gsub('_', ' ').titleize)
    @nation_name = params[:nation].gsub('_', ' ').titleize
  end
end
