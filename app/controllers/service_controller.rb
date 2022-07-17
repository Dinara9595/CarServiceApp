class ServiceController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.new
  end

  def new
    @service = Service.new
  end


end
