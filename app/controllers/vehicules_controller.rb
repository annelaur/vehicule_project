class VehiculesController < ApplicationController

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR type_object ILIKE :query"
      @vehicules = Vehicule.where(sql_query, query: "%#{params[:query]}%")
    else
      @vehicules = Vehicule.all
    end
  end

  def show
    @vehicule = Vehicule.find(params[:id])
  end

  def new
    @vehicule = Vehicule.new
  end

  def create
    @vehicule = Vehicule.new(vehicule_params)
    @vehicule.user = current_user
    @vehicule.save
    redirect_to vehicules_path
  end

  private

  def vehicule_params
    params.require(:vehicule).permit(:name, :type_object, :description, :type_of_person, :vehicule_location)
  end

end
