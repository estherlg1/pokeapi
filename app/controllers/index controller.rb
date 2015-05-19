
get '/' do
  erb :index
end

get '/:id' do
  @sprite = Sprite.new(params[:id])
  erb :index
end