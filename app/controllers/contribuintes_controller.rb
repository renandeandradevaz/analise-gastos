class ContribuintesController < ApplicationController
  before_action :set_contribuinte, only: [:show, :edit, :update, :destroy]

  def index
    @contribuintes = Contribuinte.all
  end

  def show
    session[:contribuinte_id] = @contribuinte.id
  end

  def new
    @contribuinte = Contribuinte.new
  end

  def edit
  end

  def create
    @contribuinte = Contribuinte.new(contribuinte_params)

    respond_to do |format|
      if @contribuinte.save
        format.html { redirect_to @contribuinte, notice: 'Contribuinte was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contribuinte }
      else
        format.html { render action: 'new' }
        format.json { render json: @contribuinte.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @contribuinte.update(contribuinte_params)
        format.html { redirect_to @contribuinte, notice: 'Contribuinte was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contribuinte.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @contribuinte.destroy
    respond_to do |format|
      format.html { redirect_to contribuintes_url }
      format.json { head :no_content }
    end
  end

  private
  def set_contribuinte
    @contribuinte = Contribuinte.find(params[:id])
  end

  def contribuinte_params
    params.require(:contribuinte).permit(:nome)
  end
end
