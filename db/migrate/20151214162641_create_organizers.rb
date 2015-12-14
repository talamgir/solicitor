class CreateOrganizers < ActiveRecord::Migration
  def change
    create_table :organizers do |t|
      t.text :outline
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
