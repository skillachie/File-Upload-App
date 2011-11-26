class Fixcolumn < ActiveRecord::Migration
def change
    rename_column :uploads, :owner_id, :user_id
end

end
