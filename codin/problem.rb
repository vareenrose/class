# A program in which Blind search technique is implemented for a blocks world using Ruby
#  written in November, 2007 for the Introduction to AI class of 2007  by the class Lecturer
# a stocahstic approach in which one the next node is generated by some equal probability

# Initial node
initialNode  = [' ',' ','A',
		        ' ',' ','C',
				' ',' ','B']
# defing a basic class called Problem
class Problem
	def initialization()
		@node  = [' ',' ','A',
		          ' ',' ','C',
				  ' ',' ','B']
		@nodes = []; @currentNode = []; @newNode = []; @goalNode = []
	end
   @temperature  =0      
   
   # defing a method to find  next node given a node
   def nextNode(node) 
      @currentNode = node; @newNode = []
	  successfulMove =0; count = 0
	  
	        # if the first column of node  is filled 
	        if (@currentNode[0] != ' ') && (@currentNode[3] != ' ') && (@currentNode[6] != ' ') && (successfulMove < 1) 
			   @currentNode[7] = @currentNode[0]; @currentNode[0] = ' '
			   successfulMove = 2
			   
			end
			
			if @currentNode[3] != ' ' && @currentNode[6] != ' ' && @currentNode[7] != ' ' && successfulMove < 1
			   r = rand(9)
			   if r > 6
					@currentNode[8] = @currentNode[3]; @currentNode[3] = ' '
					
			   end
			   if r > 3 && r <=6
					@currentNode[0] = @currentNode[7]; @currentNode[7] = ' '
			   end
			   if r <=3
					@currentNode[4] = @currentNode[3]; @currentNode[3] = ' '
			   end
			   successfulMove = 2
			   
			end
			# ==========================================
						
			# if the second  column of node is filled 
	        if @currentNode[1] != ' ' && @currentNode[4] != ' ' && @currentNode[7] != ' ' && successfulMove < 1 
				r = rand(11)
				if r > 5
					@currentNode[6] = @currentNode[1]; @currentNode[1] = ' '
				end
				if r <= 5
					@currentNode[8] = @currentNode[1]; @currentNode[1] = ' '
				end
			   successfulMove = 2
			  
			end
			
			if @currentNode[4] != ' ' && @currentNode[6] != ' ' && @currentNode[7] != ' ' && successfulMove < 1 
				r = rand(10)
				if r > 6 
					@currentNode[8] = @currentNode[4]; @currentNode[4] = ' '
				end 
				if r > 3 && r <= 6
					@currentNode[1] = @currentNode[6]; @currentNode[6] = ' '
				end
				if r <=3
					@currentNode[3] = @currentNode[4]; @currentNode[4] = ' '
				end
			   successfulMove = 2
			end
			if @currentNode[4] != ' ' && @currentNode[7] != ' ' && @currentNode[8] != ' ' && successfulMove < 1 
				r = rand(10)
				if r > 6 
					@currentNode[6] = @currentNode[4]; @currentNode[4] = ' '
				end
				if r > 3 && r <= 6	
					@currentNode[5] = @currentNode[4]; @currentNode[4] = ' '
				end
				if r <= 3
					@currentNode[1] = @currentNode[8]; @currentNode[8] = ' '
				end
			   successfulMove =2
			end
			# ==========================================
			
			# if the node consists of all on the blocks on the table
			if @currentNode[6] != ' ' && @currentNode[7] != ' '  && @currentNode[8] != ' ' && successfulMove < 1
			   r = rand(19)
				if r > 15 
				   @currentNode[3] = @currentNode[7];
				   @currentNode[7] = @currentNode[8]; @currentNode[8] = ' '
				end
				if r > 12 && r <=15 
				   @currentNode[5] = @currentNode[7];
				   @currentNode[7] = @currentNode[6]; @currentNode[6] = ' '
				end
				if r > 9 && r <= 12
					@currentNode[4] = @currentNode[6]; @currentNode[6] = ' '
				end
			    if r > 6 && r <= 9
					@currentNode[5] = @currentNode[6]; @currentNode[6] = ' '
				end
				if r > 3 && r <= 6
					@currentNode[4] = @currentNode[8]; @currentNode[8] = ' '
				end
				if r <= 3
					@currentNode[3] = @currentNode[8]; @currentNode[8] = ' '
				end
			   
			   successfulMove =2
			  
			end
			# ==========================================
						
			# if the last column of the node is filled 
			if @currentNode[2] != ' ' && @currentNode[5] != ' '  && @currentNode[8] != ' ' && successfulMove < 1
			   @currentNode[7] = @currentNode[2]; @currentNode[2] = ' '
			   successfulMove =2
			end
			if @currentNode[5] != ' ' && @currentNode[7] != ' '  && @currentNode[8] != ' ' && successfulMove < 1
				r = rand(10)
				if r > 6
					@currentNode[6] = @currentNode[5]; @currentNode[5] = ' '
				end
				if r > 3  && r <= 6
					@currentNode[2] = @currentNode[7]; @currentNode[7] = ' '
				end
				if r <= 3 
					@currentNode[4] = @currentNode[5]; @currentNode[5] = ' '
				end
				
			   successfulMove =2
			end
			count = count +1
	  
	  @newNode = @currentNode
	  return @newNode
  end
   
   #  defing a method to display the content of a node
  def displayNode (node)
	  puts "\n"
      
		print "\t#{node[0]}"; print "\t\t#{node[1]}"; print "\t\t\t#{node[2]}\n"
		print "\t#{node[3]}"; print "\t\t#{node[4]}"; print "\t\t\t#{node[5]}\n"
		print "\t#{node[6]}"; print "\t\t#{node[7]}"; print "\t\t\t#{node[8]}\n"
	  puts "\n"
  end
  # define a method to fix the goal node
  def enterGoalState(node)
		@goalNode = node
  end
  
  # define a method to fix the current state node
  def enterCurrentState(node)
	@currentNode = node
  end
  
end


# define a function to find the path between given goal node and given current node;    we use a stochastic node generation approach
def findpath(goalNode,currentNode)
		path = []; sn = Problem.new()
		foundPath = 0
		trials = 0
		tempNode = [];
		tempNode = currentNode
		path << tempNode
		# keep on trying until a path is found or the trials are exceeded
		while foundPath < 1 && trials < 2000
				node = sn.nextNode(tempNode)
				path << node
				puts "Next node: "
				sn.displayNode(node)
				if node == goalNode
					foundPath = 3
				end
				trials = trials + 1
				
		end
		# report on the outcome of the search
		if foundPath > 1
					puts "\nSolution(Path) found of lengh #{path.length}\n\n"
		end
		if foundPath < 1 && trials >= 2000
			puts " Sorry, I could not find a solution (path) to the problem."
		end
		
end


# main program 
# set up main variables and an instance of the class to be able to use the class methods
nodes = []; node = []; search = Problem.new()
node = initialNode; wNode = initialNode
i=0

# store some nodes for use
n1 = [' ',' ','A',
		    ' ',' ','C',
		    ' ',' ','B']

n2 = [	' ',' ',' ',
				' ',' ',' ',
				'A','C','B']
				
# state the goal node and the current node for search				
goalNode = [' ',' ','A',
		    ' ',' ','C',
		    ' ',' ','B']

currentNode = [	'A',' ',' ',
				'B',' ',' ',
				'C',' ',' ']
system 'cls' # clear the screen

# display initial nodes
puts "\nSEARCHING-: "
puts "The goal node is: "; search.displayNode(goalNode)
puts "-----------------------------------------------------------------"
puts "The initial node is: "; search.displayNode(currentNode)

puts "================================================================="
findpath(goalNode,currentNode)

print "\nPress Enter to proceed:    "
w = gets  # to pause the run