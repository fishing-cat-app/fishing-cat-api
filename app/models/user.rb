# frozen_string_literal: true

class User < ApplicationRecord
  # Strategy that compares both `jti` values
  include ::Devise::JWT::RevocationStrategies::JTIMatcher

  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, :jwt_revocation_strategy => self
end
