# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
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
        if num > 10
            @hygiene = 10
        elsif num < 0
            @hygiene = 0
        else
            @hygiene = num
        end
    end
        
        def hygiene
            @hygiene
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
            @bank_account += salary
            p "all about the benjamins"
        end

        def take_bath
            self.hygiene += 4
            p "♪ Rub-a-dub just relaxing in the tub ♫"
        end

        

end