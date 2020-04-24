# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name = nil)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness=(happiness_num) 
        if happiness_num > 10
            @happiness = 10
        elsif happiness_num < 0
            @happiness = 0
        else
            @happiness = happiness_num
        end
    end 
    def hygiene=(hygiene_num)
        if hygiene_num > 10
             @hygiene = 10
        elsif hygiene_num < 0
             @hygiene = 0
        else
             @hygiene = hygiene_num
        end
    end
    def clean? 
         @hygiene > 7 
    end 
    def happy? 
        @happiness > 7
    end 
    def get_paid(salary)
        @bank_account = @bank_account + salary 
        "all about the benjamins"
    end
    def take_bath 
        cleaner = hygiene + 4
        self.hygiene=(cleaner)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        dirtier = @hygiene - 3
        self.hygiene=(dirtier)
        happier = @happiness + 2
        self.happiness=(happier)
        "♪ another one bites the dust ♫"
    end
    def call_friend(person)
        happier = @happiness + 3
        self.happiness = happier
        person.happiness = person.happiness + 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
        if topic == "politics"
            less_happy_by_2 = @happiness - 2
            self.happiness = less_happy_by_2
            person.happiness = less_happy_by_2
            #both people (self and person) get 2 points less happy
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            more_happy_by_1 = @happiness + 1
            self.happiness = more_happy_by_1
            person.happiness = more_happy_by_1
            #both people (self and person) get 1 point more happy
            "blah blah sun blah rain"
        else
            #happiness points stay the same
            "blah blah blah blah blah"
        end
    end
end 
