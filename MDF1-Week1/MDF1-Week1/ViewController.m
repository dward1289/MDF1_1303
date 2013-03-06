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
    
    //List for TableView
    theList = [[NSArray alloc] initWithObjects: @"Johnny Cage", @"Scorpion", @"Sub-Zero", @"Jade", @"Kitana", @"Mileena", @"Smoke", @"Kung Lao", @"Sheeva", @"Sindel", @"Stryker", @"Shinnok", @"Tanya", @"Ashrah", @"Onaga", @"Baraka", @"Noob Saibot", @"Shao Khan", @"Jax", @"Rain", nil];
    
    theImage = [[NSArray alloc] initWithObjects:@"Cage.jpg", @"Scorpion.jpg", @"Zero.jpg", @"Jade.jpg",@"Kitana.jpg", @"Mileena.jpg", @"Smoke.jpg", @"Kung.jpg", @"Sheeva.jpg", @"Sindel.jpg", @"Stryker.jpg", @"Shinnok.jpg", @"Tanya.jpg", @"Ashrah.jpg", @"Onaga.jpg", @"Baraka.jpg", @"Noob.jpg", @"Shao.jpg", @"Jax.jpg", @"Rain.jpg", nil];
}

    //Counts items in the array
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [theList count];
}


    //Displays the data in the TableView
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *identifier = @"identify";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = [theList objectAtIndex:indexPath.row];
    

    cell.imageView.image = [UIImage imageNamed:[theImage objectAtIndex:indexPath.row]];

    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
