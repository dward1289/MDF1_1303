//
//  CustomTableCell.m
//  MDF1-Week1
//
//  Created by Devona Ward on 3/6/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "CustomTableCell.h"

@implementation CustomTableCell;
@synthesize theName = _theName;
@synthesize theWorld = _theWorld;
@synthesize theFatality = _theFatality;
@synthesize theFighter = _theFighter;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
