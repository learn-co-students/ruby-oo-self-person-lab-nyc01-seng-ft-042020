# your code goes here
require "pry"
class Person
    attr_reader :name, :happiness
    attr_accessor :bank_account
    def initialize(name=nil)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        if num >10
            @happiness = 10
        elsif 
            num < 0
            @happiness = 0
        else
            @happiness = num
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(num)
        if num > 10
            @hygiene = 10
        elsif
            num < 0
            @hygiene = 0 
        else
            @hygiene = num
        end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(num)
        @bank_account += num
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene+4)
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene=(@hygiene-3)
        self.happiness=(@happiness+2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(@happiness+3)
        # binding.pry
        friend.happiness = friend.happiness+3
        # binding.pry
        # friend.happiness
        # binding.pry
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

#start_conversation accepts two arguments, a person to strike a convo with and a topic 
    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end


end