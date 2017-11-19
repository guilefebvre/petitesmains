class CreateInscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :inscriptions do |t|
      t.string :email
      t.string :nom
      t.string :prenom
      t.string :age
      t.boolean :etudiant
      t.boolean :employeur
      t.boolean :sansstatut
      t.date :DateNaissance
      t.datetime :created
      t.datetime :updated

      t.timestamps
    end
  end
end
