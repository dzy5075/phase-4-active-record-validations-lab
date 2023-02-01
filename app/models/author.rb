class Author < ApplicationRecord
validates :name, {
    presence: true, 
    uniqueness: true
}
validates :phone_number, length { is: 10}

validates :is_phone_number_format
# if this is the correct format
end
