//
//  ViewController.m
//  iOS_Calculator
//
//  Created by Student 5 on 28/09/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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


- (IBAction)numButton:(id)sender
{
    UIButton *localButton=sender;
    self.textLabel.text=[self.textLabel.text stringByAppendingString:localButton.titleLabel.text];
}

- (IBAction)clearButton:(id)sender
{
    self.textLabel.text=@"";
}

- (IBAction)divButton:(id)sender
{
    self.number1=[self.textLabel.text doubleValue];
    self.storage=self.textLabel.text;

    self.textLabel.text=@"";
    self.Operator=3;
}

- (IBAction)addButton:(id)sender
{
    self.number1=[self.textLabel.text doubleValue];
    self.storage=self.textLabel.text;
    self.textLabel.text=@"";
    self.Operator=0;

}

- (IBAction)subButton:(id)sender
{
    self.number1=[self.textLabel.text doubleValue];
    self.storage=self.textLabel.text;

    self.textLabel.text=@"";
    self.Operator=1;

}

- (IBAction)mulButton:(id)sender
{
    self.number1=[self.textLabel.text doubleValue];
    self.storage=self.textLabel.text;

    self.textLabel.text=@"";
    self.Operator=2;

}

- (IBAction)equalButton:(id)sender
{
    double answer = 0.0;
    self.number2=[self.textLabel.text doubleValue];

    self.textLabel.text=@"";
    
    switch (self.Operator)
    {
        case 0:
            answer=self.number1+self.number2 ;
            break;
            
        case 1:
            answer=self.number1-self.number2 ;
            break;
            
        case 2:
            answer=self.number1*self.number2;
            break;
            
        case 3:
            answer=self.number1/self.number2 ;
            break;
            
    }
    
    self.textLabel.text=[self.textLabel.text stringByAppendingFormat:@"%lf",answer];
}
@end
