class Post
  
  attr_accessor :title
  @@all = []
  def initialize(title, arthor = nil)
    @title = title
  end
  
end