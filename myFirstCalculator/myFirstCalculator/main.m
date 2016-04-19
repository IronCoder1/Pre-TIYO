//
//  main.m
//  myFirstCalculator
//
//  Created by MBPinTheAir on 03/03/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculatorMine.h"
#import "Scientific.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        CalculatorMine *myCalculator = nil;
//        myCalculator = [[CalculatorMine alloc] init];
//        [myCalculator clear];
//        [myCalculator setAccumulator:100];
//        [myCalculator add:200];
//        [myCalculator divide:15];
//        [myCalculator substract:10];
//        [myCalculator multiply:5];
//        
//        NSLog(@"The result is %f.2\n!", [myCalculator accumulator]);
        
        Scientific *myCalculator = nil;
        myCalculator = [[Scientific alloc] init];
        
        [myCalculator clear];
        [myCalculator setAccumulator:100];
        [myCalculator add:200];
        [myCalculator divide:15];
        [myCalculator substract:10];
        [myCalculator multiply:5];
        [myCalculator square];
        
        NSLog(@"The result is %.2f\n", [myCalculator accumulator]);
    }
    return 0;
}
