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
let preferredWidth = 400
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


// Turn on high performance mode
canvas.highPerformance = true

// Set background
let lightBlue = Color(hue: 200, saturation: 50, brightness: 50, alpha: 100)
t.setPenColor(to: lightBlue)
t.setFillColor(to: lightBlue)
canvas.drawRectangle(at: Point(x: 0, y: 0),
                     width: canvas.width,
                     height: canvas.height)
// Turtle sun
t.setPenSize(to: 1)
t.penUp()
t.setPosition(to: Point(x: 400, y: 450))
t.penUp()
t.backward(steps: 100)
t.penDown()

// Sun
t.setPenColor(to: .orange)
t.setFillColor(to: .yellow)
t.beginFill()
for _ in 1...18 {
    t.forward(steps: 100)
    t.left(by: 160)
}

// Turn off high performance
canvas.highPerformance = false
t.penUp()
t.forward(steps: 1)
t.penDown()

let Brown = Color(hue: 30, saturation: 50, brightness: 65, alpha: 100)
t.setPenColor(to: Brown)
t.setFillColor(to:Brown)
t.penUp()
t.setPosition(to: Point(x: 350, y: 0))
t.penDown()
// Tree Rectangle
t.beginFill()
t.penDown()
t.forward(steps: 30)
t.left(by: 90)
t.forward(steps: 200)
t.left(by: 90)
t.forward(steps: 30)
t.left(by: 90)
t.forward(steps: 200)
t.left(by: 90)
t.endFill()

//leafs
t.beginFill()
let Green2 = Color(hue: 120, saturation: 50, brightness: 65, alpha: 100)
t.setPenColor(to: Green2)
t.setFillColor(to: Green2)
t.penUp()
t.setPosition(to: Point(x: 360, y: 70))
t.forward(steps: 5)
t.left(by: 90)
t.forward(steps: 125)
t.right(by: 90)
t.penDown()
// Flower rotational symmetry
for _ in 1...12 {
    drawPolygon(withSides: 30, withLength: 5)
    t.left(by: 30)
}
t.endFill()




