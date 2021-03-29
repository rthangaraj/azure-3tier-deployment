# Reduce() for traversing through dictionaries 
from functools import reduce  
import operator

def getFromDict(object, keys):
    return reduce(operator.getitem, keys, object)
def setInDict(object, keys, value):
    getFromDict(dataDict, keys[:-1])[keys[-1]] = value
