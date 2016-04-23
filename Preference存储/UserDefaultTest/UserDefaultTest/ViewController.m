//
//  ViewController.m
//  UserDefaultTest
//
//  Created by wanglei on 16/4/23.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    [userDefault setObject:@"aaa" forKey:@"name"];
    [userDefault setInteger:15 forKey:@"age"];
    [userDefault setBool:YES forKey:@"sex"];
    
    NSArray *friends = @[@"bbb", @"ccc", @"ddd"];
    [userDefault setObject:friends forKey:@"friends"];
    [userDefault setObject:[NSDate date] forKey:@"date"];
    [userDefault synchronize];
    
    NSString *name = [userDefault objectForKey:@"name"];
    NSInteger age = [userDefault integerForKey:@"age"];
    BOOL sex = [userDefault boolForKey:@"sex"];
    NSLog(@"\n name=%@ \n age=%d \n sex=%d", name, age, sex);
    
    NSLog(@"%@", NSHomeDirectory());
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
