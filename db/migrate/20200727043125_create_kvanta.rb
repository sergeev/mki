class CreateKvanta < ActiveRecord::Migration[6.0]
  def change
    create_table :kvanta do |t|
      t.string :name

      t.timestamps
    end
  end
end
