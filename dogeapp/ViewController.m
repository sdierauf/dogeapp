//
//  ViewController.m
//  dogeapp
//
//  Created by Stefan Dierauf on 11/13/13.
//  Copyright (c) 2013 Stefan Dierauf. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.phrases = [[NSArray alloc] initWithObjects:
                    @"such wow",
                    @"such surprise",
                    @"ahhh much cool",
                    @"wow",
                    @"such try",
                    @"so amaze",
                    @"such worth",
                    nil];
    
    self.dogeMessage.text = [self.phrases objectAtIndex:0];
    self.miniDogeMessage.text = @"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    int flip = arc4random_uniform(10);
    int random = arc4random_uniform(self.phrases.count);
    self.dogeMessage.text = [self.phrases objectAtIndex:random];
    //NSLog(@"Doge");
    if (flip > 4) {
        random = arc4random_uniform(self.phrases.count);
        self.miniDogeMessage.text = [self.phrases objectAtIndex:random];
    } else {
        self.miniDogeMessage.text = @"";
    }
}
@end
