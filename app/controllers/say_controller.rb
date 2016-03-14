class SayController < ApplicationController
  def hello
    @time = Time.now
    @cowboy = concat_cow_boy
    @local_files = get_local_directory_files
  end

  def get_local_directory_files
    return Dir.glob('*')
  end

  def concat_cow_boy
    return "cow" + "boy"
  end

  def goodbye
  end
end
