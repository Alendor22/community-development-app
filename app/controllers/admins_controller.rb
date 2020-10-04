class AdminsController < ApplicationController

  def index
    admins = Admin.all
    render json: admins
  end

  def show
    render json: @admin
  end

  def create 
    admin = Admin.create(admin_params)
    if admin.valid?
      render json: {admin: admin.as_json(except: [:password_digest, :created_at, :updated_at])}
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    if  @admin.update(admin_params)
      render json: @admin
    else
      render json: @admin.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @admin.destroy
      render json: {message: "Administrator Deleted"},
      status: 200
    else
      render json: {message: "Administrator Failed To Delete"},
      status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
        @admin = Admin.find(params[:id])
    end

    def admin_params
      params.permit(:name, :email, :zip)
    end

end
