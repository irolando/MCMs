//
//  ViewController.m
//  MCMs
//
//  Created by Rolando Guerra on 6/1/16.
//  Copyright © 2016 Rolando R Guerra. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
#import "CreatureViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property NSMutableArray *creatures;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *monsterTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.creatures = [[NSMutableArray alloc]init];
    
    self.creatures = [NSMutableArray arrayWithObjects:@"Pikachu", @"Bulbasuar", @"Scyther", nil];
    NSLog(@"%@", [self.creatures objectAtIndex:0]);
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"CellID"];
    cell.textLabel.text = [self.creatures objectAtIndex:indexPath.row];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.creatures.count;
}
- (IBAction)addButtonPressed:(id)sender {
    
    if ([self.monsterTextField.text isEqualToString:@""]) {
        
    } else {
        [self.creatures addObject:self.monsterTextField.text];
        [self.tableView reloadData];
        //the following code hides the keyboard
        [self.monsterTextField resignFirstResponder];
        self.monsterTextField.text = nil;
    }
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    CreatureViewController *cvc = segue.destinationViewController;
    cvc.title = self.creatures[indexPath.row];
}
// following commented out code switches edit to done and allows for delete
//- (IBAction)onEditButtonPressed:(id)sender {
//        if ([[sender currentTitle] isEqualToString:@"Edit"]) {
//            [self.tableView setEditing:YES animated:YES];
//            [sender setTitle:@"Done" forState:UIControlStateNormal];
//        } else if ([[sender currentTitle] isEqualToString:@"Done"]) {
//            [self.tableView setEditing:NO animated:YES];
//            [sender setTitle:@"Edit" forState:UIControlStateNormal];
//        }
//}

@end
