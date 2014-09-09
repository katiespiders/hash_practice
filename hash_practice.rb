cats = [
  {
    name: "Squeaky",
    sex: :f,
    awesomeness: 100,
    favorite_foods: ["ice cream", "avocados"],
    dead: true,
    adopted: 2005,
    died: 2011
  },

  {
    name: "Mr. Orange",
    sex: :m,
    awesomeness: 100,
    favorite_foods: ["grass"],
    dead: true,
    adopted: 2007,
    died: 2012
  },

  {
    name: "Tiny",
    sex: :f,
    awesomeness: 100,
    favorite_foods: ["dry pasta", "spinach"],
    adopted: 2012
  }
]

class Cat

  def initialize(a_cat)
    @name = a_cat[:name]
    @sex = a_cat[:sex]
    @awesomeness = a_cat[:awesomeness]
    @ridiculousness = a_cat[:awesomeness]
    @favorite_foods = a_cat[:favorite_foods]
    @dead = a_cat[:dead]
    @favorite_foods = a_cat[:favorite_foods]
    @adopted = a_cat[:adopted]
    @died = a_cat[:died]

    set_pronouns
    set_live_dead

  end

  def set_live_dead
    if not @dead
      @be = "is"
      @like = "likes"
      @status_string = "#{@subject.capitalize} is still alive and #{@awesomeness}% awesome."
    else
      @be = "was"
      @like = "liked"
      @status_string = "#{@subject.capitalize} died in #{@died}. We miss #{@object}."
    end
  end

  def set_pronouns
    if @sex == :m
      @subject = "he"
      @object = "him"
      @possessive = "his"
    else
      @subject = "she"
      @object = "her"
      @possessive = "her"
    end
  end

  def to_s
    intro = "#{@name} #{@be} #{@awesomeness}% awesome and #{@ridiculousness}% ridiculous. "
    foods = "#{@subject.capitalize} #{@like} to eat #{@favorite_foods[0]}. "
    life_span = "We got #{@object} in #{@adopted}. " + @status_string
    return intro + foods + life_span
  end

end

cats.each do |cat|
  a_cat = Cat.new(cat)
  puts a_cat
end
