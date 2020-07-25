class Author
  attr_accessor :name
  @@post_count = 0
  def initialize(name)
    @name = name
  end
  
  def add_post(post)
    post.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(post)
    post = new.Post(post, self)
    add_post(post)
    @@post_count += 1
  end
  
  def post_count()
    @@post_count
  end
end