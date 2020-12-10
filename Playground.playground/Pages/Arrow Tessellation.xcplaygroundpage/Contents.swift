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
let preferredHeight = 615
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




func drawArrow(withHue: Int) {
    print("about to draw a arrow")
    t.setFillColor(to: .init(hue: withHue, saturation: 30, brightness:70 , alpha: 100))
    t.beginFill()
    // Triangle Rectangle
    t.penDown()
    t.forward(steps: 60)
    t.left(by: 90)
    t.forward(steps: 100)
    t.left(by: -90)
    t.forward(steps: 30)
    t.left(by: 90)
    t.right(by: -30)
    t.forward(steps: 120)
    
    
    t.left(by: 90)
    t.right(by: -30)
    t.forward(steps: 120)
    t.left(by: 120)
    t.forward(steps: 30)
    t.right(by: 90)
    t.forward(steps: 100)
    t.left(by: 90)
    t.endFill()
}

// Turn on high performance mo
canvas.highPerformance = false

// Get into position to draw row 1
t.penUp()
t.forward(steps: 30)
t.penDown()

func drawRowOfArrows(withHue hue: Int) {
    // Start drawing a row
    drawArrow(withHue: hue)

    //Get turtle in position
    t.left(by: 90)
    t.penUp()
    t.forward(steps: 205)
    t.right(by: 90)

    //Draw another arrow
    drawArrow(withHue: hue)


    //Get turtle in position
    t.left(by: 90)
    t.penUp()
    t.forward(steps: 205)
    t.right(by: 90)

    //Draw another arrow
    drawArrow(withHue: hue)
}

// Draw row 1
drawRowOfArrows(withHue: 240)


// Get into position to draw row 2
t.right(by: 90)
t.penUp()
t.forward(steps: 410)
t.left(by: 90)
t.forward(steps: 120)

// Draw row 2
drawRowOfArrows(withHue: 300)


// get into position to draw row 3
t.right(by: 90)
t.penUp()
t.forward(steps: 410)
t.left(by: 90)
t.forward(steps: 120)

// Start drawing row 3
drawRowOfArrows(withHue: 240)

// get into position for row 4
t.right(by: 90)
t.penUp()
t.forward(steps: 410)
t.left(by: 90)
t.forward(steps: 120)

// Draw row 4
drawRowOfArrows(withHue: 300)





