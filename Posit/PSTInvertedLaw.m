// The MIT License
//
// Copyright (c) 2013 Ryan Davies
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "PSTInvertedLaw.h"

@interface PSTInvertedLaw ()
@property (strong, nonatomic) id<PSTLaw> law;
@end

@implementation PSTInvertedLaw

- (id)initWithLaw:(id<PSTLaw>)law
{
    if (self = [self init]) {
        self.law = law;
    }
    return self;
}

- (BOOL)isBrokenBySubject:(id)subject
{
    return ![[self law] isBrokenBySubject:subject];
}

- (NSString *)explanationForSubject:(id)subject
{
    NSString *explanation = [[self law] explanationForSubject:subject];
    NSString *preface = [NSString stringWithFormat:@"Expected '%@' to", subject];
    NSString *invertedPreface = [NSString stringWithFormat:@"Expected '%@' not to", subject];
    return [explanation stringByReplacingOccurrencesOfString:preface withString:invertedPreface];
}

@end