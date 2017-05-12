require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get('/') do
  @stores = Store.all()
  erb(:index)
end

get('/store/new') do
  erb(:store_form)
end

post('/stores') do
  store = params.fetch('new_store')
  newstore = Store.create({:name => store})
  erb(:index)
end

get('/store/:id') do
  @store = Store.find(params.fetch('id').to_i())
  erb(:store)
end

patch('/store/:id') do
  @store = Store.find(params.fetch('id').to_i())
  update_store = params.fetch('new_store')
  @store.update({:name => update_store})
  erb(:store)
end

delete("/store/:id") do
  @store = Store.find(params.fetch("id").to_i())
  @store.delete()
  @stores = Store.all()
  erb(:index)
end

get('/store/:id/update') do
  @store = Store.find(params.fetch('id').to_i())
  erb(:store_edit_form)
end
