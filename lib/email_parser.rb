# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
  end

  def parse
    arr = @emails.split(" ")
    arr2 = []
    arr.each do |num|
      if num.include?(",")
        arr2 << num.delete_suffix(",")
      else
        arr2 << num
      end
    end
    puts arr2
    arr2.uniq
  end

end

email_addresses = "john@doe.com, person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)

 parser.parse
