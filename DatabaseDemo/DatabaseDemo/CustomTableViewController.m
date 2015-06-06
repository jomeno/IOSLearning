//
//  CustomTableViewController.m
//  DatabaseDemo
//
//  Created by iAmJavaDemon on 6/5/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import "CustomTableViewController.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController{
    NSFileManager *fileManager;
}
@synthesize databasePath;
@synthesize conctDB;
@synthesize myValues;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    // initialize myValues
    myValues = [[NSMutableArray alloc]init];
    
    // get path for document directory
    NSArray *dirpaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *documentPath = dirpaths[0];
    NSLog(@"Document Path : %@", documentPath);
    
    // append the path according to database name
    databasePath = [documentPath stringByAppendingPathComponent:@"contactsDB.db"];
    NSLog(@"New path, %@", databasePath);
    //open path using NSFileManager
    fileManager = [NSFileManager defaultManager];
    
    //take statement for insert query
    sqlite3_stmt *statement;
    
    NSString *insert_query = [NSString stringWithFormat:@"select * from mytable"];
    
    const char *dbPath = [databasePath UTF8String];
    NSLog(@"Database path %@", databasePath);
    
    if([fileManager fileExistsAtPath:databasePath] == YES) {
        if (sqlite3_open(dbPath, &conctDB) == SQLITE_OK) {
            const char *inst_query = [insert_query UTF8String];
            sqlite3_prepare_v2(conctDB, inst_query, -1, &statement, NULL);
            // execute the statement
            while (sqlite3_step(statement) == SQLITE_ROW) {
                NSString *myData = [NSString stringWithUTF8String:(const char *)
                                    sqlite3_column_text(statement, 1)];
                [myValues addObject:myData];
                const char *x = [myData UTF8String];
                printf("%s", x);
            }
            
        }else{
            NSLog(@"Database not found");
        }
    }
    
}

-(void)viewDidAppear:(BOOL)animated{
    // initialize myValues
    myValues = [[NSMutableArray alloc]init];
    
    // get path for document directory
    NSArray *dirpaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *documentPath = dirpaths[0];
    NSLog(@"Document Path : %@", documentPath);
    
    // append the path according to database name
    databasePath = [documentPath stringByAppendingPathComponent:@"contactsDB.db"];
    NSLog(@"New path, %@", databasePath);
    //open path using NSFileManager
    fileManager = [NSFileManager defaultManager];
    
    //take statement for insert query
    sqlite3_stmt *statement;
    
    NSString *insert_query = [NSString stringWithFormat:@"select * from mytable"];
    
    const char *dbPath = [databasePath UTF8String];
    NSLog(@"Database path %@", databasePath);
    
    if([fileManager fileExistsAtPath:databasePath] == YES) {
        if (sqlite3_open(dbPath, &conctDB) == SQLITE_OK) {
            const char *inst_query = [insert_query UTF8String];
            sqlite3_prepare_v2(conctDB, inst_query, -1, &statement, NULL);
            // execute the statement
            while (sqlite3_step(statement) == SQLITE_ROW) {
                NSString *myData = [NSString stringWithUTF8String:(const char *)
                                    sqlite3_column_text(statement, 1)];
                [myValues addObject:myData];
                const char *x = [myData UTF8String];
                printf("%s", x);
            }
            
        }else{
            NSLog(@"Database not found");
        }
    }

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
