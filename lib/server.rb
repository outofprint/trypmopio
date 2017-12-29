require 'link'
require 'raven'
require 'sinatra/base'

class Server < Sinatra::Base
  use Raven::Rack

  get %r{/(?:favicon.ico)*} do
    halt 200
  end

  get '/:hashid' do
    link = Link.find_by_hashid(params['hashid'])
    halt 422 unless link
    redirect link.url
  end
end
