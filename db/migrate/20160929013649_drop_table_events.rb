class DropTableEvents < ActiveRecord::Migration
  def change

  	drop_table :event
  end
end
