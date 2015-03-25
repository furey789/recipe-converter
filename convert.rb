
class RecipeConverter

  def initialize(ingredients)
    @ingredients = ingredients
  end

  def to_tablespoons
    @ingredients.each do |ingredient|
      ingredient.each_key {|key| ingredient[key]=ingredient[key]/15.0}
    end
    puts "Ingredient units now listed in tablespoons"
    return @ingredients
  end

  def to_cups
    @ingredients.each do |ingredient|
      ingredient.each_key {|key| ingredient[key]=ingredient[key]/(15.0*16.0)}
    end
    puts "Ingredient units now listed in cups"
    return @ingredients
  end

end
