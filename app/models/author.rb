class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :phone_number, length: {minmum: 10}
end
