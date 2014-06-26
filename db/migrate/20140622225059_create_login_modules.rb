class CreateLoginModules < ActiveRecord::Migration
  def change
    create_table :login_modules do |t|

      t.timestamps
    end
  end
end
