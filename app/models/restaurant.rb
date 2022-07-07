# frozen_string_literal: true

class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy
end
