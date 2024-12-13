class User

  attr_accessor :email


  @@users = [] 


  def initialize(email)

    @errors = {}

    self.email = email

  end


  def save

    validate_presence

    validate_uniqueness


    if @errors.empty?

      @@users << self  

      true

    else

      false

    end

  end


  def errors

    @errors

  end


  private


  def validate_presence

    if email.nil? || email.strip.empty?

      @errors[:email] = "can't be blank"

    end

  end


  def validate_uniqueness

    if @@users.any? { |user| user.email == email }

      @errors[:email] ||= []

      @errors[:email] << "has already been taken"

    end

  end


end