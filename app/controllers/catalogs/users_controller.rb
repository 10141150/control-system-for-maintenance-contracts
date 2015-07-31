class Catalogs::UsersController < ApplicationController
  before_action :set_catalogs_user, only: [:show, :edit, :update, :destroy]

  # GET /catalogs/users
  # GET /catalogs/users.json
  def index
    @catalogs_users = Catalogs::User.all
  end

  # GET /catalogs/users/1
  # GET /catalogs/users/1.json
  def show
  end

  # GET /catalogs/users/new
  def new
    @catalogs_user = Catalogs::User.new
  end

  # GET /catalogs/users/1/edit
  def edit
  end

  # POST /catalogs/users
  # POST /catalogs/users.json
  def create
    @catalogs_user = Catalogs::User.new(catalogs_user_params)

    respond_to do |format|
      if @catalogs_user.save
        format.html { redirect_to @catalogs_user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @catalogs_user }
      else
        format.html { render :new }
        format.json { render json: @catalogs_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogs/users/1
  # PATCH/PUT /catalogs/users/1.json
  def update
    respond_to do |format|
      if @catalogs_user.update(catalogs_user_params)
        format.html { redirect_to @catalogs_user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogs_user }
      else
        format.html { render :edit }
        format.json { render json: @catalogs_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/users/1
  # DELETE /catalogs/users/1.json
  def destroy
    @catalogs_user.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_user
      @catalogs_user = Catalogs::User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_user_params
      params.require(:catalogs_user).permit(:name, :email, :user_name)
    end
end
