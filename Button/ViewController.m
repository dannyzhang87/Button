//
//  ViewController.m
//  Button
//
//  Created by Danny Zhang on 11-11-25.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImage *image = [UIImage imageNamed:@"cell.png"];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
   
    btn.frame = CGRectMake(0, 0, 50,20);
    CGRect f = btn.frame;
    f.size = image.size;
    btn.frame = f;
//    btn.adjustsImageWhenHighlighted = NO;
    btn.showsTouchWhenHighlighted = YES;
    [btn setImage:image forState:UIControlStateHighlighted];
    [btn setTitle:@"123" forState:UIControlStateNormal];
//    btn.titleLabel.text = @"123";
//    btn.reversesTitleShadowWhenHighlighted = YES;
//    btn.contentEdgeInsets = UIEdgeInsetsMake(6, 3, 6, 3);
    [self.view addSubview:btn];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
