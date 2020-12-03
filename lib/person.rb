# your code goes here
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    attr_accessor :bank_account
    attr_reader :name, :hygiene, :happiness

    def in_range?(num)
        if num > 10
            return 10
        elsif num < 0
            return 0
        else
            num
        end
    end

    def good?(num)
        (8..10).include?(num)
    end

    def hygiene=(hygiene)
        @hygiene=in_range?(hygiene)
    end

    def happiness=(happiness)
        @happiness=in_range?(happiness)
    end

    def happy?
        good?(happiness)
    end

    def clean?
        good?(hygiene)
    end

    def get_paid(monies)
        @bank_account += monies
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(@happiness + 2)
        self.hygiene=(@hygiene - 3)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(self.happiness + 3)
        friend.happiness=(friend.happiness + 3)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(convo_starter, topic)
        if topic == "politics"
            self.happiness=(self.happiness - 2)
            convo_starter.happiness=(convo_starter.happiness - 2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(self.happiness + 1)
            convo_starter.happiness=(convo_starter.happiness + 1)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end