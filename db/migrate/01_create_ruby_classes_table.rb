class CreateRubyClassesTable < ActiveRecord::Migration
  def change
    create_table :ruby_classes do |t|
      t.string :name
      t.text :ruby_methods
      t.string :ruby_version 
      t.timestamps null: false
    end
  end
end
