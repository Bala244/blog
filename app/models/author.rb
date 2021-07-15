class Author < ApplicationRecord
    validates :author_name, presence:true
    validates :author_description, presence:true

    has_many :article
end
