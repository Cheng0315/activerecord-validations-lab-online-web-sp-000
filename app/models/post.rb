class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validate :click_baity_title(:name)

  def click_baity_title(name)
    !["Won't Believe", "Secret", "Top 10", "Guess"].select {|ele| name.include?(ele)}.empty?
  end
end
