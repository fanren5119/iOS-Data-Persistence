//
//  ViewController.m
//  NSKeyedArchiverTest
//
//  Created by wanglei on 16/4/23.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "People.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    People *people = [[People alloc] init];
    people.name = @"xiaoming";
    people.age = 20;
    people.sex = 1;
    
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *fileName = [path stringByAppendingPathComponent:@"people.data"];
    [NSKeyedArchiver archiveRootObject:people toFile:fileName];
    
    NSLog(@"%@", fileName);
    
    People *people2 = [NSKeyedUnarchiver unarchiveObjectWithFile:fileName];
    if (people2) {
        NSLog(@"name:%@ age:%ld sex:%d", people2.name, (long)people2.age, people2.sex);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
