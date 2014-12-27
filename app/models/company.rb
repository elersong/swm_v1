class Company < ActiveRecord::Base
    has_many :users # a funeral service company may have numerous users
end
