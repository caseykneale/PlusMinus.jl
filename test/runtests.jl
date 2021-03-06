using PlusMinus
using Test



@test ±(1,2) == (1-2,1+2)

@test (±).(collect(1:3),1) == [(i-1,i+1) for i in 1:3]

@test (±).(ones(3),collect(1:3)) == [(1-i,1+i) for i in 1:3]

@test (±).(ones(3,2),collect(1:3)) == [(1-i,1+i) for i in 1:3, y in 1:2]

@test plusminus(1.5,2) == (1.5-2,1.5+2)

@test plusminus.(collect(1:3),1) == [(i-1,i+1) for i in 1:3]
