//
//  MessageTableViewController.m
//  Message
//
//  Created by  江苏 on 16/3/1.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "MessageTableViewController.h"
#import "MessageTableViewCell.h"
@interface MessageTableViewController ()

@end

@implementation MessageTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.separatorStyle=UITableViewCellSelectionStyleNone;
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
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row%2==0) {
        MessageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        cell.MessagePopImageView.image=[UIImage imageNamed:@"message_sms"];
        UILabel* label=[[UILabel alloc]initWithFrame:CGRectMake(180, 0, 70, 30)];
        label.font=[UIFont italicSystemFontOfSize:17];
        label.text=@"你好!!!";
        label.numberOfLines=0;
        label.textAlignment=NSTextAlignmentRight;
        label.lineBreakMode = NSLineBreakByWordWrapping;
        [cell  addSubview:label];
        return cell;
    }else{
    MessageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        UILabel* label=[[UILabel alloc]initWithFrame:CGRectMake(30, 0, 80, 30)];
        label.text=@"你好!,too";
        label.numberOfLines=0;
        [cell addSubview:label];
        cell.MessagePopImageView.image=[UIImage imageNamed:@"message_other"];
        cell.MessagePopImageView.frame=CGRectMake(0, 0,label.bounds.size.width+40,label.bounds.size.height);
    return cell;
    }
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
