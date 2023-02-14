# your code goes here
class person
    atrr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initializer(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness = (value)
        if value > 10
            @happiness = 10
        elseif value < 0
        @happiness = 0
        else
            @happiness = value
        end

    end
    def hygiene = (value)
        if value > 10
            @hygiene = 10
            elseif value < 0
            @hygiene = 0
        else
            @hygiene = value
        end

    end
    def clean?
        happiness > 7
    end

    def happy?
        happiness > 7
    end
    
    def get_paid(amount)
        self.bank_account +=amount
        "all about the benjamins"
    end
    def take_bath
        self.happiness = + 4
        "♪ Rub-a-dub just relaxing in the tub ♫".
    end
    def work_out
        self.happiness = happiness + 2
        self.hygiene = hygiene - 3
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        friend.happiness = friend.happiness +3
        self.happiness = happiness + 3
        "Hi #{friend.name}! It's S#{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        return case topic
            when "politics"
                self.happiness = @happiness - 2
                friend.happiness = friend.happiness -2
                "blah blah partisan blah lobbyist"
            when "weather"
                self.happiness = @happiness + 1
                friend.happiness = friend.happiness + 1
                "blah blah blah blah blah"
            else
                "blah blah blah blah blah"
            end
        end
    
    # star = person.new('Star')
    # zhaviah = person.new('Zhaviah')
    # puts zhaviah.start_conversation(star, "friend")
    end