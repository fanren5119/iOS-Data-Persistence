//
//  People.m
//  NSKeyedArchiverTest
//
//  Created by wanglei on 16/4/23.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "People.h"

@implementation People

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.age = [aDecoder decodeIntegerForKey:@"age"];
        self.sex = [aDecoder decodeBoolForKey:@"sex"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeInteger:self.age forKey:@"age"];
    [aCoder encodeBool:self.sex forKey:@"sex"];
}

@end
