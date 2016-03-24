import UIKit
import XCPlayground

/* =================================================== */

/*
 I have changed the setup a little bit from the Live Coding section last night 3/21/16;
 but the code implemetation is still the same.
 
 Instead of implementing inside `viewDidLoad`, I put them in the Playground scope,
 and you can simply comment out one by one to see the action.
 
 > Note: `loadView`, `viewDidLoad`, `viewWillLayoutSubviews`, `viewWillAppear`,
    `viewDidLayoutSubviews`, and `viewDidAppear` are part of View Lifecycle in UIViewController;
    they can get quite complicated; so I will save that topic for the future section.
*/
let controller = UIViewController()
controller.view.backgroundColor = .redColor()

XCPlaygroundPage.currentPage.liveView = controller
XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

/* =================================================== */

/* Progress bar view set up */
let bar = UIView(frame: CGRectMake(0, 100, 10, 50))
bar.backgroundColor = .blueColor()
controller.view.addSubview(bar)


/* To avoid the duplicated codes, I pass this function into `animations` as a closure */
func animate() { bar.frame.size.width = 200 }

/* =================================================== */

/* Simple animation */
UIView.animateWithDuration(0.5, animations: animate)

/* Animtion with a completion blocks */
// UIView.animateWithDuration(3, animations: animate) { _ in
//     UIView.animateWithDuration(0.5) {
//         bar.frame.size.width = 10
//     }
// }

/* Animation with a single options */
// UIView.animateWithDuration(10, delay: 0, options: .CurveEaseIn, animations: animate) { _ in
//     UIView.animateWithDuration(0.5) {
//         bar.frame.size.width = 10
//     }
// }

/*
 Animation with multiple options
 
 `OptionTypeSet` is quite a powerful feature, and a replacement of _Bitwise Operator`
 Eventhough it uses the same decoration like Array, it is actually a set. (Set has the same decoration)
 
 Data collection in Swift:
    - Array: elements can be duplicated, and must be in an order (access by index).
    - Set: elements HAVE to be unique and unordered.
    - Dictionary: Key-Value data collection, key must be unique, and value can be duplicated. Elements is unordered (access by key)
 
 > This is a good article to read about data colleciton in Swift: https://www.raywenderlich.com/79850/collection-data-structures-swift
 > It can be technical, but very important in Software Developement.
*/
// UIView.animateWithDuration(5, delay: 0, options: [.CurveEaseIn, .CurveEaseOut], animations: animate) { _ in
//     UIView.animateWithDuration(0.5) {
//         bar.frame.size.width = 10
//     }
// }

/* This damping animation is frequently used in LogIn screen - wrong password rejection */
/*
 I have not mastered the `usingSpringWithDamping`, and `initialSpringVelocity` variables yet.
 I encourage you to experiement with different combination in order to get the behavior that you want.
*/
// UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.3, options: .CurveEaseIn, animations: animate, completion: nil)