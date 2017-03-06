//
//  FontsTableViewController.m
//  FontsCollection
//
//  Created by maqj on 17/3/6.
//  Copyright © 2017年 micro-robot. All rights reserved.
//

#import "FontsTableViewController.h"

@interface FontsTableViewController ()

@end

@implementation FontsTableViewController{
    NSMutableDictionary *_families;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
     self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

    _families = [NSMutableDictionary dictionary];
    
    NSArray *families = [UIFont familyNames];
    
    NSLog(@"Family %lu", (unsigned long)families.count);
    
    for(NSString *fontfamilyname in families)
    {
        NSArray *fonts = [UIFont fontNamesForFamilyName:fontfamilyname];
        
        _families[fontfamilyname] = fonts;
        
        NSLog(@"family:'%@', count:%ld",fontfamilyname, fonts.count);
        
        for(NSString *fontName in fonts)
        {
            NSLog(@"\tfont:'%@'",fontName);
        }
        NSLog(@"-------------");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *key = _families.allKeys[section];
    return key;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _families.allKeys.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSString *key = _families.allKeys[section];
    return ((NSArray*)_families[key]).count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"fontCell" forIndexPath:indexPath];
    NSString *key = _families.allKeys[indexPath.section];
    ;
    cell.textLabel.text = ((NSArray*)_families[key])[indexPath.row];
    [cell.textLabel setFont:[UIFont fontWithName:cell.textLabel.text size:15.f]];
    
    return cell;
}

@end
