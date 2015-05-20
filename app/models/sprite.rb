require "httparty"

class Sprite
  attr_reader :sprite_url

  def initialize(id)
    pokemon = HTTParty.get("http://pokeapi.co/api/v1/sprite/#{id}/").parsed_response
    @sprite_url = "http://pokeapi.co" + pokemon["image"]
  end

end
