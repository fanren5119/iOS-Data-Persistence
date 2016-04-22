//
//  ViewController.m
//  PlistSaveTest
//
//  Created by 王磊 on 16/4/22.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)respondsToNSStringButton:(id)sender
{
    NSString *string = @"my name is xiaoming";
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSLog(@"===%@",path);
    NSString *fileName = [path stringByAppendingPathComponent:@"String.plist"];
    [string writeToFile:fileName atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
    NSString *getString = [NSString stringWithContentsOfFile:fileName encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"String=====%@", getString);
}

- (IBAction)respondsToNSDataButton:(id)sender
{
    NSString *string = @"my name is xiaoming";
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSData *data = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSString *fileName = [path stringByAppendingPathComponent:@"Data.plist"];
    [data writeToFile:fileName atomically:YES];
    
    NSData *getData = [NSData dataWithContentsOfFile:fileName];
    NSLog(@"data=== %@", getData);
}

- (IBAction)respondsToNSArrayButton:(id)sender
{
    NSArray *array = @[@"aaa", @"bbb", @"ccc"];
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *fileName = [path stringByAppendingPathComponent:@"Array.plist"];
    [array writeToFile:fileName atomically:YES];
    
    NSArray *getArray = [NSArray arrayWithContentsOfFile:fileName];
    NSLog(@"array == %@", getArray);
}

- (IBAction)respondsToNSDictionaryButton:(id)sender
{
    NSDictionary *dictionary = @{@"name" : @"xiaoming",
                                 @"age" : @"15",
                                 @"sex": @(1)};
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *fileName = [path stringByAppendingPathComponent:@"Dictionary.plist"];
    [dictionary writeToFile:fileName atomically:YES];
    
    NSDictionary *getDictionary = [NSDictionary dictionaryWithContentsOfFile:fileName];
    NSLog(@"dictionary == %@", getDictionary);
}

@end
