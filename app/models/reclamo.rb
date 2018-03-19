class Reclamo < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :empresa
end