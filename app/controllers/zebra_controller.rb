class ZebraController < ApplicationController
  def home
    render({ :template => "app_templates/home"})
  end
  def flexible
    @num_dice = params.fetch("num_dice").to_i

    @sides = params.fetch("sides").to_i

    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)

      @rolls.push(die)
    end

    render({ :template => "app_templates/flexible"})
  end
end
