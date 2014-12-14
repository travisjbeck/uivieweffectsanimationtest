//
//  ViewController.m
//  effectsanimationtest
//
//  Created by Travis Beck on 11/26/14.
//  Copyright (c) 2014 Whole Wheat Creative. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *_effectsHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *_maskTop;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)toggleEffects:(id)sender {
    [self.view setNeedsLayout];

    if(self._maskTop.constant == 450){
        self._maskTop.constant = 0;
    }else{
        self._maskTop.constant = 450;
    }
    [UIView animateWithDuration:1.5f
                     animations:^{
                         [self.view layoutIfNeeded];
                     }];
}

@end
