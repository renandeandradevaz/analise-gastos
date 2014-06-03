class GastosController < ApplicationController

  def new
    @gasto = Gasto.new
  end

  def create
    @gasto = Gasto.new(gasto_params)
    @gasto.contribuinte = Contribuinte.find(session[:contribuinte_id])
    @gasto.save
    redirect_to contribuinte_path @gasto.contribuinte
  end

  private
  def gasto_params
    params.require(:gasto).permit(:valor, :descricao)
  end
end
