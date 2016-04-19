//
//  ViewController.m
//  TableWithPlistChallenge
//
//  Created by MBPinTheAir on 24/03/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import "ViewController.h"
#import "Chars.h"

@interface ViewController ()
@property (strong, nonatomic) NSDictionary *showsCharacters;
@property (strong, nonatomic) NSArray *shows;
@property (strong, nonatomic) NSArray *characters;

@end

@implementation ViewController


- (void)viewDidLoad {
    
    [super viewDidLoad];
    NSBundle *myBundle = [NSBundle mainBundle];
    NSString *plistPath = [myBundle pathForResource:@"shows-characters" ofType:@"plist"];
 
    self.showsCharacters = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
       NSLog(@"%@",self.showsCharacters);
    
    NSArray *allKeys = [self.showsCharacters allKeys];
    NSArray *sortedKeys = [allKeys sortedArrayUsingSelector:@selector(compare:)];
    self.shows = sortedKeys;
    
    NSString *selectedShow = self.shows[0];
    self.characters = [self.showsCharacters objectForKey:selectedShow];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.shows count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"plainCell" forIndexPath:indexPath];

    cell.textLabel.text = [self.shows objectAtIndex:indexPath.row];
    return cell;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    Chars *destination = segue.destinationViewController;
   
    UITableViewCell * cell = (UITableViewCell *) sender;
    NSString *key = cell.textLabel.text;
    destination.characters = _showsCharacters[key];
    
   // NSLog(@"%@",_showsCharacters[key]);
}

@end
