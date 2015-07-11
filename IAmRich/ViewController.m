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
    if (self.iphoto.layer.anchorPoint.x > 0.0) {
        CGPoint position = self.iphoto.layer.position;
        position.x -= self.iphoto.layer.bounds.size.width / 2.0;
        self.iphoto.layer.anchorPoint = CGPointMake(0.5, 0.5);
        self.iphoto.layer.position = position;
    }
    [UIView animateWithDuration: 3 animations:^{
    CATransform3D t = CATransform3DIdentity;
    t.m34 = -0.005;
    t = CATransform3DRotate(t, M_PI / 6.0, 0.0, 1.0, 0.0);
    self.iphoto.layer.transform = t;
        
    CATransform3D t1 = CATransform3DIdentity;
    t1.m34 = -0.005;
    t1 = CATransform3DRotate(t1, M_PI / -6.0, 0.0, 1.0, 0.0);
    self.iphoto.layer.transform = t1;
    }completion:^(BOOL finished){
        [UIView animateWithDuration: 4 animations:^{
            CATransform3D t2 = CATransform3DIdentity;
            t2.m34 = -0.004;
            t2 = CATransform3DRotate(t2, M_PI / 6.0, 0.0, 1.0, 0.0);
            self.iphoto.layer.transform = t2;
        }completion:^(BOOL finished){
            [UIView animateWithDuration: 5 animations:^{
                CATransform3D t3 = CATransform3DIdentity;
                t3.m34 = -0.002;
                t3 = CATransform3DRotate(t3, M_PI / -6.0, 0.0, 1.0, 0.0);
                self.iphoto.layer.transform = t3;
            }completion:^(BOOL finished){
                [UIView animateWithDuration: 5 animations:^{
                    CATransform3D t4 = CATransform3DIdentity;
                    t4.m34 = -0.001;
                    t4 = CATransform3DRotate(t4, M_PI / 6.0, 0.0, 1.0, 0.0);
                    self.iphoto.layer.transform = t4;
                }completion:^(BOOL finished){
                    [UIView animateWithDuration: 5 animations:^{
                        CATransform3D t5 = CATransform3DIdentity;
                        t5.m34 = 0;
                        t5 = CATransform3DRotate(t5, M_PI / 6.0, 0.0, 1.0, 0.0);
                        self.iphoto.layer.transform = t5;
                    }];
                }];
            }];
        }];
    }];
    
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
