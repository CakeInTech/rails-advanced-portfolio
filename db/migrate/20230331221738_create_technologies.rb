class CreateTechnologies < ActiveRecord::Migration[7.0]
  def change
    create_table :technologies do |t|
      t.string :name
      t.references :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
