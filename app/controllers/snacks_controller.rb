class SnacksController < ApplicationController

  def index
      @snacks = Snack.all

  end

  def show
pry
  end
end
