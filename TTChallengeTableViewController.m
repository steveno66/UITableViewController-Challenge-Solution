//
//  TTChallengeTableViewController.m
//  UITableViewController Challenge Solution
//
//  Created by macbookpro on 2014/07/31.
//  Copyright (c) 2014 Technotopia. All rights reserved.
//

#import "TTChallengeTableViewController.h"

@interface TTChallengeTableViewController ()

@end

@implementation TTChallengeTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.sectionsOfTable = [[ NSMutableArray alloc] init];
    NSMutableArray *section0 = [@[ @"I am section 0", @"I am section 0"] mutableCopy];
    NSMutableArray *section1 = [@[ @"another section"] mutableCopy];
    NSMutableArray *section2 = [@ [ @"Cell", @"Cell", @"Cell"] mutableCopy];
    
    [self.sectionsOfTable addObject:section0];
    [self.sectionsOfTable addObject:section1];
    [self.sectionsOfTable addObject:section2];
    
    
    
    NSLog(@"%@", section0);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return [self.sectionsOfTable count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    
    if (section == 0)
    {
        return 2;
    }
    else if (section == 1)
    {
        return 1;
    }
    else
    {
        return 3;
    }
    
    
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    if (indexPath.section == 0) {
        cell.textLabel.text = @"I am in section 0";
        cell.backgroundColor = [UIColor redColor];
    }
    if (indexPath.section == 1){
        cell.textLabel.text = @"another string";
        cell.backgroundColor = [UIColor blueColor];
    }
    if (indexPath.section == 2) {
        cell.textLabel.text = [NSString stringWithFormat:@"Cell %li", indexPath.row];
        cell.backgroundColor = [UIColor greenColor];
        
    }
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
