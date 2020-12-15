//: [Previous](@previous)
let preferredWidth = 650
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


//Set position
t.penUp()
t.forward(steps: 300)
t.setPosition(to: Point(x: 400, y: 400))


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

func drawLeftRow() {
    print("about to draw a  row")
    t.forward(steps: 120)
    t.left(by: 180)
    
    drawPointer()
    t.penUp()
    t.forward(steps: 80)
    drawPointer()
    
    t.penUp()
    t.forward(steps: 80)
    drawPointer()
    
    t.penUp()
    t.forward(steps: 80)
    drawPointer()
    
    t.penUp()
    t.forward(steps: 80)
    drawPointer()
    
    t.penUp()
    t.forward(steps: 80)
    drawPointer()
    
    t.penUp()
    t.forward(steps: 80)
    drawPointer()
    
    t.penUp()
    t.forward(steps: 80)
    drawPointer()
    
    t.penUp()
    t.forward(steps: 80)
    drawPointer()
}


func drawRightRow() {
    print("about to draw a  row")
    t.forward(steps: -300)
   
    // Refactored to use a loop
    // Example of abstraction
    for _ in 1...7 {
        drawPointer()
        t.penUp()
        t.forward(steps: 80)
    }
}

drawRightRow()
//t.forward(steps: -280)
//drawLeftRow()
//
//drawRightRow()
//t.forward(steps: -280)
//drawLeftRow()



// Get in position to draw another pointer






