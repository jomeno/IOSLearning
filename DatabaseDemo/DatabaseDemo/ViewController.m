//
//  ViewController.m
//  DatabaseDemo
//
//  Created by iAmJavaDemon on 6/5/15.
//  Copyright (c) 2015 freesia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSFileManager *fileManager;
}

@synthesize databasePath;
@synthesize conctDB;
@synthesize myInput;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // get path for document directory
    NSArray *dirpaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *documentPath = dirpaths[0];
    NSLog(@"Document Path : %@", documentPath);
    
    // append the path according to database name
    databasePath = [documentPath stringByAppendingPathComponent:@"contactsDB.db"];
    NSLog(@"New path, %@", databasePath);
    //open path using NSFileManager
    fileManager = [NSFileManager defaultManager];
    
    if([fileManager fileExistsAtPath:databasePath] == NO){
        NSLog(@"File Not found");
        NSString *createTable = @"CREATE TABLE IF NOT EXISTS MYTABLE(ID INTEGER PRIMARY KEY AUTOINCREMENT, NAME TEXT)";
        //convert string into char
        const char *dbPath = [databasePath UTF8String];
        const char *creat_tabl = [createTable UTF8String];
        char *errmsg;
        
        if(sqlite3_open(dbPath, &conctDB) == SQLITE_OK){
            //creating table
            if(sqlite3_exec(conctDB, creat_tabl, NULL, NULL, &errmsg) == SQLITE_OK){
                NSLog(@"Table created");
            }else{
                NSLog(@"Table not created");
                NSAssert(0, @"Error of Database %s", errmsg);
            }
            
        
        }else{
            NSLog(@"Table already created");
        }
        
        
        
    }else{
        NSLog(@"File Found");
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveData:(UIButton *)sender {
    
    //take statement for insert query
    sqlite3_stmt *statement;
    
    NSString *insert_query = [NSString stringWithFormat:@"insert into MYTABLE(NAME) values(\"%@\")", myInput.text];
    
    const char *dbPath = [databasePath UTF8String];
    
    if ([fileManager fileExistsAtPath:databasePath] == YES) {
        if (sqlite3_open(dbPath, &conctDB) == SQLITE_OK) {
            const char *inst_query = [insert_query UTF8String];
            sqlite3_prepare_v2(conctDB, inst_query, -1, &statement, NULL);
            // execute the statement
            if (sqlite3_step(statement) == SQLITE_DONE) {
                NSLog(@"Record Inserted");
            }else{
                NSLog(@"Record not inserted");
            
            }            
            
        }else{
            NSLog(@"Database not found");
        }
    }
}

- (IBAction)viewData:(UIButton *)sender {
    //take statement for insert query
    sqlite3_stmt *statement;
    
    NSString *insert_query = [NSString stringWithFormat:@"select * from mytable"];
    
    const char *dbPath = [databasePath UTF8String];
    
    if ([fileManager fileExistsAtPath:databasePath] == YES) {
        if (sqlite3_open(dbPath, &conctDB) == SQLITE_OK) {
            const char *inst_query = [insert_query UTF8String];
            sqlite3_prepare_v2(conctDB, inst_query, -1, &statement, NULL);
            // execute the statement
            while (sqlite3_step(statement) == SQLITE_ROW) {
                NSString *myData = [NSString stringWithUTF8String:(const char *) sqlite3_column_text(statement, 1)];
                
                NSLog(@"My Data %@", myData);
            }
            
        }else{
            NSLog(@"Database not found");
        }
    }

}
@end
