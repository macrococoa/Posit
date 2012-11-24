//
//  SHDTestMatcher.m
//  Should
//
//  Created by Ryan Davies on 23/11/2012.
//  Copyright (c) 2012 Ryan Davies. All rights reserved.
//

#import "SHDTestMatcher.h"

@implementation SHDTestMatcher

- (BOOL)successfulMethod { return YES; }
- (BOOL)successfulMethodWithNull:(id)null1 andNull:(id)null2 { return YES; }
- (BOOL)successfulMethodWithObject:(id)object1 andObject:(id)object2 { return YES; }
- (BOOL)successfulMethodWithClass:(Class)class1 andClass:(Class)class2 { return YES; }
- (BOOL)successfulMethodWithSelector:(SEL)selector1 andSelector:(SEL)selector2 { return YES; }
- (BOOL)successfulMethodWithBoolean:(bool)boolean1 andBoolean:(bool)boolean2 { return YES; }
- (BOOL)successfulMethodWithChar:(char)char1 andChar:(char)char2 { return YES; }
- (BOOL)successfulMethodWithDouble:(double)double1 andDouble:(double)double2 { return YES; }
- (BOOL)successfulMethodWithFloat:(float)float1 andFloat:(float)float2 { return YES; }
- (BOOL)successfulMethodWithInt:(int)int1 andInt:(int)int2 { return YES; }
- (BOOL)successfulMethodWithLong:(long)long1 andLong:(long)long2 { return YES; }
- (BOOL)successfulMethodWithLongLong:(long long)longLong1 andLongLong:(long long)longLong2 { return YES; }
- (BOOL)successfulMethodWithShort:(short)short1 andShort:(short)short2 { return YES; }
- (BOOL)successfulMethodWithUnsignedChar:(unsigned char)unsignedChar1 andUnsignedChar:(unsigned char)unsignedChar2 { return YES; }
- (BOOL)successfulMethodWithUnsignedInt:(unsigned int)unsignedInt1 andUnsignedInt:(unsigned int)unsignedInt2 { return YES; }
- (BOOL)successfulMethodWithUnsignedLong:(unsigned long)unsignedLong1 andUnsignedLong:(unsigned long)unsignedLong2 { return YES; }
- (BOOL)successfulMethodWithUnsignedLongLong:(unsigned long long)unsignedLongLong1 andUnsignedLongLong:(unsigned long long)unsignedLongLong2 { return YES; }
- (BOOL)successfulMethodWithUnsignedShort:(unsigned short)unsignedShort1 andUnsignedShort:(unsigned short)unsignedShort2 { return YES; }

- (BOOL)failureMethod { return NO;  }
- (BOOL)failureMethodWithNull:(id)null1 andNull:(id)null2 { return NO; }
- (BOOL)failureMethodWithObject:(id)object1 andObject:(id)object2 { return NO; }
- (BOOL)failureMethodWithClass:(Class)class1 andClass:(Class)class2 { return NO; }
- (BOOL)failureMethodWithSelector:(SEL)selector1 andSelector:(SEL)selector2 { return NO; }
- (BOOL)failureMethodWithBoolean:(bool)boolean1 andBoolean:(bool)boolean2 { return NO; }
- (BOOL)failureMethodWithChar:(char)char1 andChar:(char)char2 { return NO; }
- (BOOL)failureMethodWithDouble:(double)double1 andDouble:(double)double2 { return NO; }
- (BOOL)failureMethodWithFloat:(float)float1 andFloat:(float)float2 { return NO; }
- (BOOL)failureMethodWithInt:(int)int1 andInt:(int)int2 { return NO; }
- (BOOL)failureMethodWithLong:(long)long1 andLong:(long)long2 { return NO; }
- (BOOL)failureMethodWithLongLong:(long long)longLong1 andLongLong:(long long)longLong2 { return NO; }
- (BOOL)failureMethodWithShort:(short)short1 andShort:(short)short2 { return NO; }
- (BOOL)failureMethodWithUnsignedChar:(unsigned char)unsignedChar1 andUnsignedChar:(unsigned char)unsignedChar2 { return NO; }
- (BOOL)failureMethodWithUnsignedInt:(unsigned int)unsignedInt1 andUnsignedInt:(unsigned int)unsignedInt2 { return NO; }
- (BOOL)failureMethodWithUnsignedLong:(unsigned long)unsignedLong1 andUnsignedLong:(unsigned long)unsignedLong2 { return NO; }
- (BOOL)failureMethodWithUnsignedLongLong:(unsigned long long)unsignedLongLong1 andUnsignedLongLong:(unsigned long long)unsignedLongLong2 { return NO; }
- (BOOL)failureMethodWithUnsignedShort:(unsigned short)unsignedShort1 andUnsignedShort:(unsigned short)unsignedShort2 { return NO; }

- (NSString *)failureMessageForSelector:(SEL)selector arguments:(NSArray *)arguments
{
    if ([arguments count] > 0)
        return [NSString stringWithFormat:@"%@ failed with arguments %@.", [self subject], [arguments componentsJoinedByString:@", "]];
    else
        return [NSString stringWithFormat:@"%@ failed.", [self subject]];
}

- (NSString *)negativeFailureMessageForSelector:(SEL)selector arguments:(NSArray *)arguments
{
    if ([arguments count] > 0)
        return [NSString stringWithFormat:@"%@ succeeded with arguments %@.", [self subject], [arguments componentsJoinedByString:@", "]];
    else
        return [NSString stringWithFormat:@"%@ succeeded.", [self subject]];
}

@end
