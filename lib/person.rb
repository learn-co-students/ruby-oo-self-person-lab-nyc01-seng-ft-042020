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
        @hygiene= num
end
end
def happy?
    @happiness > 7
end
def clean?
    @hygiene>7
end
def take_bath
    new_hy = @hygiene + 4
   if  self.hygiene=(new_hy)
    return '♪ Rub-a-dub just relaxing in the tub ♫'
    #self.hygiene = @hygiene + 4
   end
end
def work_out 
    work = @hygiene - 3
    self.hygiene=(work)

    tmmr = @happiness + 2
    if self.happiness=(tmmr)
        return '♪ another one bites the dust ♫'
    end
end
def get_paid(money)
   mo = @bank_account += money
   return "all about the benjamins"
end
def call_friend(friend)
     friend.happiness += 3
     self.happiness += 3
     return "Hi #{friend.name}! It's #{self.name}. How are you?"
end
def start_conversation (convo, topic)
    if topic == "politics"
        convo.happiness -= 2
        self.happiness -= 2
        return 'blah blah partisan blah lobbyist'
    elsif topic == "weather"
        convo.happiness += 1
        self.happiness += 1
        return "blah blah sun blah rain"
    else topic == "programming"
        return 'blah blah blah blah blah'

end
end

end
