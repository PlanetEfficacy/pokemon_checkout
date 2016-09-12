class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all.order("RANDOM()")
    @backpack_count = session[:backpack] ? session[:backpack].values.reduce(:+) : 0
  end
end
