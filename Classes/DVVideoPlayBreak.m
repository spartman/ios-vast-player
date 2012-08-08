//
//  DVVideoPlayBreak.m
//  DVVASTSample
//
//  Created by Nikolay Morev on 8/7/12.
//  Copyright (c) 2012 DENIVIP Media. All rights reserved.
//

#import "DVVideoPlayBreak.h"


@implementation DVVideoPlayBreak

@synthesize timeOffsetType = _timeOffsetType;
@synthesize timeFromStart = _timeFromStart;
@synthesize percentage = _percentage;
@synthesize position = _position;
@synthesize types = _types;
@synthesize adServingTemplateURL = _adServingTemplateURL;
@synthesize identifier = _identifier;

+ (id)playBreakBeforeStartWithAdTemplateURL:(NSURL *)adTemplateURL
{
    DVVideoPlayBreak *obj = [[[self class] alloc] init];
    if (obj) {
        obj.timeOffsetType = DVVideoPlayBreakTimeOffsetStart;
        obj.adServingTemplateURL = adTemplateURL;
    }
    return obj;
}

+ (id)playBreakAfterEndWithAdTemplateURL:(NSURL *)adTemplateURL
{
    DVVideoPlayBreak *obj = [[[self class] alloc] init];
    if (obj) {
        obj.timeOffsetType = DVVideoPlayBreakTimeOffsetEnd;
        obj.adServingTemplateURL = adTemplateURL;
    }
    return obj;
}

+ (id)playBreakAtTimeFromStart:(CMTime)timeFromStart withAdTemplateURL:(NSURL *)adTemplateURL
{
    DVVideoPlayBreak *obj = [[[self class] alloc] init];
    if (obj) {
        obj.timeOffsetType = DVVideoPlayBreakTimeOffsetFromStart;
        obj.timeFromStart = timeFromStart;
        obj.adServingTemplateURL = adTemplateURL;
    }
    return obj;
}

@end
