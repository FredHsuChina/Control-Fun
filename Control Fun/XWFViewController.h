//
//  XWFViewController.h
//  Control Fun
//
//  Created by 许文锋 on 14-8-20.
//  Copyright (c) 2014年 fred. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XWFViewController : UIViewController <UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numberField;
- (IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)backgroundTap:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
- (IBAction)sliderChanged:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UISwitch *LeftSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *RightSwitch;
- (IBAction)SwitchChanged:(UISwitch *)sender;
- (IBAction)toggleControls:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UIButton *doSomethingButton;
- (IBAction)buttonPressed:(id)sender;

@end
