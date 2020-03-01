class CreateNominations < ActiveRecord::Migration[6.0]
  def change
    create_table :nominations do |t|
      t.string :name
      t.text :description
      t.integer :vote_count

      t.timestamps
    end
  end
end
