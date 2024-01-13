class Offert < ApplicationRecord
    has_many_attached :cv
    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}
    validates :phone_number, presence: true, format: { with: /\A[0-9]+\z/, message: "numer telefonu musi składać się tylko z cyfr" },
        length: { is: 9, message: "numer telefonu musi mieć dokładnie 9 cyfr" }
end
