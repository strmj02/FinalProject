//
//  StreamPre.h
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/28/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StreamPre : NSObject<NSCoding>

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *location;

-(id)initWithCoder:(NSCoder *)aDecoder;
-(NSString *)streamArchivePath;
-(BOOL)saveChanges;
@end
