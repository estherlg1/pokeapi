require "httparty"

class Sprite
  attr_reader :sprite_url

  def initialize(id)
    pokemon = HTTParty.get("http://pokeapi.co/api/v1/sprite/#{id}/").parsed_response
    @sprite_url = pokemon["image"]
  end

end
