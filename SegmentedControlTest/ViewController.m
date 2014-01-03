//
//  ViewController.m
//  SegmentedControlTest
//
//  Created by SDT-1 on 2014. 1. 3..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

{
    
    UISegmentedControl *segment;
}
- (IBAction)segNum:(id)sender {
    UISegmentedControl *control = (UISegmentedControl*)sender;
    NSString*selectedStr = [control titleForSegmentAtIndex:control.selectedSegmentIndex];
    NSLog(@"Index:%d - Title:%@",control.selectedSegmentIndex,selectedStr);
}


-(void)handleBallSelection:(UISegmentedControl *)sender {
    switch (sender.selectedSegmentIndex) {
        case 0:
            NSLog(@"축구");
        
            break;
        
        case 1:
            NSLog(@"당구");
            break;
            
        case 2:
            NSLog(@"테니스");
            break;
        case 3:
            NSLog(@"골프");
            break;
            
       
            
        default:
            break;
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImage *ball1 = [UIImage imageNamed:@"ball1.png"];
    
    UIImage *ball2 = [UIImage imageNamed:@"ball2.png"];
    UIImage *ball3 = [UIImage imageNamed:@"ball3.png"];
    UIImage *ball4 = [UIImage imageNamed:@"Golf ball.png"];
    NSArray *items = [NSArray arrayWithObjects:ball1, ball2, ball3,ball4, nil];
    
    
    segment = [[UISegmentedControl alloc]initWithItems:items];
    segment.frame = CGRectMake(10, 100, 300, 40);
    
    [self.view addSubview:segment];
    
    segment.selectedSegmentIndex = 2;
    [segment addTarget:self action:@selector(handleBallSelection:) forControlEvents:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
