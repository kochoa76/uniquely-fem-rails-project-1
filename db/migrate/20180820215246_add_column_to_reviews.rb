class AddColumnToReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :salary, :integer
    remove_column :users, :job_rating, :integer
    remove_column :users, :women_exec_roles, :boolean
    remove_column :users, :promo_opps, :boolean
    remove_column :users, :recommend, :boolean
    remove_column :users, :company_name, :string
    remove_column :users, :company_size, :integer
    add_column :reviews, :salary, :integer
    add_column :reviews, :job_rating, :integer
    add_column :reviews, :women_exec_roles, :boolean
    add_column :reviews, :promo_opps, :boolean
    add_column :reviews, :recommend, :boolean
    add_column :reviews, :company_name, :string
    add_column :reviews, :company_size, :integer
    
  end
end
