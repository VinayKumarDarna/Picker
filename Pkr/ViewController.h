//
//  ViewController.h
//  Pkr
//
//  Created by Olive Tech on 12/11/14.
//  Copyright (c) 2014 Olive Tech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetViewController.h"

@interface ViewController : UIViewController
{
    IBOutlet UIPickerView *pkrView;
    
    NSMutableArray *arraY1;
    NSMutableArray *arraY2;
    NSMutableArray *arraY3;
    NSMutableArray *arraY;
    NSMutableDictionary *detDict;
    
    IBOutlet UITextField *txtFld1;
    IBOutlet UITextField *txtFld2;
    IBOutlet UITextField *txtFld3;
    IBOutlet UITextField *txtFld4;
    IBOutlet UILabel *titleLabel;
    
    IBOutlet UIView *uiviewPkr;
    IBOutlet UIDatePicker *datePkr;
}
- (IBAction)datePkrChnaged:(id)sender;
- (IBAction)nextClk:(id)sender;
- (IBAction)doneClk:(id)sender;

@end

