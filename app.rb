# This is the main page that runs under sinatra
# it will redirect to the erb file mentioned in erb()
# to start sinatra and run the page simply type 'ruby app.rb'

require('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/find_and_replace')
require('pry')

get('/') do
  erb(:form)
end

get('/find_and_replace') do
  @sentence = params.fetch("sentence")
  @find = params.fetch("find")
  @replace = params.fetch("replace")
  @result = @sentence.find_replace(@find,@replace)
  erb(:find_and_replace)
end
