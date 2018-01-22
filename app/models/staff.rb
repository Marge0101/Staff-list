class Staff < ApplicationRecord
    validates :name, presence: true,uniqueness: true,length:{maximum:50}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true,format: { with: VALID_EMAIL_REGEX} ,
                      uniqueness: true,length:{maximum:255}
    validates :region, presence: true,length:{maximum:20}
    mount_uploader :image, ImageUploader
    validate :image_size
    
    def age #age auto calculator
      date_format = "%Y%m%d"
      (Date.today.strftime(date_format).to_i - birthday.strftime(date_format).to_i) / 10000
    end
    
    private
    def image_size
        if image.size >5.megabytes
            errors.add(:picture,"Shold be less than 5MB")
        end
    end
    
    
end
