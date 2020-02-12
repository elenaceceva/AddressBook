require './contact.rb'


class AddressBook
  attr_accessor :contacts, :hash

  def initialize
    @contacts = []
    @hash={}
  end

  def add_contact(first_name, last_name, email, id)
    contact=Contact.new(first_name, last_name, email, id)
    hash[id]=contact
    contacts.push(contact)
  end

  def delete_contact(contact)
    hash.delete(contact)
    contacts.delete(contact)
  end

  def edit(contact,attribute,edit)
    begin
      contact.send("#{attribute}=",edit)
    rescue
      puts "Invalid attribute"
      end
    end

  def search_by_id(field)
    begin
    kluc =hash.fetch(field)
    rescue
      puts "ID not found"
    else
       kluc
      end
  end

  def search(field)
    results=[]
    contacts.each do |contact|
      if contact.id.include?(field) || contact.first_name.include?(field) || contact.last_name.include?(field) || contact.email.include?(field)
        results.push(contact)
      end
    end
    results
  end

  def print_list
    contacts.each do |contact|
      puts contact.to_s
    end
  end
end
