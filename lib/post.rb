class Post
  attr_accessor :title, :author
  @@all = []
  
  def initialize(title, aurthor = nil)
    @title = title
    @author = author
    @@all << self
  end
  
  
  
end