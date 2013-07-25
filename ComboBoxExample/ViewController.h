//
//  ViewController.h
//  ComboBoxExample
//
//  Created by Ulaş Sancak on 7/25/13.
//  Copyright (c) 2013 Sancak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ComboBox.h"

@interface ViewController : UIViewController <ComBoxDelegate>

@property (nonatomic, strong) NSArray *dataObjects;
@end
