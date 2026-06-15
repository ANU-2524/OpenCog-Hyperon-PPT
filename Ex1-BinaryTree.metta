;Create your own data structure for a binary tree in MeTTa.

;Tree Structure -> (Node value left right)

(:Leaf Type )
(:Node (-> Atom Atom Atom))

;Tree
!(bind! my-tree
    (Node 10
        (Node 5
            (Node 2 Leaf Leaf)
            (Node 7 Leaf Leaf))
        (Node 15
            (Node 12 Leaf Leaf)
            (Node 20 Leaf Leaf)
            )))

;Tree Operations

;; Get Root ->
(=(root (Node $value $left $right)) ($value))

;; Count Nodes
(=(count-nodes Leaf) 0)

(= (count-nodes (Node $value $left $right)) (+ 1 (+ (count-nodes $left) (count-nodes $right))))



;; Testing

!(root my-tree)
!(count-nodes my-tree)
