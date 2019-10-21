class Solution(object):
    def numSmallerByFrequency(self, queries, words):
        """
        :type queries: List[str]
        :type words: List[str]
        :rtype: List[int]
        """
        lis=[self.smallestChar(word) for word in words]
        res_list=[]
        for query in queries:
            count_query=self.smallestChar(query)
            res=[1 if count_query<i else 0 for i in lis]
            res_list.append(sum(res))
        return res_list
        
    
    def smallestChar(self, text):
        num_ord=130
        for i in text:
            if ord(i)<num_ord:
                count=1
                num_ord=ord(i)
            elif ord(i)==num_ord:
                count+=1
        return count
        
        
        
        
        lis=[self.smallestChar(word) for word in words]
        res_list=[]
        for query in queries:
            count_query=self.smallestChar(query)
            res=[1 if count_query<i else 0 for i in lis]
            res_list.append(sum(res))
        return res_list
        
    
    def smallestChar(self, text):
        num_ord=text[0]
        count=0
        for i in text:
            if i<num_ord:
                count=1
                num_ord=i
            elif i==num_ord:
                count+=1
        return count
        
        
        
        
        import bisect
        lis=[self.smallestChar(word) for word in words]
        lis.sort()
        
        res_list=[]
        for query in queries:
            count_query=self.smallestChar(query)
            idx=bisect.bisect_right(lis,count_query)
            res_list.append(len(lis)-idx)
        return res_list
        
    
    def smallestChar(self, text):
        num_ord=text[0]
        count={}
        for i in text:
            count[i]=count.setdefault(i,0)+1
            num_ord=min(num_ord,i)
        return count[num_ord]
