//
//  ViewController.h
//  dogeapp
//
//  Created by Stefan Dierauf on 11/13/13.
//  Copyright (c) 2013 Stefan Dierauf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *dogeMessage;
@property (strong, nonatomic) IBOutlet UILabel *miniDogeMessage;
@property (strong, nonatomic) NSArray *phrases;

- (IBAction)buttonPressed;

@end
