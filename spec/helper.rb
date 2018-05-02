ENV['APP_ENV'] ||= 'test'
ENV['SALT'] ||= 'test'

require './config/environment'
require 'minitest/autorun'
