//
//  DataListController.m
//  WebserviceDemo
//
//  Created by iAmJavaDemon on 6/6/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import "DataListController.h"

@interface DataListController ()

@end

@implementation DataListController
@synthesize myValues;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    }

-(void)viewDidAppear:(BOOL)animated{
    myValues = [[NSMutableArray alloc]init];
    
    // change url from string
    NSURL *myURL = [NSURL URLWithString:@"http://www.prashantranjan.com/services.php"];
    //load the url
    NSURLRequest *request = [NSURLRequest requestWithURL:myURL];
    
    //invoke url
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        
        NSLog(@"RESPONSE : %@", response);
        NSLog(@"DATA : %@", data);
        NSLog(@"ERROR : %@", connectionError);
        
        NSArray *myCompleteArray = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        NSLog(@"DATA : %@", myCompleteArray);
        
        //load data in to string
        for (NSDictionary *myDict in myCompleteArray) {
            NSString *myInfo = [myDict objectForKey:@"name"];
            NSLog(@"Name : %@", myInfo);
            [myValues addObject:myInfo];
        }
        [self.tableView reloadData];
        
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [myValues count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor whiteColor];
    if(indexPath.row % 2 == 0){
        cell.backgroundColor = [UIColor blueColor];
    }
    
    // Configure the cell...
    cell.textLabel.text = myValues[indexPath.row];
    
    return cell;
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
