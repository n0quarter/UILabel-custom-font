//
//  UILabel+font.m
//  chess
//
//  Created by Viktor Shcherban on 8/27/13.
//  Copyright (c) 2013 asdCode. All rights reserved.
//

#import "UILabel+font.h"

#define BoldFontName  @"NeuronHeavy"
#define PlainFontName @"Neuron"


@implementation UILabel (myCustomFont)

- (void)awakeFromNib {
    [super awakeFromNib];
    
    if ([self.font.fontName rangeOfString:@"bold"].length > 0 || [self.font.fontName rangeOfString:@"Bold"].length > 0)
        [self setFont:[UIFont fontWithName:BoldFontName size:self.font.pointSize]];
    else
        [self setFont:[UIFont fontWithName:PlainFontName size:self.font.pointSize]];
    
}

-(id)initWithFrame:(CGRect)frame {
    id result = [super initWithFrame:frame];
    if (result) {
        if ([self.font.fontName rangeOfString:@"bold"].length > 0 || [self.font.fontName rangeOfString:@"Bold"].length > 0)
            [self setFont:[UIFont fontWithName:BoldFontName size:self.font.pointSize]];
        else
            [self setFont:[UIFont fontWithName:PlainFontName size:self.font.pointSize]];
    }
    return result;
}

@end
