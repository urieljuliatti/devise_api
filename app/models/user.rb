# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :confirmable,
         :trackable

  include DeviseTokenAuth::Concerns::User

  has_many :articles, dependent: :destroy

  before_validation :set_uid

  def admin?
    admin.eql?(true) unless admin.blank?
  end

  private

  def set_uid
    self[:uid] = self[:email] if self[:uid].blank? && self[:email].present?
  end
end
