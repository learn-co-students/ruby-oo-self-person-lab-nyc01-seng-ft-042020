# class Person
#     attr_reader :name, :happiness, :hygiene
#     attr_accessor :bank_account, :drake
#     def initialize(name = nil)
#         @name = name
#         @bank_account = 25
#         @happiness = 8
#         @hygiene = 8
#     end

#     def happiness=(num)
#         if num > 10
#             @happiness = 10 
#         elsif num < 0
#             @happiness = 0
#         else
#             @happiness = num 
#         end
#     end



#     def hygiene 
#         @hygiene
#     end

#     def hygiene=(num)
#          if num > 10
#             @hygiene = 10 
#         elsif num < 0
#             @hygiene = 0
#         else
#             @hygiene = num 
#         end
#     end

#     def clean?
#         @hygiene > 7
#     end

#     # @hygiene = 9


#     def work_out
#         self.hygiene=(@hygiene-3)
#         self.happiness=(@happiness+2)

#         take_bath
#         '♪ another one bites the dust ♫'
#     end

#     private

#     def take_bath
#         # add 4 to hygiene
#         # self.hygiene= @hygiene + 4

#         # 9 = 9+4 => @hygiene = 13
#         # newHygiene = @hygiene + 4
#     #    @hygiene = 13
        
#        self.hygiene=(@hygiene + 4)

#         # implicit self
#     #    hygiene=(newHygiene)
#     '♪ Rub-a-dub just relaxing in the tub ♫'
#     end


# end

class Person
    attr_accessor :bank_account 
    attr_reader :name, :happiness, :hygiene    

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
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫" 
    end

    def work_out 
        self.hygiene = @hygiene - 3 
        self.happiness = @happiness + 2 
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness += 3 
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(convo_partner, topic)
        if topic == "politics"
            convo_partner.happiness -= 2
            self.happiness -= 2 
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            convo_partner.happiness += 1
            self.happiness += 1
            'blah blah sun blah rain'
        else 
            'blah blah blah blah blah'
        end 
    end 
end