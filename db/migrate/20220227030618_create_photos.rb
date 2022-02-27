class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.column :date_time, :date
      t.column :file_name, :string
      t.column :last_name, :string
      t.column :user_id, :string
      t.timestamps
    end
  end
end
