class User < ApplicationRecord
  has_secure_password

  has_many :orders

  has_one :location, dependent: :destroy

  validates :name, presence: true
  
  validates :lastname, presence: true

  validates :email, presence: true, uniqueness: true, email: true

  validates :cedula, presence: true, 
                     length: { minimum: 7, maximum: 8 }, 
                     numericality: { only_integer: true },
                     uniqueness: true

  validates :phone_number, presence: true,
                           numericality: true,
                           length: { minimum: 10, maximum: 15 }
  validates :password,
            presence: true,
            length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }

  def current_orders 
    # Given the current_order (id), return all the items in that cart
    []
  end
end
