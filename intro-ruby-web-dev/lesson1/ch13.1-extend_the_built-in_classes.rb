class Array

  def shuffle
    shuffled = []

    while self.length > 0
      index = rand(self.length)
      shuffled.push(self[index])
      self.delete_at(index)
    end

    return shuffled
  end
end

puts ['a','b','c','d','e','f','g','h','i'].shuffle