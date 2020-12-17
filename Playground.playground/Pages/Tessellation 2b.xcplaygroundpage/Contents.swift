//: [Previous](@previous) / [Next](@next)
//: # Tessellation 2b
//:
//: The `CanvasGraphics` framework also allows you to draw using a "LOGO turtle" metaphor.
//:
//: [Documentation for the Tortoise abstraction](http://russellgordon.ca/CanvasGraphics/Documentation/Classes/Tortoise.html) is available.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 500
let preferredHeight = 500
/*:
 ## Required code
 
 Lines 21 to 29 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
## Tortoise class

To use the Tortoise abstraction, just create an instance of the Tortoise class, and provide it with a canvas object that is should draw upon.
*/

// Create a turtle that will draw upon the canvas
let t = Tortoise(drawingUpon: canvas)

// Draw an "n"-sided polygon
func drawPolygon(withSides n: Int, withLength l: Int) {
    
    
    // Calculate the exterior angle
    let exteriorAngle: Degrees = 360.0 / Degrees(n)
    
    
    // Draw the sides of the polygon
    // Loop "n" times
    for _ in 1...n {
        
        t.forward(steps: l)
        t.left(by: exteriorAngle)
      
    }
    
}

// Start of my sketch

t.penUp()
t.setPosition(to: Point(x: 200, y: 300))

t.penDown()

t.forward(steps: 70)
t.left(by: 90)
t.forward(steps: 80)
t.right(by: 90)
t.forward(steps: 50)
t.left(by: 90)
t.forward(steps: 50)
t.right(by: 90)
t.forward(steps: 80)
t.left(by: 90)
t.drawSelf()
