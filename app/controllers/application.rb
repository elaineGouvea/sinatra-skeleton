get '/' do
  "Hello world!"
end

# collections actions
# index
get '/contacts' do
  @contacts = Contact.all
  @contacts.map{ |contact| contact.email }.to_s
end

# new
get '/contacts/new' do 
  "This is the contacts new action"
end

# create
post '/contacts' do
  "This is the contacts create action"
end

# member actions
# show
get '/contacts/:id' do
  puts params
  @contact = Contact.find(params[:id])
  @contact.email
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