//
//  OpenRemoteUrlViewController.h
//
//  Created by 张锐平 on 17/1/17.
//

#import <UIKit/UIKit.h>

@interface OpenRemoteUrlViewController : UIViewController{
    UIWebView *webView;
}
@property (nonatomic,strong) NSString *winUrl;
@end
