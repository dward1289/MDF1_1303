//
//  ViewController.m
//  W4
//
//  Created by Devona Ward on 3/26/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "ViewController.h"
#import "TweetStat.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    statusPlay = [[NSMutableArray alloc] init];
    
    //Loading file in to NSData
    NSData *xmlData = [self GetFileDataFromFile:@"index.xml"];
    
    NSXMLParser *parser = [[NSXMLParser alloc] initWithData:xmlData];
    if (parser != nil)
    {
        [parser setDelegate:self];
        [parser parse];
    }
    
    //Create URL
    url = [[NSURL alloc] initWithString:@"https://api.twitter.com/1/statuses/user_timeline.xml?include_entities=true&include_rts=true&screen_name=PlayStation&count=10"];
    
    request = [[NSURLRequest alloc] initWithURL:url];
    if (request != nil)
    {
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
        //Creates mutable data object
        requestData = [NSMutableData data];
    }
    

    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    //Checking for valid data
    if (data != nil)
    {
        //add data to requestData
        [requestData appendData:data];
    }
}

//Called after all data is in request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString *requestStrng = [[NSString alloc] initWithData:requestData encoding:NSASCIIStringEncoding];
    
    if (requestStrng != nil)
    {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        
        NSString *documentsDirectory = [paths objectAtIndex:0];
        if (documentsDirectory != nil)
        {
            NSString *fullPath = [[NSString alloc] initWithFormat:@"%@/%@", documentsDirectory, @"index.xml"];
            
            if (fullPath != nil)
            {
                [requestData writeToFile:fullPath atomically:true];
            }
        }
        NSLog(@"%@", requestStrng);
    }
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
    if ([elementName isEqualToString:@"statuses"]) {
        NSLog(@"Moving along");
    }
    else if([elementName isEqualToString:@"status"])
    {
        NSString *theTime = [attributeDict valueForKey:@"value"];
        NSString *theWords = [attributeDict valueForKey:@"text"];
        NSString *theDescription = [attributeDict valueForKey:@"description"];
        
        TweetStat *item = [[TweetStat alloc] initWithName:theTime statTxt:theWords theDescr:theDescription];
        if (item !=nil) {
            [statusPlay addObject:item];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
