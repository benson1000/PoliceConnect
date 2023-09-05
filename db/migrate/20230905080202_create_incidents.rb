class CreateIncidents < ActiveRecord::Migration[6.1]
  def change
    create_table :incidents do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :media
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
