class Show < ActiveRecord::Base
  def self.highest_rating
    maximum(:rating)
  end

  def self.most_popular_show
    where('rating = ?', highest_rating)[0]
  end

  def self.lowest_rating
    minimum(:rating)
  end

  def self.least_popular_show
    where('rating = ?', lowest_rating)[0]
  end
end
