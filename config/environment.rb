ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

require 'active_record'
require 'nokogiri'
require 'colorize'
require 'pry'
require 'open-uri'
require 'fileutils'


require_relative "../lib/ruby_what/doc_scraper"
require_relative "../lib/ruby_what/ruby_class"
require_relative "../lib/ruby_what/ruby_method"
require_relative "../lib/ruby_what/cli"
