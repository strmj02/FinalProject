//
//  Macroinvertebrate.h
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/7/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Macroinvertebrate : NSObject<NSCoding>

@property (nonatomic) NSString *clas;
@property (nonatomic) NSString *textDescription;
@property (nonatomic) NSString *family;
@property (nonatomic) NSString *phylum;
@property (nonatomic) NSString *order;
@property (nonatomic) NSString *picture;
@property (nonatomic) NSString *commonName;
@property (nonatomic) int number;
@property (nonatomic) NSNumber *num;


@end
