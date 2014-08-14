//
//  ViewController.h
//  FullAppCalc
//
//  Created by Mubashir Meddekar on 8/13/14.
//  Copyright (c) 2014 Hibrise Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (strong, nonatomic) IBOutlet UILabel *DisplayVal;


@property float value1;
@property float value2;

@property (nonatomic, copy) NSString *operation;



-(IBAction)ClickDigit:(UIButton *)sender;

- (IBAction)Arith:(id)sender;


- (IBAction)Clear:(id)sender;

- (IBAction)Answer:(id)sender;



@end
