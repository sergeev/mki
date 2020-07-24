class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
     t.string :username
     t.string :email
     t.string :user_role
     t.string :active
     t.timestamps
    end
  end
end
