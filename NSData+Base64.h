//
//  NSData+Base64.h
//  commonStat
//
//  Created by cheshimac_ren on 13-6-26.
//  Copyright (c) 2013年 ren tao. All rights reserved.
//  http://www.cocoadev.com/index.pl?BaseSixtyFour
//



@interface NSData (Base64)
+ (id)dataWithBase64EncodedString:(NSString *)string;     //  Padding '=' characters are optional. Whitespace is ignored.
- (NSString *)base64Encoding;
@end
