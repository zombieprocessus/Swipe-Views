//
//  ViewController1.m
//  Zombie Swiping
//
//  Created by john on 26/12/11.
//  Copyright (c) 2011 Zombie Processus. All rights reserved.
//

#import "ViewController1.h"

@implementation ViewController1

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]
                                           
                                           initWithTarget:self action:@selector(handleSwipeLeft:)];
    
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [self.view addGestureRecognizer:swipeLeft];

}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)handleSwipeLeft:(UISwipeGestureRecognizer *)recognizer {
    
    [self performSegueWithIdentifier: @"SwipeSegue" sender: self];

}

@end
