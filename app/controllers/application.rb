get '/' do
  "Hello world!"
end

# collections actions
# index
get '/contacts' do
  @contacts = Contact.all
  erb :'contacts/index'
end

# new
get '/contacts/new' do 
  "This is the contacts new action"
  erb :'contacts/new'
end

# create
post '/contacts' do
  puts params 
  @contact = Contact.create(params[:contact])
  redirect '/contacts'
end

# member actions
# show
get '/contacts/:id' do
  @contact = Contact.find(params[:id])
  erb :'contacts/show'
end

# edit
get '/contacts/:id/edit' do 
  "This is the contacts edit action"
end

# update
patch '/contacts/:id' do
  "This is the contacts update action"
end

post '/contacts/:id' do
  "This is the contacts update action"
end

# delete
delete '/contacts/:id' do
  "This is the contacts delete action"
end