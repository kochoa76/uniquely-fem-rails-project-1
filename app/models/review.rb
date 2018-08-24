class Review < ApplicationRecord
  belongs_to :company
  belongs_to :user
  accepts_nested_attributes_for :company

  # def company_attributes=(company_attributes)
  # company_attributes.values.each do |i, company_attributes|
  #     @company= Company.find_or_create_by(company_attributes)
  #   end
  # end
  #
  # def company_attributes
  #   self.company ? self.company_attributes : nil
  # end

  


end
