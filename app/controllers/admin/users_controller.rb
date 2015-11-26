class Admin::UsersController < ApplicationController
  before_filter :restrict_access
  before_filter :require_admin

  def index
    @users = User.all.paged(params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to admin_users_path, notice: "#{@user.firstname} successfully created!"
    else
      render :'admin/users/new'
    end
    
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to admin_user_path(@user)
    else
      render :'admin/users/edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    DeleteUserMailer.deleted_notification(@user)
    redirect_to admin_users_path, notice: "User successfully deleted"
  end


  protected

  def user_params
    params.require(:user).permit(:email, :firstname, :lastname, :password, :password_confirmation, :admin)
  end



end
