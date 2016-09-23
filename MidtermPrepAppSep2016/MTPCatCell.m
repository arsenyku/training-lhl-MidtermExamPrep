//
//  MTPCatCell.m
//  MidtermPrepAppSep2016
//
//  Created by asu on 2016-09-22.
//  Copyright © 2016 ArsenykUstaris. All rights reserved.
//

#import "MTPCatCell.h"

@interface MTPCatCell()

@property (nonatomic, strong) MTPCat *cat;

@property (weak, nonatomic) IBOutlet UIImageView *catImageView;

@end

@implementation MTPCatCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)displayData:(MTPCat *)cat
{
  self.cat = cat;
  self.catImageView.image = [UIImage imageNamed:cat.imageName];
}

@end
