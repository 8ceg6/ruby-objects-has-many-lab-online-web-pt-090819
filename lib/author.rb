class Author 
attr_accessor :name, :posts 
@@all = []
 
  def initialize(name)
      @name = name 
      @posts = []
      @@all << self
  end
  
  def posts  
    Post.all.select do |posts| 
      posts.author == self 
    end
     
  end
  
  
end
