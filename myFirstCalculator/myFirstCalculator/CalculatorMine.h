//
//  CalculatorMine.h
//  myFirstCalculator
//
//  Created by MBPinTheAir on 03/03/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorMine : NSObject
{
    double accumulator;
}

//accumulator methods
- (void) setAccumulator: (double)value;
- (void) clear;
- (double)accumulator;

// arithmethic methods
- (void) add: (double)value;
- (void) substract: (double)value;
- (void) divide: (double)value;
- (void) multiply: (double)value;

@end
