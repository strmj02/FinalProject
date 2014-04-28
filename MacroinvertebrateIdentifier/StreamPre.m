//
//  StreamPre.m
//  MacroinvertebrateIdentifier
//
//  Created by Rachel Johnson on 4/28/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import "StreamPre.h"

@implementation StreamPre

@synthesize name, location;


-(id)initWithCoder:(NSCoder *)aDecoder{
    self= [super init];
    if (self){
        [self setLocation:[aDecoder decodeObjectForKey:@"location"]];
        [self setName:[aDecoder decodeObjectForKey:@"name"]];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:name forKey:@"name"];
    [aCoder encodeObject:location forKey:@"location"];
}

-(NSString *)streamArchivePath{
    NSArray *documents =NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *document = [documents objectAtIndex:0];
    return [document stringByAppendingPathComponent:@"stream.archive"];
}

-(BOOL)saveChanges{
    NSString *path  = [self streamArchivePath];
    [NSKeyedArchiver archiveRootObject:location toFile:path];
    return [NSKeyedArchiver archiveRootObject:name toFile:path];
    
}

@end
