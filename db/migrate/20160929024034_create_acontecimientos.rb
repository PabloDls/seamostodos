class CreateAcontecimientos < ActiveRecord::Migration
  def change
    create_table :acontecimientos do |t|

   	  t.string :image
      t.timestamps null: false
    end
  end
end
