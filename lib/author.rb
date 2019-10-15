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
  def add_post(post)
      self.posts << post
      post.author= self
  end
  
  def add_post_by_title(title) 
      post = Post.new(title)
      
  end
  
end
