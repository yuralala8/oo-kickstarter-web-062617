# * When a `Project` instance is initialized, it should be initialized with a `@backers` variable set to an empty array. Instances of the `Project` class should have an `attr_accessor` for backers so that projects can add backers to their list of backers and report on the backers who support them.

class Project

attr_accessor :backers, :name, :title

def initialize(title)
  @title = title
  @backers = []
end

def add_backer(name)
  @backers << name
  name.backed_projects << self
end

end
