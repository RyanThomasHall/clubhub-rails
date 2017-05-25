class ClubsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create]

  def index
     @clubs = Club.all
  end

  def new
    @clubs = Club.new
  end

  def create
    @clubs = Club.create(club_params)
    if @clubs.save
     redirect_to @clubs
    else
      render 'new'
    end
  end

  def show
    @clubs = Club.find(params[:id])
  end

  private
    def club_params
      params.require(:club).permit(:description, :name, :location, :club_type, :frequency, :owner, :id)
    end
end
