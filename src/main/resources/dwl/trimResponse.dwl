%dw 1.0
%output application/json
%function trimIt(value)
  value match {
    :object -> trimByKey(value),
    :array -> $ map trimIt($),
    default -> trim value
  }
  
%function trimByKey(value)
  value mapObject (value,key) ->
  using(trimmedvalue = trimIt(value))
  {
    (key): trimmedvalue
  }
---
trimIt(payload)