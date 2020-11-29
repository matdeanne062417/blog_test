class Task < ApplicationRecord
    validates :name, presence: true,
                    uniqueness: true

    validates :details, presence: true
end
