class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, { :length => { :minimum => 250} }
    validates :summary, { :length => { :maximum => 250} }
    validates :boolean_field_name, inclusion: ['Fiction', 'Non-Fiction']

    validates :is_clickbaity 

    def is_clickbaity
        # if this is NOT clickbaity enough
        #i.e if this title does not contain "Won't Beleive"
        if !(title.include? "'Won't Beleive")
        byebug
            # add an error message to the /errors object
            erros.add(:title, 'hey this is not clickbaity enough')
    end

end
