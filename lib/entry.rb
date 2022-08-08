

class Entry

def initialize(title, contents, contact = nil)
    fail "Invalid title" if title.length == 0
    fail "Invalid contents" if contents.length == 0
    fail "Invalid contact" if contact.class.to_s != "Contact"

    @title = title
    @contents = contents
    @contact = contact
end

attr_accessor :title, :contents, :contact

end