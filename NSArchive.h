//
//  NSArchive.h
//  commonStat
//
//  Created by cheshimac_ren on 13-6-26.
//  Copyright (c) 2013年 ren tao. All rights reserved.
//

#define DefaultArchTime 60*5
typedef enum {
    Caches = 0,
    Documents = 1,
    Temporary = 2
}FileLoaction;

@class Archiver;
@interface NSArchive : NSObject{
    FileLoaction floction;
}
@property(nonatomic,assign)FileLoaction floction;

- (id)initWithLoaction:(FileLoaction)loc;
- (NSString *)filePathWithArchiver;
- (void)archiveData:(id)data toFile:(NSString *)fname;
- (id)fetchFileToData:(NSString *)fname withTime:(long)dataTime withNet:(BOOL)bnet;
@end

@interface Archiver : NSObject<NSCoding>{
    id archData;
    NSDate *archTime;
}
@property(nonatomic,strong)id archData;
@property(nonatomic,strong)NSDate *archTime;

- (BOOL)shouldBeExpire;
- (BOOL)shouldBeExpire:(long)dataTime;

@end