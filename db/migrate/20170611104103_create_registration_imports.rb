class CreateRegistrationImports < ActiveRecord::Migration[5.0]
  def change
    create_table :registration_imports do |t|

      t.timestamps
    end
  end
end
