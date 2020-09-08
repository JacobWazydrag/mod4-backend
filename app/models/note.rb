class Note < ApplicationRecord
  belongs_to :user

  def self.create_with_user(title,description,user)
    user_id = user.id
    self.create(title: title,description: description, user_id: user_id)
  end

end
