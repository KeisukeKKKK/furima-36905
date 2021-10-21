class AddBirthdayColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :birthday, :string
    add_column :users, :text, :string
  end
end
