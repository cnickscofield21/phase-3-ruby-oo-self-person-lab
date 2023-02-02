require "pry"

# Person
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(num)
        @happiness = if num > 10
            10
        elsif num < 0
            0
        else
            num
        end
    end

    def hygiene=(num)
        @hygiene = if num > 10
            10
        elsif num < 0
            0
        else
            num
        end
    end

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "Ghetto"
    end

    def take_bath
        self.hygiene += 4
        "Bath time"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "Anothero one bites the dust"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend[:name]}! It's #{self.name}" # Check [:name] syntax
    end

    def start_conversation(person, topic)
        case topic
        when "politics"
            [self, person].each { |p| p.happiness -= 2}
            "blah blah blah blah lobbyist"
        when "weather"
            [self, person].each { |p| p.happiness += 2}
            "blah blah blah blah rain"
        else
            "blah blah blah blah"
        end
    end

end