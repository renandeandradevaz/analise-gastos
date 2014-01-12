class ContribuintesController < ApplicationController
  before_action :set_contribuinte, only: [:show, :edit, :update, :destroy]

  # GET /contribuintes
  # GET /contribuintes.json
  def index
    @contribuintes = Contribuinte.all
  end

  # GET /contribuintes/1
  # GET /contribuintes/1.json
  def show
  end

  # GET /contribuintes/new
  def new
    @contribuinte = Contribuinte.new
  end

  # GET /contribuintes/1/edit
  def edit
  end

  # POST /contribuintes
  # POST /contribuintes.json
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

  # PATCH/PUT /contribuintes/1
  # PATCH/PUT /contribuintes/1.json
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

  # DELETE /contribuintes/1
  # DELETE /contribuintes/1.json
  def destroy
    @contribuinte.destroy
    respond_to do |format|
      format.html { redirect_to contribuintes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contribuinte
      @contribuinte = Contribuinte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contribuinte_params
      params.require(:contribuinte).permit(:nome)
    end
end
