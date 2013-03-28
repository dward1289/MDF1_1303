//
//  ViewController.m
//  Week4
//
//  Created by Devona Ward on 3/28/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "ViewController.h"
#import "StatusViewController.h"
#import "AboutViewController.h"
#import "WebViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    numStat = 0;
    
    stats = [[NSMutableArray alloc] init];
    statsTime = [[NSMutableArray alloc] init];
    
    
    NSData *xmlData = [self GetFileDataFromFile:@"PSTweets.xml"];
    
    NSXMLParser *parser = [[NSXMLParser alloc] initWithData:xmlData];
    if (parser !=nil)
    {
        [parser setDelegate:self];
        [parser parse];
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(NSData*)GetFileDataFromFile:(NSString*)filename
{
    NSString *filePath = nil;
    
    //create file manager
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    //get path of saved document
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    
    //create full path to saved file
    filePath = [documentDirectory stringByAppendingPathComponent:filename];
    
    //do path exist?
    if ([fileManager fileExistsAtPath:filePath])
    {
        //return NSData for file
        return [NSData dataWithContentsOfFile:filePath];
    }
    
    return nil;
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    if ([elementName isEqualToString:@"PlayStation"]) {
        NSString * numStatStr = [attributeDict valueForKey:@"tweets"];
        
        if (numStatStr != nil)
        {
            numStat = [numStatStr intValue];
        }
    }
    
    //Is this a tweet?
    else if ([elementName isEqualToString:@"Tweet"])
    {
        timeMade = [attributeDict valueForKey:@"Created"];
        statusMade = [attributeDict valueForKey:@"Status"];
        
        [stats addObject:timeMade];
        [statsTime addObject: statusMade];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [stats count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }    
    
    cell.textLabel.text = [stats objectAtIndex:indexPath.row];
    return cell;
}

//Get the selected row info
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    StatusViewController *statusView = [[StatusViewController alloc] initWithNibName:@"StatusViewController" bundle:nil];
    
    [self presentViewController:statusView animated:true completion:nil];
    
    statusView.txtView.text = [statsTime objectAtIndex:indexPath.row];

    
}

-(IBAction)onAbout:(id)sender
{
 
    AboutViewController *aboutView = [[AboutViewController alloc] initWithNibName:@"AboutViewController" bundle:nil];
    
    [self presentViewController:aboutView animated:true completion:nil];
    
}

-(IBAction)onWeb:(id)sender
{
    
    WebViewController *webView = [[WebViewController alloc] initWithNibName:@"WebViewController" bundle:nil];
    
    [self presentViewController:webView animated:true completion:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
