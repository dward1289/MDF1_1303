//
//  CustomTableCell.h
//  MDF1-Week1
//
//  Created by Devona Ward on 3/6/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell

@property (nonatomic, weak)IBOutlet UILabel *theName;
@property (nonatomic, weak)IBOutlet UILabel *theWorld;
@property (nonatomic, weak)IBOutlet UILabel *theFatality;
@property (nonatomic, weak)IBOutlet UIImageView *theFighter;

@end
