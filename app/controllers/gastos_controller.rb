class GastosController < ApplicationController
  before_action :set_gasto, only: [:edit, :update, :destroy]

  def show

    @contribuinte = Contribuinte.find(params[:id])
    session[:contribuinte_id] = @contribuinte.id
    @gastos = Gasto.where(:contribuinte => @contribuinte)

  end

  def new
    @gasto = Gasto.new
  end

  def edit
  end

  def create
    @gasto = Gasto.new(gasto_params)
    @gasto.contribuinte = Contribuinte.find(session[:contribuinte_id])

    @gasto.save

    redirect_to "/gastos/#{@gasto.contribuinte.id}"

  end

  def update

    @gasto.update(gasto_params)

    redirect_to "/gastos/#{@gasto.contribuinte.id}"
  end

  def destroy
    @gasto.destroy
    redirect_to "/gastos/#{@gasto.contribuinte.id}"
  end

  private
  def set_gasto
    @gasto = Gasto.find(params[:id])
  end

  def gasto_params
    params.require(:gasto).permit(:valor, :descricao)
  end
end
