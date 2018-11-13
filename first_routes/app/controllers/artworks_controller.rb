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
    artwork = Artwork.find_by_id(params[:id])
    render json: artwork
  end
  
  def update
    artwork = Artwork.find_by_id(params[:id])
    if artwork && artwork.update(artwork_params)
      render json: artwork
    elsif artwork
      render json: artwork.errors.full_messages, status: 418
    else
      render json: "doesn't exist", status: 418
    end
  end
  
  def destroy
    artwork = Artwork.find_by_id(params[:id])
    if artwork
      artwork.destroy
      render json: artwork
    else
      render json: "doesn't exist", status: 418
    end
  end
  
  private
  
  def artwork_params
    params.require(:artwork).permit(:title, :image_url)
  end
end