require 'contact'

RSpec.describe Contact do
    it 'constructs' do
        contact1 = Contact.new('Marco', '12345678912')
        expect(contact1.name).to eq 'Marco'
        expect(contact1.number).to eq '12345678912'
    end

    it 'fails if there is an empty string for name' do
        expect{Contact.new('', '1234567891')}.to raise_error 'Empty string'
    end

    it "fails if number isn't 11 digits" do
        expect{Contact.new('Marco', '123')}.to raise_error 'Invalid number'
    end
end