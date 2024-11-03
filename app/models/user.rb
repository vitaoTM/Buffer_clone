class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]/, message: "Must be a valid email ٩(ఠ益ఠ)۶" }

end
