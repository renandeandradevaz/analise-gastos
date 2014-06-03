class ContribuintesController < ApplicationController
  before_action :set_contribuinte, only: [:show]

  def index
    @contribuintes = Contribuinte.all
  end

  def show
    session[:contribuinte_id] = @contribuinte.id
  end

  private
  def set_contribuinte
    @contribuinte = Contribuinte.find(params[:id])
  end
end
