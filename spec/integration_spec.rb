require 'diary'
require 'entry'
require 'contact'

RSpec.describe 'integration' do
    it "constructs" do
        entry = Entry.new("title", "contents", contact)
        expect(entry.title).to eq "title"
        expect(entry.contents).to eq "contents"
        expect(entry.contact).to eq contact
    end

    xit 'gets phone numbers' do
        contact1 = Contact.new('Marco', '07891203812')
        contact2 = Contact.new('Seb', '07891201232')
        entry1 = Entry.new('Pair Programming', 'Meeting Marco', contact1)
        entry2 = Entry.new('Yes', 'No No', contact2)
        diary = Diary.new
        diary.add(entry1)
        diary.add(entry2)
        result = diary.phone_numbers
        expect(result).to eq [contact1.phonenumber, contact2.phonenumber]
    end
end


