require 'link'
require 'newrelic_rpm'
require 'rollbar/middleware/sinatra'
require 'sinatra/base'

class Server < Sinatra::Base
  use Rollbar::Middleware::Sinatra

  helpers do
    def link
      @link ||= Link.find_by_hashid(params['hashid'])
    end
  end

  get '/' do
    'Hi!'
  end

  get '/:hashid' do
    halt 422 unless link
    redirect link.url
  end
end
