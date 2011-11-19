class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :title
      t.integer :owner_id

      t.timestamps
    end
  end
end
