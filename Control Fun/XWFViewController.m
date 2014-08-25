//
//  XWFViewController.m
//  Control Fun
//
//  Created by 许文锋 on 14-8-20.
//  Copyright (c) 2014年 fred. All rights reserved.
//

#import "XWFViewController.h"

@interface XWFViewController ()


@end

@implementation XWFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.sliderLabel.text=@"50";
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)textFieldDoneEditing:(id)sender{
    [sender resignFirstResponder];
}
- (IBAction)backgroundTap:(id)sender{
    [self.nameField resignFirstResponder];
    [self.numberField resignFirstResponder];
}
- (IBAction)sliderChanged:(UISlider *)sender {
    int progress = lroundf(sender.value);
    self.sliderLabel.text = [NSString stringWithFormat:@"%d",progress ];
    
}
- (IBAction)SwitchChanged:(UISwitch *)sender {
    BOOL setting = sender.isOn;
    [self.LeftSwitch setOn:setting animated:YES];
    [self.RightSwitch setOn:setting animated:YES];
    //NSLog(@"%d setting",setting);
}

- (IBAction)toggleControls:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex ==0) {
        self.LeftSwitch.hidden = NO;
        self.RightSwitch.hidden = NO;
        self.doSomethingButton.hidden = YES;
    }else{
        self.LeftSwitch.hidden = YES;
        self.RightSwitch.hidden = YES;
        self.doSomethingButton.hidden = NO;
    }
}
- (IBAction)buttonPressed:(id)sender {
    //创建操作表单
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Are you sure?" delegate:self cancelButtonTitle:@"No Way!" destructiveButtonTitle:@"Yes,I'm sure!" otherButtonTitles:nil];
    [actionSheet showInView:self.view];
}
- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex{
    if (buttonIndex !=[actionSheet cancelButtonIndex]) {
        NSString *msg = nil;
        if (self.nameField.text.length>0) {//如果名字不为空
            //提示信息
            msg = [NSString stringWithFormat:@"You can breathe easy,%@,everything went ok.",self.nameField.text];
        }
        else
            msg = @"You can breathe easy,everything went ok.";
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Something was done." message:msg delegate:self cancelButtonTitle:@"Comfirm" otherButtonTitles:nil];
        [alert show];

        }
    
        
}
@end
