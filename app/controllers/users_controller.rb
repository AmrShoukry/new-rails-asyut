class UsersController < ApplicationController
  # GET /users
  def index
    @users = User.all
  end

  # GET /users/:id
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(name: params[:user][:name], dob: params[:user][:dob], email_address: params[:user][:email_address], phone_number: params[:user][:phone_number], address: params[:user][:address], password: params[:user][:password])
    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  # GET /users/:id/edit
  def edit
    @user = User.find(params[:id])
  end

  # PUT /users/:id
  def update
    @user = User.find(params[:id])
    if @user.update(name: params[:user][:name], dob: params[:user][:dob], email_address: params[:user][:email_address], phone_number: params[:user][:phone_number], address: params[:user][:address], password: params[:user][:password] || @user.password)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/:id
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end
end
