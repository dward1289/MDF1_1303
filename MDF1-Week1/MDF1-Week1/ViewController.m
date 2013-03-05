//
//  ViewController.m
//  MDF1-Week1
//
//  Created by Devona Ward on 3/4/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    theList = [NSArray arrayWithObjects: @"Johnny Cage", @"Scorpion", @"Sub-Zero", @"Jade", @"Kitana", @"Mileena", @"Smoke", @"Kung Lao", @"Sheeva", @"Sindel", @"Stryker", @"Shinnok", @"Tanya", @"Ashrah", @"Onaga", @"Baraka", @"Noob Saibot", @"Shao Khan", @"Jax", @"Rain", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [theList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *identifier = @"identify";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = [theList objectAtIndex:indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
