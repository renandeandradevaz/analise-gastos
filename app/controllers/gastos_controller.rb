class GastosController < ApplicationController
  before_action :set_gasto, only: [:edit, :update, :destroy]

  def new
    @gasto = Gasto.new
  end

  def edit
  end

  def create
    @gasto = Gasto.new(gasto_params)
    @gasto.contribuinte = Contribuinte.find(session[:contribuinte_id])

    @gasto.save

    redirect_to contribuinte_path @gasto.contribuinte

  end

  def update

    @gasto.update(gasto_params)

    redirect_to contribuinte_path @gasto.contribuinte
  end

  def destroy
    @gasto.destroy
    redirect_to contribuinte_path @gasto.contribuinte
  end

  private
  def set_gasto
    @gasto = Gasto.find(params[:id])
  end

  def gasto_params
    params.require(:gasto).permit(:valor, :descricao)
  end
end
