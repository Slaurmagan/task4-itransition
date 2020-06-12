class PublicController < ApplicationController
	before_action :authenticate_user!,only: :index
	before_action :set_users,only: [:block,:delete]
  def index
  	@users = User.all
  end

  def block
  	@users.each do |user|
  		user.blocked = !user.blocked?
  		user.save
  	end
  	redirect_to root_path
  end

  def delete
  	@users.delete_all
  	redirect_to root_path
  end

  private

  def set_users
  	@users = params[:ids].is_a?(Array) ? User.where(id: params[:ids]) : User.where("id = ? ",params[:ids])
  end
end
