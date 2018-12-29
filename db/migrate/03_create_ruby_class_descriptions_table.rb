class CreateRubyClassesTable < ActiveRecord::Migration
  def change
    create_table :ruby_classes do |t|
      t.string :name
    end
  end
end
