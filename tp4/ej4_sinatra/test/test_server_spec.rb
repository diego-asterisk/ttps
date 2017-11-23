require_relative '../server'
require 'minitest/autorun'

require 'minitest/spec'

include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  describe 'test_get_root' do
   it 'should succed' do
    get '/'
    last_response.status.must_equal 200
    last_response.must_be :ok?
    last_response.body.must_match 'hr'
   end
  end
