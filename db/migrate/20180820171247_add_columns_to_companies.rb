class AddColumnsToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :salary, :integer
    add_column :companies, :job_rating, :integer
    add_column :companies, :women_exec_roles, :boolean
    add_column :companies, :promo_opps, :boolean
    add_column :companies, :recommend, :boolean
    remove_column :users, :salary, :integer
    remove_column :users, :job_rating, :integer
    remove_column :users, :women_exec_roles, :boolean
    remove_column :users, :promo_opps, :boolean
    remove_column :users, :recommend, :boolean
  end
end
