class User < ApplicationRecord
  has_secure_password # password e password_confirmation campos virtuais
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/,
    message: "E-mail tem que ser válido" }
end
