class Movie < ActiveRecord::Base

  has_many :reviews
  mount_uploader :image, ImageUploader

  scope :search, lambda { |title, director, runtime_in_minutes| 
    where("title LIKE ?", "%#{title}%").where("director LIKE ?","%#{director}%").where("runtime_in_minutes #{runtime_in_minutes}") }
  scope :paged, lambda { |page| page(page).per(5) }
  
  validates :title,
    presence: true

    validates :director,
      presence: true

    validates :runtime_in_minutes,
      numericality: { only_integer: true }

    validates :description,
      presence: true

    # validates :poster_image_url,
    #   presence: true

    validates :release_date,
      presence: true

    validate :release_date_is_in_the_past

    def review_average
      reviews.sum(:rating_out_of_ten)/reviews.size unless reviews.size == 0
    end

    # def self.search(search)
    #   where("title LIKE ?", "%#{search}%")
    # end


    protected

    def release_date_is_in_the_past
      if release_date.present?
        errors.add(:release_date, "should be in the past") if release_date > Date.today
      end
    end


end

