class SayController < ApplicationController
  def hello
    @time = Time.now
    @cowboy = concat_cow_boy
    @local_files = get_local_directory_files
    puts say_goodnight('TESTEEEEE')
  end

  def get_local_directory_files
    return Dir.glob('*')
  end

  def concat_cow_boy
    return "cow" + "boy"
  end

  def goodbye
  end

  def say_goodnight(name)
    result = 'Testinho do goodnight ' + name
    return result
  end

  def say_goodnight_with_different_concat(name)
    result = "Testinho do goodnight  {#{name.capitalize}}"
    return result
  end
end
