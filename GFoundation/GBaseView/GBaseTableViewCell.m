//
//  GBaseTableViewCell.m
//  GFoundation
//
//  Created by Ghost on 14-8-16.
//  Copyright (c) 2014年 Ghost. All rights reserved.
//

#import "GBaseTableViewCell.h"

@implementation GBaseTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
