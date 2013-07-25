//
//  ViewController.m
//  ComboBoxExample
//
//  Created by Ulaş Sancak on 7/25/13.
//  Copyright (c) 2013 Sancak. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ComboBox *comboBox = [[ComboBox alloc]initWithFrame:CGRectMake(50, 50, 220, 36)];
    comboBox.delegate = self;
    [comboBox setComboBoxSize:CGSizeMake(220, 44*4)];
    [self.view addSubview:comboBox];
    
    _dataObjects = [NSArray arrayWithObjects:@"House",@"Apple",@"Book",@"Drink", nil];
    
    [comboBox setComboBoxDataArray:_dataObjects];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)comboBox:(ComboBox *)comboBox didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%@", [_dataObjects objectAtIndex:indexPath.row]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
