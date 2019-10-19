class Solution:
    def findRestaurant(self, list1: List[str], list2: List[str]) -> List[str]:
        
        set1=set(list1)
        set2=set(list2)
        
        union=set1&set2
        dic={i:list1.index(i)+list2.index(i) for i in union}
        degree=min(dic.values())
        res=[]
        for idx,val in dic.items():
            if val==degree:
                res.append(idx)
        
        return res
        
        
        
class Solution:
    def findRestaurant(self, list1: List[str], list2: List[str]) -> List[str]:
                d = dict()
        for i in range(len(list1)):
            d[list1[i]] = [1,i]
        for i in range(len(list2)):
            if list2[i] in d.keys():
                d[list2[i]] = [2, d[list2[i]][1] + i]
        # filter out singles
        theList = [[v,k] for k, v in d.items() if v[0] == 2]
        theDict = dict()
        for i in theList:
            
            if i[0][1] in theDict.keys():
                theDict[i[0][1]] += [i[1]]
            else:
                theDict[i[0][1]] = [i[1]]
        return theDict[min(theDict.keys())]
        
