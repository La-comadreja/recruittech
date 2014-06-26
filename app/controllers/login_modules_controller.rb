class LoginModulesController < ApplicationController
  before_action :set_login_module, only: [:show, :edit, :update, :destroy]

  # GET /login_modules
  # GET /login_modules.json
  def index
    @login_modules = LoginModule.all
	if current_user != nil
	  redirect_to homes_path
	end
  end

  # GET /login_modules/1
  # GET /login_modules/1.json
  def show
  end

  # GET /login_modules/new
  def new
    @login_module = LoginModule.new
  end

  # GET /login_modules/1/edit
  def edit
  end

  # POST /login_modules
  # POST /login_modules.json
  def create
    @login_module = LoginModule.new(login_module_params)

    respond_to do |format|
      if @login_module.save
        format.html { redirect_to @login_module, notice: 'Login module was successfully created.' }
        format.json { render action: 'show', status: :created, location: @login_module }
      else
        format.html { render action: 'new' }
        format.json { render json: @login_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /login_modules/1
  # PATCH/PUT /login_modules/1.json
  def update
    respond_to do |format|
      if @login_module.update(login_module_params)
        format.html { redirect_to @login_module, notice: 'Login module was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @login_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /login_modules/1
  # DELETE /login_modules/1.json
  def destroy
    @login_module.destroy
    respond_to do |format|
      format.html { redirect_to login_modules_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login_module
      @login_module = LoginModule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def login_module_params
      params[:login_module]
    end
end
