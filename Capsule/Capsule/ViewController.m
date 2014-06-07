//
//  ViewController.m
//  Capsule
//
//  Created by Marion Ano on 6/6/14.
//  Copyright (c) 2014 Marion Ano. All rights reserved.
//

#import "ViewController.h"
#import "CameraViewController.h"

@interface ViewController ()<UITabBarDelegate>
@property (strong, nonatomic) IBOutlet UITabBar *tabBar;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tabBarItem.tag = -1;
    self.tabBar.delegate = self;


	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    if (item.tag == 0)
    {
        //push out to audio viewcontroller
    }

    else if (item.tag == 1)
    {

//http://stackoverflow.com/questions/19083358/create-a-uiviewcontroller-from-uitabbaritem-and-storyboard

//http://cocoadiary.wordpress.com/2013/01/28/ios-tutorialhow-to-use-uitabbar/

        NSLog(@"the second tab has been selected");
        [self performSegueWithIdentifier:@"CameraVC" sender:self];

        //push out to camera viewcontroller

       //CameraViewController *vc = segue.destinationViewController;
//
//
//        if ([segue.identifier isEqualToString:@"CameraVC"])

       // UIStoryboardSegue *storyboard = [UIStoryboard storyboardWithName:@"CameraVC" bundle:nil];

//        UIStoryboardSegue *storyboard = [UIStoryboardSegue segueWithIdentifier:@"CameraVC" source:self destination:vc performHandler:^{
//            [[self navigationController] pushViewController:vc animated:YES];
//
//        }];
//      CameraViewController *second = [storyboard instantiateViewControllerWithIdentifier:@"CameraVC"];
//                [[self navigationController] pushViewController:second animated:YES];


    }
    else if (item.tag == 2)
    {
        //push out to text viewcontroller
    }

}

@end
