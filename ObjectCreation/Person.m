//
//  Person.m
//  ObjectCreation
//
//  Created by swathi m on 12/14/15.
//  Copyright © 2015 swathi m. All rights reserved.
//

#import "Person.h"

@implementation Person

//@synthesize fullName,lastName;

-(id)init
{
    if (self==[super init])
    {
        _fullName = @"Swathi";
        _lastName = @"Bhat";
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"Person deallocated");
    [super dealloc];
}
-(id)copyWithZone:(NSZone *)zone{
    Person *person =[[Person alloc]init];
    person.fullName = self.fullName;
    person.lastName = self.lastName;
    return person;
}

@end
