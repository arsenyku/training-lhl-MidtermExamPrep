//
//  MTPCat.h
//  MidtermPrepAppSep2016
//
//  Created by asu on 2016-09-22.
//  Copyright © 2016 ArsenykUstaris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MTPCat : NSObject

@property (nonatomic, strong) NSString* imageName;
@property (nonatomic, strong) NSString* name;

- (instancetype)initWithName:(NSString*)name imageName:(NSString*)imageName;

@end
