class SearchController < ApplicationController

  def query
    @records = Inventory.search(params[:search], index_name: [Inventory.searchkick_index.name]).results

    if @records.length == 1
      redirect_to @records.first
      return
    end

    respond_to do |format|
      format.html # query.html.erb
      format.json { render json: @records }
    end
  end

end
