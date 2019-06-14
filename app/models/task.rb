class Task < ApplicationRecord
    belongs_to :project

    validates :title, :order, presence: true

    before_save :assign_order
    
    private

    def assign_order
        self.order = (Task.count + 1) * 1000
    end
end
