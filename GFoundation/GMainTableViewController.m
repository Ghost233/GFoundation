//
//  GMainTableViewController.m
//  GFoundation
//
//  Created by Ghost on 15/10/30.
//  Copyright © 2015年 Ghost. All rights reserved.
//

#import "GMainTableViewController.h"

@interface GMainTableViewController ()

@end

@implementation GMainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[self getIdentifierWithIndexPath:indexPath] forIndexPath:indexPath];
    
    switch (indexPath.row)
    {
        case 0:
            cell.textLabel.text = @"GRoundView";
            break;
            
        case 1:
            cell.textLabel.text = @"GRoundBoxView";
            break;
            
        case 2:
            cell.textLabel.text = @"GRoundRectangleBoxView";
            break;
            
        case 3:
            cell.textLabel.text = @"GRoundRectangleView";
            break;
            
        case 4:
            cell.textLabel.text = @"SegueTest1";
            break;
            
        default:
            break;
    }
    
    return cell;
}

- (NSString*)getIdentifierWithIndexPath:(NSIndexPath*)indexPath
{
    NSString* tempIdentifier = NULL;
    switch (indexPath.row)
    {
        case 0:
            tempIdentifier = @"GRoundViewCellIdentifier";
            break;
            
        case 1:
            tempIdentifier = @"GRoundBoxViewCellIdentifier";
            break;
            
        case 2:
            tempIdentifier = @"GRoundRectangleBoxViewCellIdentifier";
            break;
            
        case 3:
            tempIdentifier = @"GRoundRectangleViewCellIdentifier";
            break;
            
        case 4:
            tempIdentifier = @"SegueTestIdentifier";
            break;
            
        default:
            break;
    }
    return tempIdentifier;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
