class Registry < ActiveRecord::Base
  belongs_to :registry_type
  belongs_to :user
end
