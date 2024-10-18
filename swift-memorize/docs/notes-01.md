# Xcode
Defualt IDE to learn swift to program for Apple multiplatform devices

## Preview
It comes with differnt way to view the preview <br/>
- Color scheme variants: switch between dark and light modes
- Orientation variants: switch between potrait and lanscape modes
- Dynamic Type variants: switch between different (user) font size settings available

# Swift
Base language to use to write apps for Apple devices


# SwiftUI
A UI framework to create UIs that follow functional programming. Sometimes it's called protocol-oriented programming.
```swift
import SwiftUI
struct ContentView: View {
    var body: some View {
        VStack {
			Image(systemName: "globe")
				.imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}
```
### _struct_
_struct_ is keyword in swift. Short for structure. In C language they hold variables. In SwiftUI, they are heart of eveything. _struct_ are pretty much eveything
in SwiftUI. There is no object-oriented programming or inheritance. It just holds variables and methods.

### _View_
A _View_ is just a rectangular area screen to draw something and can get events. Anytime you behave like something, you have two sides of a coin. <br/> 
- One is responsibility. For _View_, there is only one thing to do is to have a "body" content.<br/>
- Two is functionality. With one variable, you get a massive amount of functionality.<br/>

SwiftUI is all about views.

### _var body: some View_
body is a property of struct. All the content is computed inside it's content(inside curly braces). The values inside content is not stored but it's computed.

### _some View_
When used _some_, the type of this _View_ variable has to be any struct in the world as long as it behaves like struct. This tells Swift to execute this code, see what it returns, use that. That's the _View_ to use.
### _VStack_
This is to stack UI one top of one another, Similar to lego stacks. Vstack is no different than other views, it just stacks one top of each other. There are three view in the above example, text view, image view and VStack view.
VStack can also be decalred with parantheses
```swift
VStack(alignment:HorizontalAlignment.leading, spacing: 20){
	Image(systemName: "globe")
		.imageScale(.large)
		.foregroundStyle(.tint)
	Text("Hello, world!")
}
```
The code inside the curly braces are called Embedded functions. In functional programming, functions are passed as arguments. It's fundamental part of functional programming. This function returns a view. The code above acts as a list (of views). There's a post-processing step hapening here, that's taking a list of views and packaging it up to something called TupleView
```swift
VStack(content:{
	Image(systemName: "globe")
		.imageScale(.large)
		.foregroundStyle(.tint)
	Text("Hello, world!")
})
.padding()
```
The embedded function(TupleView) here will be passed to content parameter. All the syntax is being omitted here to keep the code (look) clean. Inside the TupleView, you can't do much. It can only be used to list views, have conditions and local variables. The feature that that turns list into TupleView is called @ViewBuilder.

### _RoundedRectangle()_
RoundedRectangle is a view but it's also a shape in SwiftUI. They can be used to render a shape, in this cased, a rounded rectangle. You can only view either a stroke or fill but not both at the same time. If you need both, you need to make two views and layer them in ZStack.

### _ZStack_
They are stacks that are layout out in z-axis. Infront of one another compared to VStack (stack on top of each other), HStack(puts views nexts to each other)

### _view reusability_
To create lot of views without copy pasting lot of code, you can create a new struct derived from View. This helps to reuse the code and expand one UI to be reused over and over. Also, once source to change.
```swift
//create a new view
struct CardView:View{ 
	var body:some View{
		ZStack(content:{
			RoundedRectangle(cornerRadius: 12)
				.foregroundColor(.white)
			RoundedRectangle(cornerRadius: 12)
				.strokeBorder(lineWidth: 3)
			Text("👻")
		})
	}
}

struct ContentView: View {
    var body: some View {
		HStack{
			CardView() //call the new view method
			CardView() //call the new view method
		}
		.foregroundStyle(.orange)//view modifer
		.padding()
		
    }
}
```

### _Arguments of Structs_
To pass an argument to struct, just create a var. There are two common kinds of arguments
- Required Arguments: These arguments should always be passed on. They should also be declared first in the sequence they were created.
- Optional Arguments: Thes arguments store a default value and are optional to be called.
```swift
struct CardView:View{
	var isFaceUp:Bool //Create a var to pass a value to struct.
	var scale:Int = 2 //These vars can have a defualt value
	var scale:
	var body:some View{
			Text("👻")
	}
}
```
For the above example you should call
```swift
CardView(isFaceUp: true) //isFaceUp should **always** be mentioned in the code
CardView(isFaceUp: true, scale: 5) // scale is optional

CardView() //results in an error
CardView(scale:4, isFaceUp: true) //results in an error as isFaceUp does not have default 
```


# Quotes
### _behaves like a .._
This behaves like something. ContentView behaves like a view. Behave means behaviour, functionality. Not on the data.

### _computed property_
It is a huge amount of code that's never saved but computed when it's called. It's readonly. It's calculated here. This a variable but it's read-only variable. The other one you see regular are stored properties. For ex:<br/>

```swift
var i: Int
var s: String
```
### _named property_
You can pass the parameters to a function along with it's name. There are various combinations to pass parameters in structs.
```swift
Image(systemName: "globe")
```
### _parameter defualts_
The default parameters you can pass it without mentions it's name. This is most commonly used syntax in many programming languages
```swift
Text("Hello, world!")
```
### _@ViewBuilder_
TupleView(list of Views) or TupleView(bag of Lego)

### _View modifier_
View modifers are functions that can be called on a View(which are structs). If you use an View modifer, they will send a modifed view. View modifiers can be chained to be modified again and again. When you apply View modifer to a stack or grid, the modifers will be applied to all the views inside the TupleView
```swift
VStack(content:{
	Image(systemName: "globe")
		.imageScale(.large)//view modifer
		.foregroundStyle(.tint)//view modifer
	Text("Hello, world!")
})
.font(.largeTitle) //view modifer to a stacl
```
The scoping of where view modifer is being applied matters as you apply it an view itself or to a TupleView. The _imageScale_ is an modifier of _Image View_ but since it's added to a stack, it'll be sent to all the views inside. Text View just ignores it but Image View takes it in. But the _foregroundStyle_ modifier of _Image View_ will override the stack's modifer.
```swift
VStack(content:{
	Image(systemName: "globe")
		.foregroundStyle(.green)
	Text("Hello, world!")
})
.font(.largeTitle)
.foregroundStyle(.orange)//view modifer
.imageScale(.small)//view modifer
```
### _shape_
They are views that can render 2D mesh. Recangle(), Circle(), [RoundedRecangle()](#roundedrectangle)

# status so far
1:02:25 / 1:11:03 of [Lecture 1 | Stanford CS193p 2023](https://www.youtube.com/watch?v=n1qabtjZ_jg&t=3745&list=PLdMIs_TW2AN8cgrFVFJzJcqKACHhIyGd4&index=1)

