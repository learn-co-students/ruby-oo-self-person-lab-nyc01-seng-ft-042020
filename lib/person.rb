class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize (name=nil)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end

    def happiness=(num)
        if num > 10
            @happiness = 10
        elsif num < 0
            @happiness = 0
        else
            @happiness = num
        end
    end

    def hygiene=(num)
        if num > 0
            if num < 10
                @hygiene = num
            else num > 10
                @hygiene = 10
            end
        else 
            @hygiene = 0
        end
    end

    def happy?
        @happiness > 7 
    end

    def clean?
        @hygiene > 7 
    end

    def get_paid (salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend (name)
        self.happiness += 3
        name.happiness += 3
        return "Hi #{name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (name, topic)
        if topic == "politics"
            self.happiness -= 2
            name.happiness -= 2
            return "blah blah partisan blah lobbyist"

        elsif topic == "weather"
            self.happiness += 1
            name.happiness += 1
            return "blah blah sun blah rain"

        else 
            return "blah blah blah blah blah"
        end
    end

end
