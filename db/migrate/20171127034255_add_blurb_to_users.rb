class AddBlurbToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :blurb, :string
  end
end
