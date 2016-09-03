class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
