//
//  MyToDoList.m
//  ToDo List Challenge
//
//  Created by MBPinTheAir on 09/04/2016.
//  Copyright © 2016 moorsideinc. All rights reserved.
//

#import "MyToDoList.h"

@interface MyToDoList ()
@property (nonatomic, strong) NSMutableArray *myList;
@property (nonatomic, strong) NSMutableArray *checkMarks;
//- (IBAction) deleteCell:(id)sender;
@end

@implementation MyToDoList

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myList = [@[@"sleep over with dre", @"fandango nite club with david", @"daryl's birthday party"]mutableCopy];
    
    self.navigationItem.title = @"My To do List";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addToList:)];


//    UIBarButtonItem *editButton = [[UIBarButtonItem alloc]initWithTitle:@"Delete" style:UIBarButtonItemStylePlain target:self action:@selector(deleteCell:)];
  _checkMarks = [[NSMutableArray alloc] initWithCapacity:0];
    for (int x = 0; x < [_myList count]; x++) {
        [_checkMarks addObject:[NSNumber numberWithBool:NO]];
    }
  
}

-(IBAction)addToList:(id)sender{
    
    UIAlertController *myAlert = [UIAlertController alertControllerWithTitle:@"New To Do Entry" message:@"Please enter your to do item" preferredStyle:UIAlertControllerStyleAlert];
   
    UIAlertAction *saveTodo = [UIAlertAction actionWithTitle:@"Save Item" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        UITextField *newTodoItem = myAlert.textFields[0];
        NSString *todoName = newTodoItem.text;
        NSLog(@"got here");
        NSMutableArray *myNewList = [[NSMutableArray alloc] initWithObjects:todoName, nil];
        NSLog(@"got here2");
        [self.myList addObjectsFromArray:myNewList];
        NSLog(@"got here3");
        
        // [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:self.myList.count -1 inSection:0]] withRowAnimation:UITableViewRowAnimationAutomatic];   //reload data instead
        NSLog(@"my newlist %@ hhhhhhhhhhhhhhhhh", myNewList);
        NSLog(@"my newlist after input %@", _myList);
        
        [self.tableView reloadData];
        

    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){
        
    }];
    [myAlert addAction:saveTodo];
    [myAlert addAction:cancel];
    [myAlert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"I want to...";
    }];
    
    [self presentViewController:myAlert animated:YES completion:nil];
    
}


//-(void)addToList:(UIBarButtonItem *)sender{
//    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"New to do entry" message:@"Please enter your to do item" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Add Item", nil];
//    alertView.alertViewStyle = UIAlertViewStylePlainTextInput;
//    [alertView show];
//}


//- (IBAction) deleteCell:(id)sender{
//    
//    [self.tableView setEditing:!self.tableView.editing animated:YES];
//    if (self.tableView.editing)
//        [self.navigationItem.rightBarButtonItem setTitle:@"Done"];
//    else
//        [self.navigationItem.rightBarButtonItem setTitle:@"Delete"];
//}

//-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    if ([[_checkMarks objectAtIndex:indexPath.row]boolValue]) {
//        UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
//        newCell.accessoryType = UITableViewCellAccessoryNone;
//    }else{
//        UITableViewCell *newCell = [tableView cellForRowAtIndexPath:indexPath];
//        newCell.accessoryType = UITableViewCellAccessoryCheckmark;
//    }
//    bool currentBool = [[_checkMarks objectAtIndex:indexPath.row] boolValue];
//    _checkMarks[indexPath.row] = [NSNumber numberWithBool:!currentBool];
//}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"%lu",(unsigned long)[self.myList count]);
    //NSLog(@"check marks %lu",(unsigned long)[self.checkMarks count]);
    return [self.myList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   //NSLog(@"%@", self.myList);
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"toDoCell" forIndexPath:indexPath];

    cell.textLabel.text = self.myList[indexPath.row];
    
//    if ([[_checkMarks objectAtIndex:indexPath.row] boolValue]) {
//        cell.accessoryType = UITableViewCellAccessoryCheckmark;
//    }
//    else{
//        cell.accessoryType = UITableViewCellAccessoryNone;
//    }
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.myList removeObjectAtIndex:indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


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
