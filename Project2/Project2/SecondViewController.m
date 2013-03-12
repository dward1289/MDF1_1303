//
//  SecondViewController.m
//  Project2
//
//  Created by Devona Ward on 3/11/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "SecondViewController.h"
#import "InfoViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Articles", @"Articles");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    listArticle = [[NSArray alloc] initWithObjects:
                   @"Human Again?!",
                   @"Combat Design",
                   @"Ascension Review", nil];
    
    listImg = [[NSArray alloc] initWithObjects:
               @"human.jpg",
               @"Combat.jpg",
               @"Review.jpg", nil];
    
    theStory = [[NSArray alloc] initWithObjects:
                @"Obviously, the God of War series is very violent. Is it part of the game design? Is it actually integral to the way the game plays, and the way the players interact with it?   Mark Simon: I think it's integral to the game. And the reason why I think it's integral to the game is... I'm very simple-minded, but in terms of Kratos as a person, and who he is, one of the things I've learned early on at the studio is that Kratos is visceral, and he is brutal, and that's how he interacts with everything, and that's part of what makes him alpha.If he didn't interact in that way, it wouldn't feel like him as a character. So, essentially, you take him out of character, by having him not interact with things in that fashion. So, as far as his interaction with the rest of the design I feel that it is integral to him.",
                @"When you are designing combat for the series, it means you have a balance between making technical, deep gameplay that people play and uncover and strategize, and gameplay for people who just want to wail on something with a big chain.   JM: It's always a tough point that we think about every game, because God of War is very popular. I'm not going to lie; we do get knocked occasionally for being a little too accessible, a little too easy and straightforward. We want to make sure that most of the fans get the experience, no matter what. Our game is not designed to be one that is going to make you cry, beat you over the head, and be like ""You die. Back to the start.",
                @"At a time of increasing complexity in interactive storytelling and a broadening of the kind of experiences we expect games to deliver, God Of War - and it's truck-throated protagonist in particular - are like an old-fashioned punch to the windpipe. Kratos the furious demi-god, a man defined by violence and psychologically jammed in that moment of aggressive self-belief right before a post-pub headbutt, is a wilfully unpleasant protagonist indistinguishable, dramatically speaking, from controlling a tightly balled fist through ancient Greece. It goes without saying that it's great to have him back. God Of War: Ascension is a prequel, hardly surprising if you consider that by the end of the God Of War III Kratos had skewered the gods of Olympus in turn like a rack of mythic barbeque ribs.Who will he kill now, was the obvious question, the answer now revealed to be the past. Ascension, then, takes place during Kratos' service to the god of war, Ares, which is more or less irrelevant except it means that Kratos already has his defining chain weapon, the Blades of Chaos.", nil];
    
    storyImg = [[NSArray alloc] initWithObjects:@"eyes.jpg", @"Fight.jpg", @"PS3.jpg", nil];
    
    storyLink = [[NSArray alloc] initWithObjects:
                 @"http://www.gamasutra.com/view/feature/178962/making_kratos_more_human.php",
                 @"http://www.gamasutra.com/view/feature/171970/the_secrets_of_brutality_god_of_.php?page=2",
                 @"www.lexisnexis.com/hottopics/lnacademic", nil];
}

//Count items in list
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [listArticle count];
}

//Populate list
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [listArticle objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[listImg objectAtIndex:indexPath.row]];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Get the selected row info
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    InfoViewController *infoView = [[InfoViewController alloc] initWithNibName:@"InfoViewController" bundle:nil];
    
    [self presentViewController:infoView animated:true completion:nil];
    
    infoView.articleTitle.text = [listArticle objectAtIndex:indexPath.row];
    infoView.articleImg.image = [UIImage imageNamed:[storyImg objectAtIndex:indexPath.row]];
    infoView.txtView.text = [theStory objectAtIndex:indexPath.row];
    infoView.articleLink.text = [storyLink objectAtIndex:indexPath.row];
    
    
}

@end
