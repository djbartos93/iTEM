class Settings::IndexController < ApplicationController
  before_action :set_new_settings, :set_settings, only: [:index]

  def index
    respond_to do |format|
      format.html # index.html.erb
    end
  end


  def set_settings
    @types = Type.order name: :asc
  end

  def set_new_settings
    @new_type = Type.new
  end
end
