class WeaselsController < ApplicationController
  before_action :set_weasel, only: [:show, :edit, :update, :destroy]

  # GET /weasels
  # GET /weasels.json
  def index
    @weasels = Weasel.all
  end

  # GET /weasels/1
  # GET /weasels/1.json
  def show
  end

  # GET /weasels/new
  def new
    @weasel = Weasel.new
  end

  # GET /weasels/1/edit
  def edit
  end

  # POST /weasels
  # POST /weasels.json
  def create
    @weasel = Weasel.new(weasel_params)

    respond_to do |format|
      if @weasel.save
        format.html { redirect_to @weasel, notice: 'Weasel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @weasel }
      else
        format.html { render action: 'new' }
        format.json { render json: @weasel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weasels/1
  # PATCH/PUT /weasels/1.json
  def update
    respond_to do |format|
      if @weasel.update(weasel_params)
        format.html { redirect_to @weasel, notice: 'Weasel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @weasel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weasels/1
  # DELETE /weasels/1.json
  def destroy
    @weasel.destroy
    respond_to do |format|
      format.html { redirect_to weasels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weasel
      @weasel = Weasel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weasel_params
      params.require(:weasel).permit(:name, :color)
    end
end
