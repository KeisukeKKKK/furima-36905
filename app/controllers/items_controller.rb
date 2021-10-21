class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  

  def index
  end

  def new
    @user = user.new
  end

  def create
  end
 


  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text)
  end
end