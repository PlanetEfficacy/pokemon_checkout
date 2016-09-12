class BackpackPokemonsController < ApplicationController
  def create
    session[:backpack] ||= {}
    session[:backpack][params[:pokemon_id].to_s] ||= 0
    session[:backpack][params[:pokemon_id].to_s] += 1

    redirect_to root_path
  end
end
