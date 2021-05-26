# email:string
# password_digest:string

# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Must be a valid e-mail address!" }
    # also adding it to the db as null:false adds extra protection 
end
