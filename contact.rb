require './address_book.rb'

class Contact
  attr_accessor :first_name, :last_name, :email, :id

  def initialize (first_name, last_name, email, id)
    @first_name=first_name
    @last_name=last_name
    @email=email
    @id=id
  end

  def to_s
    "#{id} #{first_name} #{last_name} #{email} "
  end
end