class AlterCitiesAddUserId < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :user_id, :integer
    add_index :cities, :user_id
  end
end
