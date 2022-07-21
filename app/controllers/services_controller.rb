class ServicesController < ApplicationController
  before_action :find_service, only: %i[show edit update destroy]
  before_action :find_category, only: %i[create new]

  def show; end

  def new
    @service = Service.new
  end

  def edit; end

  def create
    debugger
    @service = @category.services.new(service_params)
    if @service.save
      redirect_to category_services_path(@service.category)
    else
      render :new
    end
  end

  def update
    if @service.update(service_params)
      redirect_to service_path(@service)
    else
      render :edit
    end
  end

  def destroy
    @service.destroy
    redirect_to category_services_path(@service.category)
  end

  private

  def find_category
    @category = Category.find(params[:category_id])
  end

  def find_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:name, :category_id)
  end
end
