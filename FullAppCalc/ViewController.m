//
//  ViewController.m
//  FullAppCalc
//
//  Created by Mubashir Meddekar on 8/13/14.
//  Copyright (c) 2014 Hibrise Technologies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


{
 
   NSMutableString *displayString;
   bool numbertyped;
   

}
@end

@implementation ViewController
@synthesize DisplayVal,value1,value2,operation;

- (void)viewDidLoad

{
    
   
  
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning

{
    [super didReceiveMemoryWarning];
   
}

// ARITHMETIC BUTTONS

- (IBAction)Arith:(id)sender

{
numbertyped = NO;
    
    value1= [DisplayVal.text floatValue];
    operation = [sender currentTitle];
    
}



- (IBAction)Clear:(id)sender
{
  
    [displayString setString:@" "];
     DisplayVal.text = displayString;
    
}

// OPERATION

- (IBAction)Answer:(id)sender

{
    numbertyped = NO;
    
    value2 = [DisplayVal.text floatValue];
    
     int result1;
     int  result2;
     int result3;
     float result4;
    if ([operation isEqualToString:@"+"])
    {
        result1 = value1 + value2;
        DisplayVal.text = [NSString stringWithFormat:@"%d", result1];
    }
    else if ([operation isEqualToString:@"-"])
    {
        result2 = value1 - value2;
        DisplayVal.text = [NSString stringWithFormat:@"%d", result2];
    }
    
    else if ([operation isEqualToString:@"*"])
    {
        result3=value1 * value2;
        DisplayVal.text = [NSString stringWithFormat:@"%d", result3];
    }
    else if ([operation isEqualToString:@"/"])
    {
        result4=value1 / value2;
        DisplayVal.text = [NSString stringWithFormat:@"%f", result4];
    }
    
   
}

// NUMERICAL NUMBERS KEYS

-(IBAction)ClickDigit:(UIButton *)sender
{
    NSString *numbers = sender.currentTitle;
    if (numbertyped) {
        DisplayVal.text=[DisplayVal.text stringByAppendingString:numbers];
    }
    else
    {
        DisplayVal.text = numbers;
        numbertyped= YES;
        
    }
  
}




@end
