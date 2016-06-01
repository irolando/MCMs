//
//  CreatureViewController.m
//  MCMs
//
//  Created by Rolando Guerra on 6/1/16.
//  Copyright © 2016 Rolando R Guerra. All rights reserved.
//

#import "CreatureViewController.h"
#import "ViewController.h"


@interface CreatureViewController ()
@property (weak, nonatomic) IBOutlet UIButton *editButton;


@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)onEditButtonPressed:(id)sender {
    
    {
        
    if([self.editButton.titleLabel.text isEqualToString:@"Edit"]) {
        
        self.editButton.titleLabel.text = @"Done";
    }
    else{
        self.editButton.titleLabel.text = @"Edit";
    }
}
}






@end
