class Api::PlacesController < ApplicationController
  def index
    @places = Place.all
    render 'index.json.jb'
  end
  def create
    @place = Place.create(
      name: params[:name],
      address: params[:address]
    )
    render 'show.json.jb'
  end
end
