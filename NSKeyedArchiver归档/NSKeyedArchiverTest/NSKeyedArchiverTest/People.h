//
//  People.h
//  NSKeyedArchiverTest
//
//  Created by wanglei on 16/4/23.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject <NSCoding>

@property (nonatomic, strong) NSString  *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) BOOL      sex;

@end
