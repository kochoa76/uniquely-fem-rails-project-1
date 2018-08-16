class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.boolean :admin, default: false
      t.integer :salary
      t.integer :job_rating
      t.boolean :women_exec_roles
      t.boolean :promo_opps 
      t.boolean :recommend

      t.timestamps
    end
  end
end
