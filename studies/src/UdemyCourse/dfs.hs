type Node = Int
type Edge = (Node,Node)
type Graph = ([Node],[Edge])

depthFirst :: Graph -> Node -> [Node]

depthFirst (v,e) n
    | [x|x<-v,x==n] == [] = []
    | otherwise = recdepth (v,e) [n]

recdepth :: Graph -> [Node] -> [Node]
recdepth ([],_) _ = []
recdepth (_,_) [] = []
recdepth (v,e) (top:stack)
        | [x|x<-v,x==top] == [] = recdepth (newv,e) stack
        | otherwise = top : recdepth (newv,e) (adjacent ++ stack)
                where
                        adjacent = [x| (x,y)<-e, y == top] ++
                                   [x| (y,x)<-e, y == top]
                        newv = [x|x<-v, x /= top]

        
        
        
        
        
