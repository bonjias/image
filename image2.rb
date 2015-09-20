class Image 


	
	def initialize(input)
	@input = input 
	@c = input.first.size
	@r = input.size 
	@input_copy = Array.new(@r){|i| Array.new(@c) { |i| 0 }} 
	end 

	
	def output_image
		@input.each do |input|
		puts input.join('')
		end 
	end 

	
	
	def output_image_blur
		@input.each do |input|
		puts input.join('')
		end 
	end 
	

	def blur(a)
		a.times do

			@input.each_with_index do |row, row_i|
				row.each_with_index do |cell, collum_i|
					if cell == 1 
						#finder
						puts "row index #{row_i } has in index #{collum_i} a number 1, row size #{@r}, collum size #{@c}"
					@input_copy[row_i][collum_i]=1
					begin 
						@input_copy[row_i+1][collum_i]=1
					rescue NoMethodError 
					end 
					# covers 
					if row_i != 0 
					@input_copy[row_i-1][collum_i]=1
					end 
					#covers
					if collum_i != @c-1 
					@input_copy[row_i][collum_i+1]=1
					end 
					#covers 
					if collum_i != 0 
					@input_copy[row_i][collum_i-1]=1
					end
					end 
				end 
			
		
		@input = @input_copy
		
		end  
	end 
end 

	



end 


 



image = Image.new([
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,1,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0]
])


image.blur(2)

image.output_image