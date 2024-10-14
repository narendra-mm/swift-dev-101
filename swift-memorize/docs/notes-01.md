# Xcode
Defualt IDE to learn swift to program for Apple multiplatform devices

# Swift
Base language to use to write apps for Apple devices


# SwiftUI
A UI framework to create UIs that follow functional programming. Sometimes it's called protocol-oriented programming.

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
This is to stack UI one top of one another, Similar to lego stacks.


# Quotes
### _behaves like a .._
This behaves like something. ContentView behaves like a view. Behave means behaviour, functionality. Not on the data.

### _computed property_
It is a huge amount of code that's never saved but computed when it's called. It's readonly. It's calculated here. This a variable but it's read-only variable. The other one you see regular are stored properties. For ex:<br/>

```swift
var i: Int
var s: String
```
### named property
You can pass the parameters to a function along with it's name. There are various combinations to pass parameters in structs.
```swift
Image(systemName: "globe")
```
### parameter defualts
The default parameters you can pass it without mentions it's name. This is most commonly used syntax in many programming languages
```swift
Text("Hello, world!")
```
