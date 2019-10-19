class Solution:
    def maxCount(self, m: int, n: int, ops: List[List[int]]) -> int:
        if len(ops)==0: return m*n
        row=100000
        col=100000
        for lis in ops:
            row=min(row, lis[0])
            col=min(col, lis[1])
            
        return row*col
        
        
        
        
        
class Solution:
    def maxCount(self, m: int, n: int, ops: List[List[int]]) -> int:
        if not ops: return m*n
 
            
        return min([lis[0] for lis in ops])*min([lis[1] for lis in ops])
