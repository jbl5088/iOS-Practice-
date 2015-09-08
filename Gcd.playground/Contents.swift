import Foundation

func one() {
    NSThread.sleepForTimeInterval(1.0)
    NSLog("This is function one()")
}

func two() {
    NSThread.sleepForTimeInterval(10.0)
    NSLog("This is function two()")
}

func three() {
    NSThread.sleepForTimeInterval(5.0)
    NSLog("This is function three()")
}

NSLog("Starting")

dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
    three()
})

dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
    two()
})

dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
    one()
})

while (true) {}