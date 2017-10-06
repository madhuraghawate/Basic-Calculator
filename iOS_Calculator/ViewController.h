//
//  ViewController.h
//  iOS_Calculator
//
//  Created by Student 5 on 28/09/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *textLabel;
//@property (strong, nonatomic) IBOutlet UIButton *numButton;
- (IBAction)numButton:(id)sender;
- (IBAction)clearButton:(id)sender;
- (IBAction)divButton:(id)sender;
- (IBAction)addButton:(id)sender;
- (IBAction)subButton:(id)sender;
- (IBAction)mulButton:(id)sender;
- (IBAction)equalButton:(id)sender;

@property double number1;
@property double number2;
@property int Operator;
@property NSString *storage;

@end

