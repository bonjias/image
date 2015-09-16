class Image 

	
	def initialize(input)
	@input = input 
	#define as instance variable 
	@c = input.first.size
	 # find the amount of collums assuming all are equal to the first one  
	@r = input.size 
	# find amount of rows 
	@input_copy = Array.new(@r){|i| Array.new(@c) { |i| 0 }} 
	end 

	
	def output_image
		@input.each do |input|
		puts input.join('')
		end 
	end 

	
	
def output_image_blur
		@input_copy.each do |input|
		puts input.join('')
		end 
	end 
	

def blur
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
		end 

		
	end 



def m_blur(a)
puts "Blur of #{a}"
		@input.each_with_index do |row, row_i|
			row.each_with_index do |cell, collum_i|
				if cell == 1 
						#finder
					puts "row index #{row_i } has in index #{collum_i} a number 1, row size #{@r}, collum size #{@c}"
					@input_copy[row_i][collum_i]=1
					#goes down 
					a.times do |counter|
						c = counter  + 1
						d = row_i + c
						if d < (@r)
						@input_copy[d][collum_i]=1 
						end
						#still have moves to make 
						if c != a 
							moves = a - c 
								moves.times do |count|
									step = count + 1 
									leftstep = collum_i - step
									rightstep = collum_i + step 
										
										if rightstep < (@c) 
											begin 
											@input_copy[d][rightstep]=1
									 		rescue
											NoMethodError
											end 
										end 

										if leftstep >= 0 
											begin
											@input_copy[d][leftstep]=1
											rescue
											NoMethodError
											end 
									end 
								
								end 


						end 
					end 

					#goes up
					a.times do |counter2|
						c = counter2 + 1
						u = row_i - c 
						if u >= 0 
						@input_copy[u][collum_i]=1
						end

						#stil have moves to make 
							if c != a 
							moves2 = a - c 

								moves2.times do |count|
									step = count + 1 
									leftstep = collum_i - step
									rightstep = collum_i + step 
							
										if rightstep < (@c) 
											begin 
											@input_copy[u][rightstep]=1
									 		rescue
											NoMethodError
											end 
										end 

										if leftstep >= 0 
											begin
											@input_copy[u][leftstep]=1
											rescue
											NoMethodError
											end 
										end 
								end 
						
						end 
						
					end 


					#goes right
					a.times do |counter3|
						c = counter3
						r = collum_i + c + 1 
						if r < (@c-1)
							@input_copy[row_i][r]=1

							
						end 
					end 

					#goes left 
					a.times do |counter4|
						c = counter4
						l = collum_i - c - 1
						if l >= 0 
							@input_copy[row_i][l]=1
						end
					end 

				
				end 
			end 
		end 

	end 


end 



image = Image.new([
  [1, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,1],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,1, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [0, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,0],
  [1, 0, 0, 0,0,0,0,0,0,0, 0, 0,0,0,0,0,0,1]
])

image.output_image
#image.blur
#image.output_image_blur

image.m_blur(5)

image.output_image_blur


