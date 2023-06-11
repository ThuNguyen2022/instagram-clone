# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  caption    :text
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images
end
