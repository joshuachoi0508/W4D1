class ArtworksController < ApplicationController
  def index
    artworks = Artwork.all
    render json: artworks
  end
  
  def create
    artwork = Artwork.new(artwork_params)
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: 418
    end
  end
  
  def show
    artwork = Artwork.find(params[:id])
    render json: artwork
  end
  
  def update
    artwork = Artwork.find(params[:id])
    if artwork.update(artwork_params)
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: 418
    end
  end
  
  def destroy
    artwork = Artwork.find(params[:id])
    if artwork.destroy
      render json: Artwork.all
    else 
      render json: artwork.errors.full_message, status: 418
    end
  end
  
  private
  
  def artwork_params
    params.require(:artwork).permit(:username)
  end
end