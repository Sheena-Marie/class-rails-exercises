class SayController < ApplicationController
  def hello
    @greeting = "Hello"
  end

  def goodbye
    @greeting = "Goodbye"
  end
end
