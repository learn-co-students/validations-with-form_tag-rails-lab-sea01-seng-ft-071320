class Author < ActiveRecord::Base
  validates :name, presence: true
  validates_uniqueness_of :email
  validates :phone_number, length: { is: 10 }

end
