class CreatePredators < ActiveRecord::Migration
  def change
    create_table :predators do |t|
      t.string :name
      t.string :teeth_size

      t.timestamps
    end
  end
end
