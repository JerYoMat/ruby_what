class RubyWhat::Ruby_Class < ActiveRecord::Base
  has_many :ruby_methods
  has_one :ruby_class_description


end
