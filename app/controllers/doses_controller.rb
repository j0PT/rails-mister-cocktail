class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
  end

  def destroy
  end
private

def dose_params
  params.require(:dose).permit(:amount, :ingredient_id)
  end
end
