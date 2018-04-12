class Definitions
  attr_reader :define, :title
  def initialize (define, title)
    @define = define
    @title =title
  end
end

def valid_input(array,input)
  i = 0
  length = array.length
  while i < length
    if array[i].title == input[0]
      puts array[i].define
      return i
      break
    else
      i+=1
    end
  end
end
