//
//  DetViewController.m
//  Pkr
//
//  Created by Olive Tech on 13/11/14.
//  Copyright (c) 2014 Olive Tech. All rights reserved.
//

#import "DetViewController.h"

@interface DetViewController ()

@end

@implementation DetViewController
@synthesize detailDict;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    oneLabel.text = [detailDict objectForKey:@"1"];
    twoLabel.text = [detailDict objectForKey:@"2"];
    threeLabel.text = [detailDict objectForKey:@"3"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
