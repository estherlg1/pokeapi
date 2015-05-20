
get '/' do
  @sprite = Sprite.new(26)
  erb :index
end

get '/:id' do
  @sprite = Sprite.new(params[:id])
  erb :index
end

post '/id' do
  @sprite = Sprite.new(params[:id])
  erb :index
end