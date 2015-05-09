####YLBarButtonActionCategory

Original usage of the `UIBarButtonItem` needs `action` to be separated. Using this category to handle the action from `UIBarButtonItem` will make easy, lazy and simple one line of code!

####Easy Installation
Using <b>CocoaPods</b>, <p>Create or Use `Podfile` file on your project folder then copy and paste below.</p>

```obj-c
pod 'YLBarButtonAction', '~> 1.0.0'
// run for update on terminal
pod update
```

####Methods
```obj-c
// default image initialization with action block
- (instancetype)initWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style actionBlock:(void (^)(id))action;

// default title initialization with action block
- (instancetype)initWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style actionBlock:(void (^)(id))action;

// default system button initialization with action block
- (instancetype)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem actionBlock:(void (^)(id))action;
```
####Availability
`iOS 4.0 +`

####Example
```obj-c
// import header
#import "UIBarButtonItem+Category.h"
```

```obj-c
UIImage *image1 = [UIImage imageWithName:@"img"];
UIBarButtonItem *buttonItem1 = [[UIBarButtonItem alloc] initWithImage:image1 
                                                                style:UIBarButtonItemStyleDone 
                                                          actionBlock:^(UIBarButtonItem *rb1) {
                                                          // action goes here
                                                         }

UIImage *image2 = [UIImage imageWithName:@"img2"];
UIBarButtonItem *buttonItem2 = [[UIBarButtonItem alloc] initWithImage:image2 
                                                                style:UIBarButtonItemStyleDone 
                                                          actionBlock:^(UIBarButtonItem *rb2) {
                                                          // action goes here
                                                         }
                                                         
[self.navigationItem setRightBarButtonItems:@[buttonItem1, buttonItem2]];

// OR
// [self.navigationItem setRightBarButtonItem:buttonItem1];

```
