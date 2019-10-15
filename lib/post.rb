class Post 
attr_accessor :title, :author 

@@all= []

def initialize(title)
  @title = title
  @author = author 
  @@all << self 
end 

def self.all
  @@all 
end

def add_post(posts)
  
end
end