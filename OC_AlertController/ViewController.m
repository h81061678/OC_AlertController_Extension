//
//  ViewController.m
//  OC_AlertController
//
//  Created by 魏文咸 on 2018/10/19.
//  Copyright © 2018 魏文咸. All rights reserved.
//

#import "ViewController.h"
#import "AlertController+Extension.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any addalert.test;
    
}
- (IBAction)abc:(id)sender {
    UIAlertAction *ok = [UIAlertAction alertAction:@"OK" actionStyle:UIAlertActionStyleDefault headler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"OK");
    }];
    NSArray *action = [[NSArray alloc] initWithObjects:ok, nil];
    [UIAlertController showAlertController:@"Title" message:@"test" alertStyle:UIAlertControllerStyleAlert actions:action];
}
- (IBAction)bcd:(id)sender {
    UIAlertAction *ok = [UIAlertAction alertAction:@"OK" actionStyle:UIAlertActionStyleDefault headler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"OK");
    }];
    UIAlertAction *abc = [UIAlertAction alertAction:@"123" actionStyle:UIAlertActionStyleDefault headler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"123");
    }];
    NSArray *action = [[NSArray alloc] initWithObjects:ok,abc, nil];
    [UIAlertController showAlertController:@"Title" message:@"test" alertStyle:UIAlertControllerStyleAlert actions:action];
}

- (IBAction)cde:(id)sender {
    UIAlertAction *ok = [UIAlertAction alertAction:@"OK" actionStyle:UIAlertActionStyleDefault headler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"OK");
    }];
    UIAlertAction *abc = [UIAlertAction alertAction:@"123" actionStyle:UIAlertActionStyleDefault headler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"123");
    }];
    UIAlertAction *def = [UIAlertAction alertAction:@"456" actionStyle:UIAlertActionStyleDestructive headler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"456");
    }];
    NSArray *action = [[NSArray alloc] initWithObjects:ok,abc,def, nil];
    [UIAlertController showAlertController:@"Title" message:@"test" alertStyle:UIAlertControllerStyleActionSheet actions:action];
}


@end
