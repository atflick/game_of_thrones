class CreateRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      t.string :species
      t.string :alignment
      t.string :government
      t.string :insignia
      t.string :description
    end
  end
end
