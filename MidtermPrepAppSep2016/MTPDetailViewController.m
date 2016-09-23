//
//  MTPDetailViewController.m
//  MidtermPrepAppSep2016
//
//  Created by asu on 2016-09-22.
//  Copyright © 2016 ArsenykUstaris. All rights reserved.
//

#import "MTPDetailViewController.h"

@interface MTPDetailViewController ()
@property (nonatomic, strong) MTPCat *cat;
@property (weak, nonatomic) IBOutlet UIImageView *catImageView;
@end

@implementation MTPDetailViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  if (self.cat)
    self.catImageView.image = [UIImage imageNamed:self.cat.imageName];
}

-(void)showCat:(MTPCat *)cat
{
  self.cat = cat;
}

@end
