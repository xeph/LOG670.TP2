//This file was generated from (Academic) UPPAAL 4.0.13 (rev. 4577), September 2010

/*

*/
A[] not (va3.Waiting and va3.waitingTimer > 5 and va5.Waiting and va5.waitingTimer > 5 and ( c.front() == 3 || c.front() == 5) )

/*

*/
A[] not (va1.Waiting and va1.waitingTimer > 15 and va2.Waiting and va2.waitingTimer > 15 and va4.Waiting and va4.waitingTimer > 15)

/*

*/
A[] va1.Passing + va2.Passing + va3.Passing + va4.Passing + va5.Passing <= 1

/*

*/
A[] not (deadlock and not (va1.Done and va2.Done and va3.Done and va4.Done and va5.Done))
