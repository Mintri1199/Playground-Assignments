/*:
 ![Make School Banner](./swift_banner.png)
 # Create something cool
 
 - experiment: Use everything you learned to draw something awesome! See below for a few more functions you can use to bring your art to life!
 
 ## Drop and lift the pen
 
 - callout(Drop the pen): `penDown()`
 */
/*:
 - callout(Lift the pen): `penUp()`
 */
/*:
 - note: The pen starts out down.
 
 ## Moving the pen
 
 - callout(Move by a number of steps): `move(steps: Int)`
 */
/*:
 - callout(Move directly to coordinates): `moveTo(x: Int, y: Int)`
 */
/*:
 - callout(Rotate heading by an angle): `rotate(degrees: Int)`
 
 ## Change the pen
 
 - callout(Set color of pen): `setColor(red: Double, green: Double, blue: Double)`
 */
/*:
 - note: Each value should be between 0 and 1. eg. `setColor(red: 0.0, green: 0.0, blue: 0.0)` would change the pen to be black. `setColor(red: 1.0, green: 0.0, blue: 0.0)` would change the pen to be red.
 */
/*:
 - callout(Set thickness of pen): `set(thickness: Double)`
 
 */
//: [Previous](@previous)
/*:
 
 - callout(Challenge): Draw something awesome in the space below!
 
 */
func drawSomething (){
    let i = 0
    set (thickness: 5.5)
    setColor(red: 1, green: 1, blue: 1)
    
    var start = i
    
    var sides = 3.0
    while start < 9{
        var begin = 0.0
        rotate(degrees: 90)
        while begin < sides{
            setColor(red: drand48(), green:drand48() , blue: drand48())
            var rotation : Double = 360.0/sides
            rotate(degrees: rotation)
            move(steps: 80 - Int(2 * sides))
            begin += 1
        }
        sides += 1
        start += 1
    }
    
}

drawSomething()




















































































//: This is setup code to make the live visualization work!
Pen.delay = 0.1
import PlaygroundSupport
import Foundation
let results = DrawingScene.setup()
PlaygroundPage.current.liveView = results
