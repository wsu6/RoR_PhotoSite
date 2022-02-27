class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.column :photo_id, :string
      t.column :user_id, :string
      t.column :date_time, :date
      t.column :comment_text, :string
      t.timestamps
    end
  end
end
