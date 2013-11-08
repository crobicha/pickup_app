require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter  => "mysql",
  :host     => "mysql.play-smarter.net",
  :username => "play_smarter",
  :password => "BYS2avW4",
  :database => "play_smarter_staging"
)

#class Game < ActiveRecord::Base
#end

#class Event < ActiveRecord::Base
#end

class User < ActiveRecord::Base
	
end



class App < Sinatra::Application
end

get '/' do
  p User.all
end