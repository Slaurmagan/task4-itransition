class PublicController < ApplicationController
	before_action :authenticate_user!,only: :index
  def index
  	@users = User.all
  end

  def block
  	users = params[:ids].is_a?(Array) ? User.where("id = ?",params[:ids].join(' or ')) : User.where("id = ? ",params[:ids])
  	users.each do |user|
  		user.blocked = !user.blocked?
  		user.save
  	end
  	redirect_to root_path
  end

  def delete
  	users = User.where("id = ?",params[:ids].join(' or '))
  end

  private

end
