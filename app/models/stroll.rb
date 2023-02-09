class Stroll < ApplicationRecord
    belongs_to :dog, dependent: :destroy
    belongs_to :dogsitter, dependent: :destroy
end