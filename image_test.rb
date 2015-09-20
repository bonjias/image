require 'minitest/autorun'
require_relative 'image'

class TestImage < Minitest::Test
  def test_image_col 

  	image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

  	c = image.collums

assert_equal c, 4 

    
  end


   def test_image_rows 
  	image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
  	r = image.rows 
assert_equal r, 4 
 
  end


  
end