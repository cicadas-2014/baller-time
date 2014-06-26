class Baller < ActiveRecord::Base
    validates :name, presence: true
    validates :jersey, numericality: { only_integer: true }

    def awesome?
        true
    end

    def self.yo
        "yo"
    end
end
