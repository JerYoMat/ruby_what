class CreateRubyClassesTable < ActiveRecord::Migration
  def change
    create_table :ruby_classes do |t|
      t.string :name
      t.text :headings
      t.text :sample_code
      t.text :mini_description
      t.text :description 
      t.timestamps null: false
    end
  end
end
