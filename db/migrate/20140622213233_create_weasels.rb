class CreateWeasels < ActiveRecord::Migration
  def change
    create_table :weasels do |t|
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
