//
//  Macroinvertebrate.m
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/7/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import "Macroinvertebrate.h"

@implementation Macroinvertebrate

@synthesize clas, order, phylum, family, commonName, picture, textDescription, number;

-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:clas forKey:@"clas"];
    [aCoder encodeObject:order forKey:@"order"];
    [aCoder encodeObject:phylum forKey:@"phylum"];
    [aCoder encodeObject:family forKey:@"family"];
    [aCoder encodeObject:commonName forKey:@"commonName"];
    [aCoder encodeObject:picture forKey:@"picture"];
    [aCoder encodeInt:number forKey:@"number"];
    
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    if(self){
        [self setNumber:[aDecoder decodeIntForKey:@"number"]];
        [self setPicture:[aDecoder decodeObjectForKey:@"picture"]];
        [self setCommonName:[aDecoder decodeObjectForKey:@"commonName"]];
        [self setFamily:[aDecoder decodeObjectForKey:@"family"]];
        [self setPhylum:[aDecoder decodeObjectForKey:@"phylum"]];
        [self setOrder:[aDecoder decodeObjectForKey:@"order"]];
        [self setClas:[aDecoder decodeObjectForKey:@"clas"]];
    }
    return self;
}

@end
