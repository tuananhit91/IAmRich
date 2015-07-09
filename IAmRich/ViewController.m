//
//  ViewController.m
//  IAmRich
//
//  Created by admin on 7/7/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *iphoto;
@property (weak, nonatomic) IBOutlet UILabel *IAmRich;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.iphoto.alpha = 0;
    self.IAmRich.alpha = 0;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"iphoto's alpha = %1.0f", self.iphoto.alpha);
    [UIView animateWithDuration:3 animations:^{
        self.iphoto.alpha = 1;
        NSLog(@"iphoto's alpha = %1.0f", self.iphoto.alpha);
    } completion:^(BOOL finished){
        [UIView animateWithDuration:2 animations:^{
            self.IAmRich.center = CGPointMake(self.IAmRich.center.x, 50);
            self.IAmRich.alpha = 1;
        } completion:nil];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
