=begin 
------------------
Depth first search
------------------
DFS uses recursion therefore utilizes a stack ADT

def dfs(root, target)
    start at root node, check that nodes value
        if node == target, 
            return node
        else
            recursively call dfs on each of that nodes children
            if the result of the recursive call != nil
                return the found node
        return nil if the target was not found 
end
#             a
#           b   c
#         d  e f  g

STACK 1: root = a, target = d
    - check if a == d 
        a != d recursivel call dfs on each of a's children
            sub_result = dfs(b, target) *PAUSED UNTIL STACK 2 IS RESOLVED*
            if sub_result != nil return sub
STACK 2: root = b target = d
    - check if b == d (b was a child of a but bc recursion b is no child)
        - b != d recursively call dfs on each of bs children
            sub_ressult = dfs(b, target) *PAUSED UNTIL STACK 3 IS RESOLVED
STACK 3: root = d, target = d
    - d == d 
        - yes
STACK 2: root = b target = d
    - check if b == d (b was a child of a but bc recursion b is no child)
        - b != d recursively call dfs on each of bs children
            sub_ressult = dfs(b, target) => d
STACK 1: root = a, target = d
    - check if a == d 
        a != d recursivel call dfs on each of a's children
            sub_result = dfs(b, target) *PAUSED UNTIL STACK 2 IS RESOLVED*


=end