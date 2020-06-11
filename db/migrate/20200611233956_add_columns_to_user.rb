class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
  	add_column :users,:status,:string
  	add_column :users,:blocked,:boolean
  end
end
