class Review < ApplicationRecord
  belongs_to :company
  belongs_to :user


  def company_name=(name)
     self.company = Company.find_or_create_by(name: name)
  end

  def company_name
    self.company ? self.company.name : nil
  end

  def company_size=(size)
    self.company = Company.create(size: size)
  end

  def company_size
    self.company ? self.company.size : nil
  end

end
