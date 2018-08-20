class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :companies, :salary, :integer
    remove_column :companies, :job_rating, :integer
    remove_column :companies, :women_exec_roles, :boolean
    remove_column :companies, :promo_opps, :boolean
    remove_column :companies, :recommend, :boolean
    add_column :users, :salary, :integer
    add_column :users, :job_rating, :integer
    add_column :users, :women_exec_roles, :boolean
    add_column :users, :promo_opps, :boolean
    add_column :users, :recommend, :boolean
    add_column :users, :company_name, :string
    add_column :users, :company_size, :integer 
  end
end
