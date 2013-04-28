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

SpecBegin(PSTGreaterMatcher)

__block id<PSTMatcher> matcher;

when(@"Comparing to 1", ^{
    before(^{
        matcher = [[PSTGreaterMatcher alloc] initWithNumber:@1];
    });
    
    it(@"does not match 1", ^{
        STAssertFalse([matcher matches:@1], @"");
    });
    
    it(@"does not match 0", ^{
        STAssertFalse([matcher matches:@0], @"");
    });
    
    it(@"does not match -1", ^{
        STAssertFalse([matcher matches:@(-1)], @"");
    });
});

when(@"Comparing to 0", ^{
    before(^{
        matcher = [[PSTGreaterMatcher alloc] initWithNumber:@0];
    });
    
    it(@"matches 1", ^{
        STAssertTrue([matcher matches:@1], @"");
    });
    
    it(@"does not match 0", ^{
        STAssertFalse([matcher matches:@0], @"");
    });
    
    it(@"does not match -1", ^{
        STAssertFalse([matcher matches:@(-1)], @"");
    });
});

when(@"Comparing to -1", ^{
    before(^{
        matcher = [[PSTGreaterMatcher alloc] initWithNumber:@(-1)];
    });
    
    it(@"matches 1", ^{
        STAssertTrue([matcher matches:@1], @"");
    });
    
    it(@"matches 0", ^{
        STAssertTrue([matcher matches:@0], @"");
    });
    
    it(@"does not match -1", ^{
        STAssertFalse([matcher matches:@(-1)], @"");
    });
});

SpecEnd