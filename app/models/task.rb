class Task < ApplicationRecord
    validates :name, presence: true,
                    uniqueness: true

    validates :details, presence: true

    belongs_to :category
end
