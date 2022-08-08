class Contact

    def initialize(name, number)
        fail 'Empty string' if name.length == 0
        fail 'Invalid number' if number.length != 11
        @name = name
        @number = number
    end

    attr_accessor :name, :number

end