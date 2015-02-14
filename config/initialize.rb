print 'Loading environment...'
require 'rubygems'
require 'bundler/setup'
require './config/database'
Dir.glob('./lib/*', &method(:require))

Bundler.require

puts 'Done.'
