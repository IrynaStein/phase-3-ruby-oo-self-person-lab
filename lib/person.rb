# your code goes here
require 'pry'

class Person
  attr_reader :name, :happiness, :hygiene 
  attr_accessor :bank_account 

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(value)
    if value > 10
      @happiness = 10
    elsif value < 0
      @happiness = 0
    else 
      @happiness = value
    end
  end

  def hygiene=(value)
    if value > 10
      @hygiene = 10
    elsif value < 0
      @hygiene = 0
    else 
      @hygiene = value
    end
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(value)
    self.bank_account=(value + self.bank_account)
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = (self.hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = (self.hygiene - 3)
    self.happiness = self.happiness + 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness = friend.happiness + 3
    self.happiness = self.happiness + 3
    if self == friend
    "Hi #{self.name}! It's #{friend.name}. How are you?"
    else 
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
  end

  def start_conversation(person, convo)
    if convo == 'politics'
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif convo == 'weather'
      self.happiness +=1
      person.happiness +=1
      "blah blah sun blah rain"
    else 
      "blah blah blah blah blah"
    end
  end
end
