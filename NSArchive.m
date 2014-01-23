//
//  NSArchive.m
//  commonStat
//
//  Created by cheshimac_ren on 13-6-26.
//  Copyright (c) 2013年 ren tao. All rights reserved.
//

#import "NSArchive.h"

@implementation NSArchive
@synthesize floction;
- (id)initWithLoaction:(FileLoaction)loc{
    self = [super init];
    if (self) {
        self.floction = loc;
    }
    return self;
}

- (NSString *)filePathWithArchiver{
    NSFileManager *fm = [NSFileManager defaultManager];
    NSString *dataForderPath;
    switch (floction) {
        case Documents:
            dataForderPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/Archive"];
            break;
        case Temporary:
            dataForderPath = [NSHomeDirectory() stringByAppendingPathComponent:@"temp/Archive"];
            break;
        default:
            dataForderPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Library/Caches/Archive"];
            break;
    }
    BOOL fileExists = [fm fileExistsAtPath:dataForderPath];
    if (!fileExists) {
        [fm createDirectoryAtPath:dataForderPath withIntermediateDirectories:YES attributes:nil error:nil];
    }
    return dataForderPath;
}

- (void)archiveData:(id)data toFile:(NSString *)fname{
    NSString *path = [NSString stringWithFormat:@"%@/%@.archive", [self filePathWithArchiver],fname];
    Archiver *arch = [[Archiver alloc] init];
    [arch setArchData:data];
    [arch setArchTime:[NSDate date]];
    BOOL bArch = [NSKeyedArchiver archiveRootObject:arch toFile:path];
    if (!bArch) {
        NSFileManager *fm = [NSFileManager defaultManager];
        [fm removeItemAtPath:path error:nil];
    }
}

- (id)fetchFileToData:(NSString *)fname withTime:(long)dataTime withNet:(BOOL)bnet{
    NSString *path = [NSString stringWithFormat:@"%@/%@.archive",[self filePathWithArchiver],fname];
    Archiver *arch = (Archiver *)[NSKeyedUnarchiver unarchiveObjectWithFile:path];
    if (arch) {
        if ([arch shouldBeExpire:dataTime]) {
            if (bnet) { //有网络
                arch = nil;
            }else{
            
            }
        }else{
        
        }
    }else{
        arch = nil;
    }
    if (!arch) {
        NSFileManager *fm = [NSFileManager defaultManager];
        [fm removeItemAtPath:path error:nil];
    }
    return arch;
}

@end

#pragma mark Archiver implementation
@implementation Archiver
@synthesize archData,archTime;
 
- (BOOL)shouldBeExpire{
    return [self shouldBeExpire:DefaultArchTime];
}

- (BOOL)shouldBeExpire:(long)dataTime{
    double stime = [[NSDate date] timeIntervalSinceDate:self.archTime]/dataTime;
    return (stime>=1.0)?YES:NO;
}

#pragma mark NSCoding
- (id)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super init]) {
        self.archTime = [aDecoder decodeObjectForKey:@"archTime"];
		self.archData = [aDecoder decodeObjectForKey:@"archData"];
	}
	return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.archTime forKey:@"archTime"];
    [aCoder encodeObject:self.archData forKey:@"archData"];
}


@end
