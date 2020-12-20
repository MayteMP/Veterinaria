class Owner < ApplicationRecord
    validates :name, :last_name, :street_name, :external_number, 
              :phone_number, :town, :city, :country, presence: true
    validates :phone_number, numericality: true
end
