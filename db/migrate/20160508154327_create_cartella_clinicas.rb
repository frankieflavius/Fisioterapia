class CreateCartellaClinicas < ActiveRecord::Migration
  def change
    create_table :cartella_clinicas do |t|
      t.text :generalità
      t.text :anamnesi
      t.text :obiettivo
      t.text :diagnosi
      t.text :terapia
      t.text :esiti

      t.timestamps null: false
    end
  end
end
