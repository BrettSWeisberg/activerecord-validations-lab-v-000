class Post < ActiveRecord::Base

  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :category, inclusion: { in: %w( Fiction Non-Fiction)}
  validates :summary, { :length => { :maximum => 250 } }
  validate :message_validator #custom
<<<<<<< HEAD

  @@words = [/Won't Believe/, /Secret/, /Top [0-9]*/, /Guess/]
 def message_validator
    if @@words.none?{|word| word.match title} #match if true returns the value  and if false = nil
        errors.add(:title, "Must change title")
    end
=======

  @@words = [/Won't Believe/, /Secret/, /Top [0-9]*/, /Guess/]
 def message_validator

   if @@words.none? {self.title  }
     binding.pry
  end
>>>>>>> 2b6436ea1126a639ca45c2fab2658aea75da5bfd
 end
end
