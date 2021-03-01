class CreateVerifications < ActiveRecord::Migration[6.0]
  def change
    create_table :verifications do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :name
      t.boolean :statut
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
