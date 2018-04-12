require "colorize"
class Dictionary
  attr_accessor :definition_hash, :definition_array
  def initialize
    @definition_hash = {}
    @definition_array = []
  end

  def add_new_entry(definition)
    @definition_hash[definition.title.to_sym()] = definition.define
    @definition_array.push(definition)
  end
  def create_new_entry(title, define)
    new_def = title.to_sym()
    return new_def = Definitions.new(define, title)
  end

end

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
      puts array[i].define.cyan
      return i
      break
    else
      i+=1
    end
  end
end

# USE .GREP AND REGEX TO CHECK FOR MISTAKES
