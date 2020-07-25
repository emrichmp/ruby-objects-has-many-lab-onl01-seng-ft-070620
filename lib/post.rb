class Post
  attr_accessor :title, :author
  @@all = []
  
  def initialize(title, aurthor = nil)
    @title = title
    @author = author
    @@all << self
  end
  
  def author_name()
    
  end
  
  def self.all
    @@all
  end
end