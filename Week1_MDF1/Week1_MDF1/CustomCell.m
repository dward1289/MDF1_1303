//
//  CustomCell.m
//  Week1_MDF1
//
//  Created by Devona Ward on 3/7/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell
@synthesize sayLbl = _sayLbl;
@synthesize worldLbl = _worldLbl;
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
