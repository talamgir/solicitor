class CreateOrganizers < ActiveRecord::Migration
  def change
    create_table :organizers do |t|
      t.text :outline
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
