//
//  ViewController.m
//  Week1_MDF1
//
//  Created by Devona Ward on 3/6/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //List for TableView
    theList = [[NSMutableArray alloc] initWithObjects:
               @"Johnny Cage",
               @"Scorpion",
               @"Sub-Zero",
               @"Jade",
               @"Kitana",
               @"Mileena",
               @"Smoke",
               @"Kung Lao",
               @"Sheeva",
               @"Sindel",
               @"Stryker",
               @"Shinnok",
               @"Tanya",
               @"Ashrah",
               @"Onaga",
               @"Baraka",
               @"Noob Saibot",
               @"Shao Khan",
               @"Jax",
               @"Rain", nil];
    
    //Images
    theImage = [[NSMutableArray alloc] initWithObjects:
                @"Cage.jpg",
                @"Scorpion.jpg",
                @"Zero.jpg",
                @"Jade.jpg",
                @"Kitana.jpg",
                @"Mileena.jpg",
                @"Smoke.jpg",
                @"Kung.jpg",
                @"Sheeva.jpg",
                @"Sindel.jpg",
                @"Stryker.jpg",
                @"Shinnok.jpg",
                @"Tanya.jpg",
                @"Ashrah.jpg",
                @"Onaga.jpg",
                @"Baraka.jpg",
                @"Noob.jpg",
                @"Shao.jpg",
                @"Jax.jpg",
                @"Rain.jpg", nil];
    
    //Quotes
    sayIt = [[NSMutableArray alloc] initWithObjects:
             @"I make this look easy...",
             @"Vengeance will be mine...",
             @"This fight will be your last...",
             @"This will be easy...",
             @"You will learn respect...",
             @"Let us dance...",
             @"Where there is Smoke, there is fire...",
             @"For the Shaolin...",
             @"For the Shokan...",
             @"You are pathetic and weak...",
             @"Police brutality, coming up...",
             @"Soon I will be free. Earthrealm and Outworld will be ours...",
             @"I have been called an enforcer of the Deadly Alliance. I prefer the term ""ambassador""...",
             @"It is here that I am most powerful...",
             @"It is said that there is only one true ruler of Outworld..and that ruler had returned...",
             @"My blades will find your heart...",
             @"Fear me...",
             @"I am Shao Kahn! Konqueror of worlds! You will taste no victory...",
             @"Bring it...",
             @"I am no friend of yours. I am Rain, a prince of Edenia...", nil];
    
    //Worlds
    fromWhere = [[NSMutableArray alloc] initWithObjects:
                 @"Earthrealm",
                 @"Netherrealm",
                 @"Netherrealm",
                 @"Netherrealm",
                 @"Netherrealm",
                 @"Outworld",
                 @"Netherrealm",
                 @"Netherrealm",
                 @"Outworld",
                 @"Netherrealm",
                 @"Netherrealm",
                 @"Netherrealm",
                 @"Outworld",
                 @"Edenia",
                 @"Outworld",
                 @"Outworld",
                 @"Netherrealm",
                 @"Outworld",
                 @"Earthrealm",
                 @"Outworld", nil];
    
    //Special Moves
    specialMove = [[NSMutableArray alloc] initWithObjects:
                   @"Green Fireball: Back, Forward, Low Punch",
                   @"Spear: Back, Back, Low Punch",
                   @"Ice Freeze: Down, Forward, Low Punch",
                   @"Straight Razorang: Back, Forward, Low Punch",
                   @"Fan Lift: Back, Back, Back, High Punch",
                   @"Teleport Drop: Forward, Forward, Low Kick",
                   @"Invisibilty: Up, Up, Run",
                   @"Hat Throw: Back, Forward, Low Punch",
                   @"Death From Above: Down, Up",
                   @"Banshee Scream: Forward, Forward, Forward, High Punch",
                   @"Gun Blast: Back, Forward, High Punch",
                   @"Battle Staff: Back, Forward, Low Punch",
                   @"Fireball: Down, Forward, High Punch",
                   @"Heavenly Light: Down, Back, and Action 1",
                   @"Dragon's Fire: Down, Foward, Action 1",
                   @"Chop Chop Blades: Back, Back, Back, Low Punch",
                   @"Disabler: Down, Forward, Low Punch",
                   @"Sledge Hammer: Back, Forward, High Punch",
                   @"Energy Wave: Forward, Down, Back, High Kick",
                   @"Mind Control Orb: Down, Forward, High Punch" , nil];
    
    //Finish Moves
    finisher = [[NSMutableArray alloc] initWithObjects:
                @"Deadly Uppercut: Forward, Forward, Forward, High Punch",
                @"Toasty!: (Can hold Block or high kick) Up, Up. (Sweep)",
                @"Ice Grenade: (Hold Low Punch) Back, Back, Down, Forward, (Release Low Punch)",
                @"Staff Impale: Run, Run, Run, Block, Run. (Close)",
                @"Kiss of Death: (Hold Low Kick) Forward, Forward, Down, Forward (Release Low Kick)",
                @"Man Eater: Hold High Kick for three seconds, then release",
                @"Armageddon: Up, Up, Forward, Down",
                @"Body Slice: Forward, Forward, Forward, Low Kick",
                @"Skin Rip: (Hold High Kick) Back, Forward, Forward (Release High Kick)",
                @"Split Ends: Run, Run, Block, Block, Run and Block",
                @"Explosives: Down, Forward, Down, Forward, Block",
                @"Prison Stage Fatality: Down, Down, Forward, High Kick",
                @"Kiss of Death: Down, Down, Up, Down, Block, High Punch",
                @"Hara Kiri: Up, Down, Up, Up, Action 2",
                @"No Fatality",
                @"Blade Lift: Back, Forward, Down, Forward, Low Punch",
                @"Shadow Spin: Back, Back, Forward, Forward, High Kick, Sweep",
                @"No Fatality",
                @"Head Clap: (Hold Low Punch) Forward, Forward, Forward (Release Low Punch)",
                @"Upside Down Uppercut: Forward, Forward, Down, High Punch"  , nil];
    
    
    //Hide done button
    doneBtn.hidden = true;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

    //Count items in list
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [theList count];
}

    //Delete style
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

    //Delete Mode
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"Item Deleted");
        
        //Delete item
        [theList removeObjectAtIndex:indexPath.row];
        
        [theTable deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
    
}
    //Allow deleting
-(IBAction)onEdit:(id)sender
{
    [theTable setEditing: true];
    
    doneBtn.hidden = false;
}

    //End editing and return to normal view.
-(IBAction)onDone:(id)sender
{
    [theTable setEditing: false];
    
    doneBtn.hidden = true;
}
    //Populate list
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"identify";
    
    CustomCell *theCell = [tableView dequeueReusableCellWithIdentifier:identify];
    
    if (theCell == nil)
    {        
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        
        for (UIView *view in views)
        {
            if ([view isKindOfClass:[CustomCell class]])
            {
                theCell = (CustomCell*)view;
                theCell.textLabel.text = [theList objectAtIndex:indexPath.row];
                theCell.imageView.image = [UIImage imageNamed:[theImage objectAtIndex:indexPath.row]];
                theCell.sayLbl.text = [sayIt objectAtIndex:indexPath.row];
                theCell.worldLbl.text = [fromWhere objectAtIndex:indexPath.row];
            }
        }
    }
    
    return theCell;
}

    //Get the selected row info
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
   SecondViewController *nxtView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];

        [self presentViewController:nxtView animated:true completion:nil];

     nxtView.nameLbl.text = [theList objectAtIndex:indexPath.row];
     nxtView.fighter.image = [UIImage imageNamed:[theImage objectAtIndex:indexPath.row]];
    nxtView.specialLbl.text = [specialMove objectAtIndex:indexPath.row];
    nxtView.finishLbl.text = [finisher objectAtIndex:indexPath.row];
    
}

@end
