class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :job_title
      t.string :job_field

      t.timestamps
    end
  end
end
