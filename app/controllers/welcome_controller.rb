class WelcomeController < ApplicationController
  def main
  end

  def music
  end

  def art
    # turn links into an array :)
    @pixel_art = []
    @digital_art = []
    @physical_art = []
    @ready_run = []

    Dir.foreach('app/assets/images/pixel_art') do |item|
      next if item == '.' or item == '..'
      @pixel_art << "assets/pixel_art/" + item
    end
    Dir.foreach('app/assets/images/digital_art') do |item|
      next if item == '.' or item == '..'
      @digital_art << "assets/digital_art/" + item
    end
    Dir.foreach('app/assets/images/physical_art/') do |item|
      next if item == '.' or item == '..'
      @physical_art << "assets/physical_art/" + item
    end
    Dir.foreach('app/assets/images/ready_run') do |item|
      next if item == '.' or item == '..'
      @ready_run << "assets/ready_run/" + item
    end
  end

  def resume
  end

  def code
  end
end
