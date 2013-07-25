ComboBox For iOS 0.1
==============

Requirements
--------------
- Xcode 4.5 or higher
- iOS 5.0 or higher
- ARC

in ViewController.h
--------------

    #import <UIKit/UIKit.h>
    #import "ComboBox.h"

    @interface ViewController : UIViewController <ComBoxDelegate>

    @property (nonatomic, strong) NSArray *dataObjects;
    @end
    
in ViewController.m
--------------
    
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