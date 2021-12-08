class CreateAssembliesParts < ActiveRecord::Migration[6.1]

  def change
    create_table :assemblies_parts do |t|
      t.belongs_to :assembly, foreign_key: true
      t.belongs_to :part, foreign_key: true
      t.timestamps
    end
  end
  
end
