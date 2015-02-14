print 'Loading environment...'
require 'rubygems'
require 'bundler/setup'
Dir.glob('./lib/*', &method(:require))

Bundler.require

puts 'Done.'
