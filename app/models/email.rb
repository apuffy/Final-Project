class Email < ActiveRecord::Base
    attr_accessible :to, :from, :content
end
