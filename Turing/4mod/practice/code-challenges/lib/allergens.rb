class Allergies

  ALLERGIES_LIST = {
    "eggs" => 1,
    "peanuts" => 2,
    "shellfish" => 4,
    "strawberries" => 8,
    "tomatoes" => 16,
    "chocolate" => 32,
    "pollen" => 64,
    "cats" => 128
  }

  def initialize(score)
    @score = score
  end

  def is_allergic?(allergen)
    @score > 0 && ALLERGIES_LIST[allergen] <= @score
  end

  def score_checker
    if @score > 255 
      @score = @score - 256
    end
  end

  def list
    score_checker
    allergy_list = ALLERGIES_LIST.keys.reverse.select do |allergen|
      (@score -= ALLERGIES_LIST[allergen]) if is_allergic?(allergen)
    end
    allergy_list.reverse
  end
end