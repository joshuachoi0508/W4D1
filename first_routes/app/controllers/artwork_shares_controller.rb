class ArtworkSharesController < ApplicationController
  def index
    new_connection = ArtworkShare.all
    render json: new_connection
  end 
  
  def create
    new_connection = ArtworkShare.new(artwork_shares_params)
    if new_connection.save
      render json: new_connection
    else
      render json: new_connection.errors.full_messages, status: 418
    end
  end
  
  def destroy
    connection = ArtworkShare.find_by_id(params[:id])
    if connection
      connection.destroy
      render json: connection
    else 
      render json: "doesn't exist", status: 418
    end
  end
  
  private
  
  def artwork_shares_params
    params.require(:artwork_share).permit(:artwork_id, :viewer_id)
  end
end