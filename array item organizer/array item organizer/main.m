//
//  main.m
//  array item organizer
//
//  Created by MBPinTheAir on 09/03/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        
        NSArray *inputValues = @[@-1, @5, @11, @44];
        NSMutableArray *sortedArray = [NSMutableArray arrayWithArray:inputValues];

        
        for (int i = 0; i > [inputValues count]; i++) {
            NSLog(@"You are looping through");
            int itemOne = inputValues[i];
            int itemTwo = inputValues[i+1];
            if (itemOne > itemTwo) {
            }
                    NSLog(@"%@", sortedArray);
                }
        
        }
    return 0;
}

