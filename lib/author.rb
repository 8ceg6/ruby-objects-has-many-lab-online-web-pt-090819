class Author 
attr_accessor :name, :posts 

  def initialize(name)
      @name = name 
      @posts = []
  end
  
  def posts  
    Post.select do |posts| 
      posts.author == self 
    end
     
  end
  
  
end
