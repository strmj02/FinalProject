//
//  Stream.m
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/27/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import "Stream.h"

@implementation Stream

@synthesize allMacros, name, shannonIndex, location, macroNumbers;


+(Stream *)sharedStream{
    static Stream *sharedStream = nil;
    if(!sharedStream){
        sharedStream = [[super allocWithZone:nil]init];
    }
    return sharedStream;
}

+(id)allocWithZone:(NSZone *)zone{
    return [self sharedStream];
}

-(id)init{
    
    self = [super init];
    if(self) {
        allMacros = [[NSMutableArray alloc]init];
        NSString *path = [self macroArchivePath];
        allMacros = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
        if(!allMacros){
            allMacros = [[NSMutableArray alloc]init];
        }
    }
    return self;
}


-(NSString *)macroArchivePath{
    NSArray *documents =NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *document = [documents objectAtIndex:0];
    return [document stringByAppendingPathComponent:@"macros.archive"];
}

-(BOOL)saveChanges{
    NSString *path = [self macroArchivePath];
    return [NSKeyedArchiver archiveRootObject:allMacros toFile:path];
}

@end
