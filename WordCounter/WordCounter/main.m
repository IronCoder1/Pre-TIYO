//
//  main.m
//  WordCounter
//
//  Created by MBPinTheAir on 08/03/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        NSMutableDictionary *counter = [[NSMutableDictionary alloc] init];
        
        
        NSString *myStringWords = @"badger badger badger badger mushroom snake badger badger to badger";
        NSArray *wordsInput = [myStringWords componentsSeparatedByString:@" "];
        
        for ( id word in wordsInput) {
            
            NSLog(@" the word is %@", word);
            
            NSNumber *value = [counter valueForKey:word];  //keys in dict are strings
            if (value) {
                // nsnumber to integer++, change back nsnumber annd insert back to dict
                [counter setObject:@([value intValue]+1) forKey:word];
            }
            else
            {
                [counter setObject:@1 forKey:word];
                // if nay set key value to @1
            }
        }
        
        NSLog(@"count is %@", counter);
        
        
        
        
        
//        NSLog(@"%@", wordsInput);
        
        
//
//        
//       NSEnumerator *
//        
        
//        while (wordsInput && myStringWords != @" "){
//            if (wordsInput == ) {
//
//            }
//        }
    }
    return 0;
}
