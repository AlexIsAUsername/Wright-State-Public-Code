# Alex Yeoh
# Project 4 - Getting to Know Ruby
# Learning the basic functionality of ruby

class Object
  # pair?: adds pair? functionality to all objects
  #   Parameters: none
  #   Returns: True if the object is a Pair and false otherwise
  def pair?
    (is_a? Pair) # returns the boolean check if the object is a Pair
  end
end

class NilClass
  # list?: adds list? functionality to nil objects
  #   Parameters: none
  #   Returns: True
  def list?
    true # () is a list
  end
end

class Pair #Pair class
  # variables local to each pair object
  @pair1
  @pair2

  # null: emulates null from racket with nil
  #   Parameters: none
  #   Returns: nil
  def self.null
    nil
  end

  # Pair constructor: makes a new Pair object
  #   Parameters: value1 -- the first value in the Pair, value2 -- the second value in the pair
  #   Returns: a new Pair with the two values
  def initialize(value1, value2)
    @pair1 = value1
    @pair2 = value2
  end

  # car: returns the first object in this Pair
  #   Parameters: none
  #   Returns: the first object in the Pair
  def car
    @pair1
  end

  # cdr: returns the second object in this Pair
  #   Parameters: none
  #   Returns: the second object in the Pair
  def cdr
    @pair2
  end

  # to_s: returns a string representation of this Pair
  #   Parameters: none
  #   Returns: a string representation of this Pair
  def to_s
    return "(#{helper_to_s}" # finished to_s by putting first ( in front of everything else
  end

  # helper_to_s: recursively builds the majority of the string representation of this Pair
  #   Parameters: none
  #   Returns: The string representation of this Pair with the first open parenthesis missing
  def helper_to_s # build the rest of the to_s
    pair1_s = ""
    pair2_s = ""
    if (@pair1.is_a?(Pair)) # if pair1 is a pair, recursively call on pair1
      pair1_s = @pair1.helper_to_s
    else
      pair1_s = @pair1 # else it's going to be whatever atomic datatype it is
    end
    if (@pair2.is_a?(Pair)) # if pair2 is a pair, recursively call on pair2
      pair2_s = @pair2.helper_to_s
    else
      pair2_s = @pair2 # else it's going to be whatever atomic datatype it is
    end

    # Putting in the parenthesis
    if (@pair1.is_a?(Pair)) # if pair1 is a pair, it needs an (
      pair1_s = "(#{pair1_s}"
    elsif (@pair1 == nil) # display non-pair2 nils as an empty set
      pair1_s = "()"
    end
    if (@pair2.is_a?(Pair)) # if pair2 is a pair, add a space to the front
      pair2_s = " #{@pair2.helper_to_s}"
    elsif (@pair2 == nil) # if pair2 is a nil, that means its the end of a list and needs )
      pair2_s = ")"
    else # else it is an atomic datatype and the end becomes a dotted pair
      pair2_s = " . #{@pair2})"
    end
    return "#{pair1_s}#{pair2_s}" # put both ends together
  end

  # list?: adds list? functionality to Pair objects
  #   Parameters: none
  #   Returns: True if this Pair is a list and false otherwise
  def list?
    if (@pair2.is_a?(Pair)) # if we're not at the right most pair, keep going in
      @pair2.list?
    else
      if (@pair2 == nil) # if the pair2 of the right most pair is a nil, it's a list
        true
      else # if the pair2 of the right most pair is not nil, it's not a list
        false
      end
    end
  end

  # count: if the pair is a list, return the number of items in the top level of the list. If not, return false.
  #   Parameters: none
  #   Returns: number of items in the list (integer) or false
  def count
    if (list? && @pair2 == nil) # if it's a list and at nil (end of the list), final 1 to add
      1
    elsif (list? && @pair2.is_a?(Pair)) # if we're in a list and pair2 is not nil, keep counting
      1 + @pair2.count
    else # catches all non-list cases and returns false
      false
    end
  end

  # append: if this is not a list, return false. Otherwise, append other to the end of the list without modifying either.
  #   Parameters: other -- the object to be appended to this list
  #   Returns: false if this is not a list, a new Pair that has other appended to the end of this list
  def append(other)
    if (!list?) # if the original list is not a list, append fails and false is returned
      return false
    end
    copyOrig = copy(self) # deep copy original list
    final = copyOrig # pointer for the deep copy of original
    while (final.cdr != nil) # loop to find the last pair in the deep copy of the original
      final = final.cdr
    end
    if (other.is_a?(Pair)) # if the other is not an atomic datatype, make a deep copy of it
      copyOther = copy(other)
      final.setPair2(copyOther) # replace the ending nil of the deepcopy orignial list with the deepcopy other list
    else
      final.setPair2(other) # if the other is an atomic datatype, replace the ending nil with the other
    end

    return copyOrig # return the appended list that doesn't change either the original list or other
  end

  # setPair2: sets the second value in this Pair to be the passed in Object
  #   Parameters: other -- the object to be set to Pair2
  #   Returns: this Pair with the changed pair2
  def setPair2(other) # allows pair2 to get set to some other value
    @pair2 = other
  end

  # copy: makes a deep copy of the Pair passed in
  #   Parameters: list -- the Pair to be copied
  #   Returns: a deep copy of list
  def copy(list) # to deep copy for append, recursively makes a new pair where there are pairs in the list
    if (list.car.is_a?(Pair) && list.cdr.is_a?(Pair))
      Pair.new(copy(list.car), copy(list.cdr))
    elsif (!list.car.is_a?(Pair) && list.cdr.is_a?(Pair))
      Pair.new(list.car, copy(list.cdr))
    elsif (list.car.is_a?(Pair) && !list.cdr.is_a?(Pair))
      Pair.new(copy(list.car), list.cdr)
    else
      Pair.new(list.car, list.cdr)
    end
  end

  # null: returns false because a Pair is never an empty list
  #   Parameters: none
  #   Returns: false
  def null?
    false # a pair object is never empty
  end
end

# cons: makes a new Pair object
#   Parameters: value1 -- the first value in the Pair, value2 -- the second value in the pair
#   Returns: The new Pair
def cons(value1, value2)
  Pair.new(value1, value2) # makes a pair out of the two values passed in
end

# puts "Non-append tests"
# test = 1
# puts "This should be: 1"
# puts "pair?: #{test.pair?}"
# test = "a"
# puts "This should be: a"
# puts "pair?: #{test.pair?}"
# test = Pair.null
# puts "This should be: nil"
# puts "pair?: #{test.pair?}"
# puts "list?: #{test.list?}"
# test = Pair.new(1, 2)
# puts "This pair should be: (1 . 2)"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# test = cons(1, 2)
# puts "This pair should be: (1 . 2)"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# puts
# test = Pair.new(1, Pair.null)
# puts "This pair should be: (1)"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# test = cons(1, Pair.null)
# puts "This pair should be: (1)"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# puts
# test = Pair.new(Pair.null, Pair.null)
# puts "This pair should be: (())"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# test = cons(Pair.null, Pair.null)
# puts "This pair should be: (())"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# puts
# test = Pair.new(1, Pair.new(2, nil))
# puts "This pair should be: (1 2)"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# test = cons(1, cons(2, nil))
# puts "This pair should be: (1 2)"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# test = Pair.new(1, cons(2, nil))
# puts "This pair should be: (1 2)"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# test = cons(1, Pair.new(2, nil))
# puts "This pair should be: (1 2)"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# puts
# test = Pair.new(1, Pair.new(2, Pair.new(3, nil)))
# puts "This pair should be: (1 2 3)"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# test = cons(1, cons(2, cons(3, nil)))
# puts "This pair should be: (1 2 3)"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# test = Pair.new(1, cons(2, Pair.new(3, nil)))
# puts "This pair should be: (1 2 3)"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# test = cons(1, Pair.new(2, cons(3, nil)))
# puts "This pair should be: (1 2 3)"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# puts
# test = Pair.new(Pair.new(1, nil), Pair.new(2, Pair.new(3, nil)))
# puts "This pair should be: ((1) 2 3)"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# test = cons(cons(1, nil), cons(2, cons(3, nil)))
# puts "This pair should be: ((1) 2 3)"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# test = Pair.new(cons(1, nil), Pair.new(2, Pair.new(3, nil)))
# puts "This pair should be: ((1) 2 3)"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# test = cons(Pair.new(1, nil), cons(2, cons(3, nil)))
# puts "This pair should be: ((1) 2 3)"
# puts "to_s: #{test.to_s}"
# puts "car: #{test.car}"
# puts "cdr: #{test.cdr}"
# puts "null?: #{test.null?}"
# puts "list?: #{test.list?}"
# puts "count: #{test.count}"
# puts
# puts "Append tests"
# a = Pair.new(1, nil)
# b = 1
# puts "a = #{a}"
# puts "b = #{b}"
# puts "ab = #{a.append(b)}"
# puts "a = #{a}"
# puts "b = #{b}"
# a = cons(1, nil)
# b = 1
# puts "a = #{a}"
# puts "b = #{b}"
# puts "ab = #{a.append(b)}"
# puts "a = #{a}"
# puts "b = #{b}"
# puts
# a = cons(nil, 1)
# b = cons(1,nil)
# puts "a = #{a}"
# puts "b = #{b}"
# puts "ab = #{a.append(b)}"
# puts "ba = #{b.append(a)}"
# puts "a = #{a}"
# puts "b = #{b}"
# puts
# a = cons(cons(1,nil),nil)
# b = cons(1,cons(1,nil))
# puts "a = #{a}"
# puts "b = #{b}"
# puts "ab = #{a.append(b)}"
# puts "ba = #{b.append(a)}"
# puts "a = #{a}"
# puts "b = #{b}"
# puts
# a = cons(cons(nil,1),nil)
# b = cons(1,cons(nil,1))
# puts "a = #{a}"
# puts "b = #{b}"
# puts "ab = #{a.append(b)}"
# puts "ba = #{b.append(a)}"
# puts "a = #{a}"
# puts "b = #{b}"
# puts
# a = cons(1, cons(2, cons(3, nil)))
# b = cons(4, cons(5, nil))
# puts "a = #{a}"
# puts "b = #{b}"
# puts "ab = #{a.append(b)}"
# puts "ba = #{b.append(a)}"
# puts "a = #{a}"
# puts "b = #{b}"
# puts
