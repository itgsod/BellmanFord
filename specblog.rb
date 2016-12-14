require 'minitest/autorun'
require './blog'

class TestBlog < Minitest::Test

  def setup
    @blog = Blog.new(2,4)
  end

  def test_title_is_treehouse
    assert_equal "Treehouse Blog", @blog.title
  end
  def test_sum
    assert_equal 6, @blog.sum
  end
  
  
end
