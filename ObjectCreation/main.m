//
//  main.m
//  ObjectCreation
//
//  Created by swathi m on 12/14/15.
//  Copyright © 2015 swathi m. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *person = [[Person alloc]init];
       NSLog(@"%@ %@ %@",person.fullName,person.lastName,[person valueForKey:@"lastName"]);
        NSLog(@"%lu",person.retainCount);
        Person *person1 = [person retain];
        NSLog(@"%lu and %lu",person.retainCount,person1.retainCount);
//        [person release];
//       NSLog(@"%lu",person.retainCount);
        [person1 release];
        person.fullName = @"ssss";
      NSLog(@"%lu and %@",person1.retainCount,person.fullName);
        Person *person2 = [person copy];
        NSLog(@"%lu",person2.retainCount);
        // insert code here...
        //NSLog(@"Hello, World!");
    }
    return 0;
}
 //try with diffferent classes