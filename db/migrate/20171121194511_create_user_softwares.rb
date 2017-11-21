class CreateUserSoftwares < ActiveRecord::Migration[5.1]
  def change
    create_table :user_softwares do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :software, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
