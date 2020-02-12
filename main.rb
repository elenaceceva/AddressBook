require './address_book.rb'

  address_book = AddressBook.new
  loop do
    puts "Enter 1 to add "
    puts "Enter 2 to search "
    puts "Enter 3 to delete "
    puts "Enter 4 to edit contact"
    puts "Enter 5 to print list"
    puts "Enter 6 to exit"
    value=gets.chomp
    if value.to_i==1
      print "First name: "
      first_name=gets.chomp
      print "Last name: "
      last_name =gets.chomp
      print "Email: "
      email=gets.chomp
      print "ID: "
      id=gets.chomp
      address_book.add_contact(first_name, last_name, email, id)
    elsif value.to_i==2
      print "Search: "
      field=gets.chomp
      contact=address_book.search(field)
      puts contact
    elsif value.to_i==3
      print "ID of contact: "
      who=gets.chomp
      id=address_book.search_by_id(who)
      address_book.delete_contact(id)
    elsif value.to_i==4
      print "ID of a contact to edit: "
      id=gets.chomp
      print "Field to edit: "
      attribute=gets.chomp
      print "Edit: "
      edit=gets.chomp
      who=address_book.search_by_id(id)
      address_book.edit(who, attribute, edit)
    elsif value.to_i==5
      puts "Contact list: "
      puts "ID FirstName LastName Email"
      address_book.print_list
    elsif value.to_i==6
      exit
    end
  end
