module PlusMinus

export plusminus, ±, minusplus, ∓

plusminus(x::Number,y::Number) = (x+y,x-y)
±(x,y) = plusminus(x,y)

minusplus(x::Number,y::Number) = (x-y,x+y)
∓(x,y) = minusplus(x,y)

end # module
