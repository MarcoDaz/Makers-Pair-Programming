require 'entry'
require 'contact'

RSpec.describe Entry do
    it "fails for empty title" do
        expect { Entry.new("", "contents") }.to raise_error "Invalid title"
    end

    it "fails for empty contents" do
        expect { Entry.new("title", "") }.to raise_error "Invalid contents"
    end

    it "fails if invalid contact" do
        expect { Entry.new('title', 'content', "string") }.to raise_error "Invalid contact"
    end
end
