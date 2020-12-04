//: [Previous](@previous) / [Next](@next)
//: # Blank canvas to copy
//:
//: ## To duplicate this page
//:
//: Place your cursor on line 19 of this page, press `Command-A` to select all text, and then `Command-C` to copy.
//:
//: Two-finger tap on the playground, then choose **New Playground Page**:
//:
//: ![new-playground](new-playground.png "New Playground")
//:
//: Move to the new page and press `Command-A` to select all text there, then `Command-V` to paste.
//:
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 300
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas




// Create a turtle to draw with//
let turtle = Tortoise(drawingUpon: canvas)

// Draw an "n"-side polygon
func drawPolygon(withSides n: Int) {
    // Calculate the exterior angle
    
    let exteriorAngle : Degrees = 360.0 / Degrees(n)
    
    //Draw the sides of the polygon
    for _ in 1...n {
        
        turtle.forward(steps: 50)
        turtle.left(by: exteriorAngle)
    }
}
// Use the fuction - draw a pentagon
drawPolygon(withSides : 3)

//move the turtle over  a bit
turtle.penUp()
turtle.forward(steps: 100)
turtle.penDown()

// Use the function again - draw a square
drawPolygon(withSides: 4)
/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */

