//
//  DetViewController.h
//  Pkr
//
//  Created by Olive Tech on 13/11/14.
//  Copyright (c) 2014 Olive Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetViewController : UIViewController
{
     IBOutlet UILabel *oneLabel;
     IBOutlet UILabel *twoLabel;
     IBOutlet UILabel *threeLabel;
}
@property (nonatomic, retain) NSMutableDictionary *detailDict;
@end
