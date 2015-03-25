
class RecipeConverter

  def initialize(ingredients)
    @ingredients = ingredients
  end

  def to_tablespoons
    @ingredients.each do |ingredient|
      ingredient.each_key {|key| ingredient[key]=ingredient[key]/15.0}
    end
    return @ingredients
  end

  def to_cups
    @ingredients.each do |ingredient|
      ingredient.each_key {|key| ingredient[key]=ingredient[key]/(15.0*16.0)}
    end
    return @ingredients
  end

end
