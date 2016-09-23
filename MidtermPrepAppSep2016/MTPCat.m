//
//  MTPCat.m
//  MidtermPrepAppSep2016
//
//  Created by asu on 2016-09-22.
//  Copyright © 2016 ArsenykUstaris. All rights reserved.
//

#import "MTPCat.h"

@implementation MTPCat

- (instancetype)initWithName:(NSString*)name imageName:(NSString*)imageName
{
  if (self = [super init])
  {
    _name = name;
    _imageName = imageName;
  }
  
  return self;
}

@end
