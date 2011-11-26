class Altert < ActiveRecord::Migration
def change
    rename_column :uploads, :users_id, :user_id
end




end
