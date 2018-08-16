class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :size
      

      t.timestamps
    end
  end
end
