//
//  main.m
//  anagram finder
//
//  Created by MBPinTheAir on 07/03/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
//        char a[5] = "hello";
//        char b[5] = "ohell";
//        int count1[26];
//        int count2[26];
//        
//        int i;
//        for (i = 0; i < 5; i++) {
//            int x = a[i];
//            x = x - 97;
//            count1[x] += 1;
//        }
//        
//        for (i = 0; i < 5; i++) {
//            int x = b[i];
//            x = x - 97;
//            count2[x] += 1;
//        }
//        
//        for (i = 0; i <= 25; i++) {
//            
//            if (count1[i] == count2[i])
//            {
//                NSLog(@"They are anagrams\n");
//                break;
//            }
//            else if (count1[25] != count2[25])
//            { NSLog(@"They're Not anagrams\n");;
// }
//    }
//        char A[5] = "helpo";
//        char B[5] = "ohell";
//        
//        int count1[26];
//        int count2[26];
//        
//        for (int g = 0; g <26; g++) {
//            count1[g] = 0;
//            count2[g] = 0;
//        }
//        
//        int i;
//        for (i = 0; i <= 4; i++) {
//            int x = A[i];
//            x = x - 97;
//            count1[x] += 1;
//        }
//        
//        for (i = 0; i <= 4; i++) {
//            int x = B[i];
//            x = x - 97;
//            count2[x] += 1;
//        }
//        
//        int flag = 0;
//        
//        
//        for (i = 0; i <= 25; i++) {
//            
//            if (count1[i] != count2[i])
//            {
//                flag = 1;
//                break;
//            }
//        }
//        
//        if (flag == 1 ) {
//            printf("It's NOT an anagram\n");
//            
//        }
//        
//        else {
//            printf("It's an anagram\n");
        char A[20];
        char B[20];
        for (int g = 0; g < 20; g++){
            A[g] = 0;
            B[g] = 0;
        }
        printf ("Type first word: \n");
        scanf("%s", &A);
        
        printf("Type second word: \n");
        scanf("%s", &B);
        
        int arraySizeA = sizeof(A)/sizeof(A[0]);
        int arraySizeB = sizeof(B)/sizeof(B[0]);
        int count1[127];
        int count2[127];
        
        for (int g = 0; g < 26;  g++) {
            count1[g] = 0;
            count2[g] = 0;
        }
        for (int i = 0; i < arraySizeA; i++){
            int y = A[i];
            count1[y] += 1;
        }
        for (int z = 0; z < arraySizeB; z++) {
            int x = B[z];
            count2[x] +=1;
        }
        int flag = 0;
        for (int i = 0; i <= 25; i++) {
            if (count1[i] != count2[i]){
                flag = 1;
                break;
            }
        }
        if (flag) {
            printf("It's NOT an anagram\n");
        }
        else{
            printf("It's an anagram\n");
        }
        
    return 0;
}
}
