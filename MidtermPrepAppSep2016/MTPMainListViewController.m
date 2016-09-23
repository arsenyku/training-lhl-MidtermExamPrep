//
//  ViewController.m
//  MidtermPrepAppSep2016
//
//  Created by asu on 2016-09-22.
//  Copyright © 2016 ArsenykUstaris. All rights reserved.
//

#import "MTPMainListViewController.h"
#import "MTPCatCell.h"
#import "MTPCat.h"
#import "MTPDetailViewController.h"

@interface MTPMainListViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic) NSArray<MTPCat*> *cats;
@end

@implementation MTPMainListViewController


- (void)viewDidLoad {
  [super viewDidLoad];

  self.cats = @[ [[MTPCat alloc] initWithName:@"Hilary" imageName:@"cat1" ],
                 [[MTPCat alloc] initWithName:@"Donald" imageName:@"cat2" ],
                 [[MTPCat alloc] initWithName:@"Ted" imageName:@"cat3" ],
                 [[MTPCat alloc] initWithName:@"Bernie" imageName:@"cat4" ],
                ];
  
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return 4;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  MTPCatCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MTPCatCell"];
 
  if (!cell)
    cell = [[MTPCatCell alloc] init];
  
  [cell displayData:self.cats[indexPath.row] ];
  
  return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.cats[indexPath.row].imageName]].frame.size.height;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
  if ([segue.identifier isEqualToString:@"MTPShowCatDetail"])
  {
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    MTPDetailViewController *detailVC = (MTPDetailViewController*)segue.destinationViewController;
    [detailVC showCat:self.cats[selectedIndexPath.row]];
  }
  
  
}

@end
