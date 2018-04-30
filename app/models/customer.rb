class Customer < ApplicationRecord
  belongs_to :state
  belongs_to :lawyer, optional: true
end
