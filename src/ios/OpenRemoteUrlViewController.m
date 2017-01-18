//
//  OpenRemoteUrlViewController.m
//
//  Created by 张锐平 on 17/1/17.
//

#import "OpenRemoteUrlViewController.h"

@interface OpenRemoteUrlViewController ()

@end


@implementation OpenRemoteUrlViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}



- (void)viewDidLoad {
    [super viewDidLoad];

    float naviHeight = 64;

    UINavigationBar *nb = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, naviHeight)];
    [nb setBarTintColor:[UIColor colorWithRed:((float) 0x23 / 255.0f)
                                        green:((float) 0x94 / 255.0f)
                                         blue:((float) 0xf0 / 255.0f)
                                        alpha:0]];
    [nb setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    [nb setTintColor:[UIColor whiteColor]];
    [self.view addSubview:nb];


    UINavigationItem *item = [[UINavigationItem alloc] initWithTitle:self.title];
    [nb setItems:@[item] animated:NO];


    UIButton *rightButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 24, 24)];
    [rightButton setImage:[UIImage imageNamed:@"cordovaPluginOpenRemoteUrlBack.png"] forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *barButtonItem =[[UIBarButtonItem alloc] initWithCustomView:rightButton];
    [item setLeftBarButtonItem:barButtonItem];

    webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, naviHeight, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-naviHeight)];
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:self.winUrl]];
    [self.view addSubview: webView];
    [webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)back {
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"%s", "has back");
    }];
}



@end
