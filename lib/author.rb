class Author 
attr_accessor :name, :posts 
@@all = []
 
  def initialize(name)
      @name = name 
      @posts = []
      @@all << self
  end
  
  def posts  
    Post.all.select do |psts| 
      psts.author == self 
    end
     
  end
  def add_posts(post)
      self.post << post
  end
  
end
