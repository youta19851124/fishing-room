class Comment < ApplicationRecord
  belongs_to :catch
  belongs_to :user
end