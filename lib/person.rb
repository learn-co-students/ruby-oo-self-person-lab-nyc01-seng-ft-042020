# your code goes here
class Person

    def initialize(name)
        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end

    def name
        @name
     end

     def bank_account
        @bank_account
     end
     
     def bank_account=(number)
        @bank_account
     end

    def happiness
        @happiness
    end

    def hygiene
        @hygiene
    end

    def happiness=(num)
        if num > 10
            @happiness = 10
        elsif num < 0
            @happiness = 0
        else
            @happiness=num
      end
    end

    def hygiene=(numba)
        if numba > 10
            @hygiene = 10
        elsif numba < 0
            @hygiene = 0
        else
            @hygiene=numba
      end
    end
    
    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end 

    def get_paid(salary)

        @bank_account = @bank_account + salary
        'all about the benjamins'
    end

    def take_bath

       self.hygiene= self.hygiene + 4
       "♪ Rub-a-dub just relaxing in the tub ♫"

    end

    def work_out

        self.hygiene = @hygiene - 3
        "Hi Felix! It's Stella. How are you?"
        self.happiness = @happiness + 2
        "♪ another one bites the dust ♫"

    end

    def call_friend(friend)
        
        self.happiness = self.happiness + 3
        friend.happiness= friend.happiness + 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(person,topic)
        if topic == "politics"
            self.happiness= self.happiness - 2
            person.happiness = person.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness= self.happiness + 1
            person.happiness = person.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
      end
    end







end