class Contact < ApplicationRecord
  validates :full_name, presence: true
  validates :phone_num, presence: true, numericality: { only_integer: true }
  validates :shop_name, presence: true
  validates :ic_no, presence: true, numericality: { only_integer: true }, length: {is: 12}
  validates :temp, presence: true, numericality: true
end
