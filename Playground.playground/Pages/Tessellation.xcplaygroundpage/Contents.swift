//: [Previous](@previous)
let preferredWidth = 650
let preferredHeight = 815
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


//Set position
t.penUp()
t.forward(steps: 300)
t.setPosition(to: Point(x: 50, y: 700))


func drawPointer() {
    print("about to draw a pointer")
    t.penDown()
    t.left(by: 60)
    t.forward(steps: 100)
    t.left(by: 60)
    t.forward(steps: 100)
    t.right(by: -60)
    t.forward(steps: 80)
    t.left(by: 120)
    t.forward(steps: 100)
    t.right(by: 60)
    t.forward(steps: 100)
    t.left(by: 120)
    t.forward(steps: 80)
}

func drawRow() {
    print("about to draw a  row")
   
    // Refactored to use a loop
    // Example of abstraction
    for _ in 1...7 {
        t.penUp()
        t.forward(steps: 80)
        drawPointer()
    }
}

// Travel down the point of the an arrow
func travelDownArrow() {
    t.penUp()
    t.left(by: 60)
    t.forward(steps: 100)
    t.left(by: 60)
    t.forward(steps: 100)
}

// DRAWING BEGINS!

for _ in 1...2 {
    // Draw a row to the right side of canvas
    drawRow()

    // Get turtle in position to draw row to the left side
    t.right(by: 180)

    // Draw a row to the left side of canvas
    drawRow()

    // Get turtle in position to draw towards right side of canvas
    travelDownArrow()
    t.right(by: 120)
    travelDownArrow()
    t.left(by: 60)

    
}








