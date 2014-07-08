class Post
  attr_accessor :blog, :title, :body

  def publish
    blog.add_entry(self)
  end

  def initialize(attrs={})
    attrs.each do |h,v| send("#{k}=",v) end
  end
end
