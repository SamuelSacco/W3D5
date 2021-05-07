
# create a queue
# add root node to queue
# until queue is empty
    # remove the first node from queue
    # check if this node is the target?
        # if node == target, return node
        # if node != target add that nodes children to our queue
# return nil if we never returned out of the loop(target doesnt exist in our tree)   

#             a
#           b   c
#         d  e f  g

# ARGUMENTS
    # root = a
    # target = d
# SETUP 
    # queue = [a]
# LOOP 
    # is the queue empty?
    # if not keep going

    # ITERATION 1
        # is the queue empty? [a]
        # remove first node from queue (a from queue)
        # queue is now empty queue = []
        # current_node = a
            # does current_node == target? => a != d
                # add as children to queue => queue = [b,c]
    # ITERATION 2
        # is the queue empty? [b,c]
        # remove first node from queue (b)
        # queue is not [c]
        # current node = b
            # does b == d? b != d
                # add bs children to queue => [c,d,e]
                #etc