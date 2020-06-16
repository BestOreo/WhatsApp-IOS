//
//  HighlightButtonView.m
//  WhatsApp-IOS
//
//  Created by 葛帅琦 on 6/16/20.
//  Copyright © 2020 Shuaiqi Ge. All rights reserved.
//

#import "HighlightButtonView.h"
#import "UIHighlightButton.h"

@implementation HighlightButtonView

- (void) hello {
    NSLog(@"hello");
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"HighlightButtonView");
        [self setBackgroundColor:[UIColor colorWithRed:6/255.0 green:95/255.0 blue:84/255.0 alpha:1.0]];
        
        _labelButton = [[UIHighlightButton alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        [_labelButton setCenter:self.center];
        [_labelButton setTranslatesAutoresizingMaskIntoConstraints: NO];
        [_labelButton setTitle:@"" forState:UIControlStateNormal];
        [_labelButton setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
        [_labelButton.titleLabel setFont: [UIFont boldSystemFontOfSize:16]];
        
        [_labelButton addTarget:self action:@selector(hello) forControlEvents:UIControlEventTouchUpInside];
        
        _highlightLine = UIView.new;
        [_highlightLine setTranslatesAutoresizingMaskIntoConstraints: NO];
        [_highlightLine setBackgroundColor: UIColor.whiteColor];
        
        
        [self addSubview: _labelButton];
        [self addSubview: _highlightLine];
            
        [self addConstraint: [NSLayoutConstraint constraintWithItem:_labelButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:1 constant:0]];
        [self addConstraint: [NSLayoutConstraint constraintWithItem:_labelButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeHeight multiplier:1 constant:-2]];
        [self addConstraint: [NSLayoutConstraint constraintWithItem:_labelButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
        [self addConstraint: [NSLayoutConstraint constraintWithItem:_labelButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1 constant:0]];
        
        [self addConstraint: [NSLayoutConstraint constraintWithItem:_highlightLine attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:1 constant:0]];
        [self addConstraint: [NSLayoutConstraint constraintWithItem:_highlightLine attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0 constant:2]];
        [self addConstraint: [NSLayoutConstraint constraintWithItem:_highlightLine attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeading multiplier:1 constant:0]];
        [self addConstraint: [NSLayoutConstraint constraintWithItem:_highlightLine attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1 constant:0]];
    }
    return self;
}

@end