# Alex Yeoh
# Project 5 - Writing Iterators in Ruby
# Learning the basic functionality of ruby

class BST
  #class fields
  @compare
  @value
  @leftChild
  @rightChild
  @size

  # BST constructor: creates a new BST object
  #   Parameters: &compare -- A block that determines where things are added
  #   Returns: a new constructor with a default compare if none was given
  def initialize(&compare)
    if (compare.is_a?(NilClass)) #no given compare
      @compare = lambda { |x, y| x <=> y } #default compare
    else
      @compare = compare #passed in compare
    end
    @size = 0
  end

  # add: adds an object to this bst
  #   parameters: item -- the object to add
  #   returns: none
  def add(item)
    @size = @size + 1 #increment size variable to keep track of how many items are in the BST
    if (@value.is_a?(NilClass)) #found spot to add item
      @value = item
      @leftChild = BST.new(&@compare)
      @rightChild = BST.new(&@compare)
    elsif (@compare.call(item, @value) >= 0) #move right and check for open spot
      @rightChild.add(item)
    else #move left and check for open spot
      @leftChild.add(item)
    end
  end

  # include?: a boolean depending on if a object is in the bst
  #   parameters: item -- the object to search for
  #   returns: boolean depending on if the object is in the bst
  def include?(item)
    if (@value.is_a?(NilClass)) #base case, reached last item checked
      return false
    elsif (@value == item) #found an item
      return true
    elsif (@compare.call(value, @value) >= 0) #haven't found item, traverse the same way as add
      return @rightChild.include?(item)
    else #haven't found item, traverse the same way as add
      return @leftChild.include?(item)
    end
  end

  # empty?: a boolean depending on if the bst is empty or not
  #   parameters: none
  #   returns: true if the bst has no objects, false otherwise
  def empty?
    @size == 0
  end

  # size: returns the number of objects in the bst
  #   parameters: none
  #   returns: an integer that says how many objects are in the bst
  def size
    @size
  end

  # dup: make a deep copy of the bst
  #   parameters: none
  #   returns: a deep copy of the bst
  def dup
    return self.dup2(BST.new(&@compare)) #makes new BST to deep copy into
  end

  # dup2: actually makes a deep copy of a bst, puts it into the passed in bst
  #   parameters: bst -- a bst to deep copy into
  #   returns: the bst with all the values deep copied into it
  def dup2(bst)
    if (@value.is_a?(NilClass)) #passed last value in a branch, return up a level
      return
    else
      bst.add(@value) #add current value
      @leftChild.dup2(bst) #traverse left to add to bst
      @rightChild.dup2(bst) #traverse right to add to bst
      return bst
    end
  end

  # each_inorder: does the block on each value in the bst order
  #   parameter: &block -- the block to run each value through
  #   returns: none
  def each_inorder(&block)
    if (@value.is_a?(NilClass)) #not a value to call the block on
      return
    end
    @leftChild.each_inorder(&block) #traverse left to find min
    yield(@value) #call block on value
    @rightChild.each_inorder(&block) #traverse right to find any other values
  end

  # collect_inorder: makes a new bst that holds what the block does to each value in order
  #   parameter: &block -- the block to run each value through
  #   returns: bst with values after they go through &block
  def collect_inorder(&block)
    return self.collect_inorder2(BST.new(&@compare), &block) #make BST to collect all the values that have the block called on it
  end

  # collect_inorder2: actually runs the value through &block and adds it to the new bst
  #   parameters: bst -- the bst to hold the new values, &block -- the block to run each value through
  #   returns: bst with values after they go through &block
  def collect_inorder2(bst, &block)
    if (@value.is_a?(NilClass)) #end of branch
      return
    end
    @leftChild.collect_inorder2(bst, &block) #traverse left
    bst.add(yield(@value)) #add to new bst the value after block
    @rightChild.collect_inorder2(bst, &block) #traverse right
    return bst
  end

  # to_a: converts the bst into an array
  #   parameters: none
  #   returns: an array with all the objects in the bst in order
  def to_a
    return self.fillArray(Array.new) #make new array to fill
  end

  # fillArray: adds each object in the bst into the array
  #   parameters: array -- the array to add values into
  #   returns: the filled array
  def fillArray(array)
    if (@value.is_a?(NilClass)) #end of branch
      return
    end
    @leftChild.fillArray(array) #traverse left
    array << @value #put into the array the current value
    @rightChild.fillArray(array) #traverse right
    return array
  end
end
