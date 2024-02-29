# Map
## Javascript Map 
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map
Keys are compared by a specific method almost by-reference.
Maps modifications are implemented mutably, so get/set/delete/clear include a clone.
## Complex Map
Since the key comaprisons in Js map are vaguely by reference, 
they play poorly with rescripts ease of creating new values.
So for situations where you have a key that is not a primitive
where the value and reference comparison collapse
Use Complex Map, providing a string representation of your type
So we can track those key values separate from the value values
and pretend everything is the same
