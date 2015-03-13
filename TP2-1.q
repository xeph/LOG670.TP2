//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*
P1 : Il n\u2019y a pas de collision (i.e. deux v\u00e9hicules circulants en sens inverse) sur le pont.
*/
A[] not ((vehicleB.PassingBridge && vehicleA.PassingBridge) || (vehicleB.PassingBridge && vehicleA2.PassingBridge))

/*
P2 : Un v\u00e9hicule qui arrive est certain de passer sur le pont \u00e0 l\u2019issue d\u2019une dur\u00e9e born\u00e9e.
*/
A[] not ((vehicleA.IdleBridge and vehicleA.waitingTime > MAXWAITTIME) || (vehicleA2.IdleBridge and vehicleA2.waitingTime > MAXWAITTIME) || (vehicleB.IdleBridge and vehicleB.waitingTime > MAXWAITTIME))

/*
Aucun deadlock, sauf lorsque les v\u00e9hicules sont rendus dans l'\u00e9tat "End", ce qui est la fin du programme.
*/
A[] not (deadlock && not (vehicleA.End && vehicleA2.End && vehicleB.End))
