class Removeindex < ActiveRecord::Migration
	change_table :uploads do |t|
                 remove_index :uploads, :owner_id
        end



end
