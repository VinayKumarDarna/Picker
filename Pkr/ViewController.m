//
//  ViewController.m
//  Pkr
//
//  Created by Olive Tech on 12/11/14.
//  Copyright (c) 2014 Olive Tech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    arraY1 = [[NSMutableArray alloc] initWithObjects:@"a",@"b",@"c", nil];
    arraY2 = [[NSMutableArray alloc] initWithObjects:@"d",@"e",@"f", nil];
    arraY3 = [[NSMutableArray alloc] initWithObjects:@"g",@"h",@"i", nil];
    detDict = [[NSMutableDictionary alloc]init];
    pkrView.delegate = (id)self;
    uiviewPkr.hidden = YES;
    datePkr.hidden = YES;
}

-(void)viewWillAppear:(BOOL)animated
{
    uiviewPkr.hidden = YES;
    txtFld1.text = nil;
    txtFld2.text = nil;
    txtFld3.text = nil;
    txtFld4.text = nil;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if (textField.tag == 0)
    {
        titleLabel.text = @"AAA";
        pkrView.accessibilityHint = @"a";
        arraY = arraY1;
        [uiviewPkr setHidden:NO];
        [datePkr setHidden:YES];
        [pkrView setHidden:NO];
        [pkrView reloadAllComponents];
    }
    else if (textField.tag == 1)
    {
        titleLabel.text = @"BBB";
        pkrView.accessibilityHint = @"b";
        arraY = arraY2;
        [uiviewPkr setHidden:NO];
        [datePkr setHidden:YES];
        [pkrView setHidden:NO];
        [pkrView reloadAllComponents];
    }
    else if (textField.tag == 2)
    {
        titleLabel.text = @"CCC";
        pkrView.accessibilityHint = @"c";
        arraY = arraY3;
        [uiviewPkr setHidden:NO];
        [datePkr setHidden:YES];
        [pkrView setHidden:NO];
        [pkrView reloadAllComponents];
    }
    else if (textField.tag == 3)
    {
        titleLabel.text = @"DATE";
        [pkrView setHidden:YES];
        [uiviewPkr setHidden:NO];
        [datePkr setHidden:NO];
    }
    return NO;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField.tag == 0)
    {
        [txtFld2 becomeFirstResponder];
    }
    else if (textField.tag == 1)
    {
        [txtFld3 becomeFirstResponder];
    }
    else if (textField.tag == 2)
    {
        [txtFld4 becomeFirstResponder];
    }
    else if (textField.tag == 3)
    {
        [txtFld4 resignFirstResponder];
    }
    return YES;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return arraY.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [arraY objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component;
{
    if ([pkrView.accessibilityHint isEqualToString:@"a"])
    {
        txtFld1.text = [arraY objectAtIndex:row];
        [detDict setObject:txtFld1.text forKey:@"1"];
    }
    else if ([pkrView.accessibilityHint isEqualToString:@"b"])
    {
        txtFld2.text = [arraY objectAtIndex:row];
        [detDict setObject:txtFld2.text forKey:@"2"];
    }
    else if ([pkrView.accessibilityHint isEqualToString:@"c"])
    {
        txtFld3.text = [arraY objectAtIndex:row];
        [detDict setObject:txtFld3.text forKey:@"3"];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)datePkrChnaged:(id)sender
{
    NSDateFormatter *form = [[NSDateFormatter alloc]init];
    [form setDateFormat:@"yyyy-MM-dd"];
    txtFld4.text = [form stringFromDate:datePkr.date];
}

- (IBAction)nextClk:(id)sender
{
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DetViewController *det = [story instantiateViewControllerWithIdentifier:@"DetViewController"];
    det.detailDict = detDict;
    [self.navigationController pushViewController:det animated:YES];
}

- (IBAction)doneClk:(id)sender
{
    [uiviewPkr setHidden:YES];
}
@end
