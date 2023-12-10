class Favorite < ApplicationRecord
  self.table_name = "knight_time_favorites"
  belongs_to :user, foreign_key: "knight_time_user_id"
  belongs_to :experience, foreign_key: "knight_time_experience_id"
end
