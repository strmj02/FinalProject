//
//  Stream.h
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/27/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stream : NSObject

@property (nonatomic) NSMutableArray *allMacros;
@property (nonatomic) NSMutableArray *macroNumbers;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *location;
@property (nonatomic) double shannonIndex;
@property (nonatomic) Stream *sharedStream;

+(Stream *)sharedStream;

-(BOOL)saveChanges;
-(NSString *)macroArchivePath;
//+(BOOL)saveChangesStream;
@end
