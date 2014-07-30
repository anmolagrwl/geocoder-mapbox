class ChangeColumnNameToLatitude < ActiveRecord::Migration
  def change
  	rename_column :locations, :latitutde, :latitude
  end
end
