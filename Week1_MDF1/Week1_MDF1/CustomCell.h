//
//  CustomCell.h
//  Week1_MDF1
//
//  Created by Devona Ward on 3/7/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
{
    IBOutlet UILabel *textLabel;
    IBOutlet UIImageView *imageView;
}

@property (nonatomic, weak) IBOutlet UILabel *sayLbl;
@property (nonatomic, weak) IBOutlet UILabel *worldLbl;
@end
