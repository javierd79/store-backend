module ActsAsGendered
  GENDERS = ['male', 'female']

  def self.included(base)
    base.extend(ActsAsGenderedMethods)
  end

  module ActsAsGenderedMethods
    def acts_as_gendered
      extend ClassMethods
      include InstanceMethods

      validates_inclusion_of :gender, :in => GENDERS
    end
  end

  module ClassMethods
    def is_gendered?
      true
    end
  end

  module InstanceMethods
    def is_male
      gender = 'male'
    end

    def is_female
      gender = 'female'
    end

    def is_unisex 
      gender = 'unisex'
    end

    def is_male?
      gender == 'male'
    end

    def is_female?
      gender == 'female'
    end

    def is_unisex?
      gender == 'unisex'
    end
  end
end