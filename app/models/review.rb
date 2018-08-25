class Review < ApplicationRecord
  belongs_to :company
  belongs_to :user
  accepts_nested_attributes_for :company
  validates :salary, presence: true
  validates :company, presence: true
  validates :women_exec_roles, presence: true
  validates :recommend, presence: true
  validates :job_rating, presence: true


  def company_attributes=(company_attribute)
      self.company = Company.find_or_create_by(company_attribute)
  end


  #if company exists in drop down, remove company size attribute, and attach existing company name to the user review
  #if company doesn't exist, include drop down for company size and create the company name and size along with user review

  # def company_name=(name)
  #    self.company = Company.find_or_create_by(name: name)
  # end
  #
  # def company_name
  #   self.company ? self.company.name : nil
  # end

end
