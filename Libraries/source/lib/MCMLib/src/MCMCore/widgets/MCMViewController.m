
#import "MCMViewController.h"
#import "MCMCore.h"

@implementation MCMViewController


#pragma mark - View lifecycle

- (void)viewDidLoad{ 
    [super viewDidLoad];
    [[MCMCoreManager sharedInstance] viewDidLoad:self];
}

- (void)viewDidUnload{ 
    [super viewDidUnload];
    [[MCMCoreManager sharedInstance] viewDidUnload:self];
}

- (void)viewWillAppear:(BOOL)animated{ 
    [super viewWillAppear:animated];
    [[MCMCoreManager sharedInstance] viewAppear:self];
}

-(void) viewWillDisappear:(BOOL)animated{ 
    [super viewWillDisappear:animated];
    [[MCMCoreManager sharedInstance] viewDisappear:self];
}

- (void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    [super willAnimateRotationToInterfaceOrientation:toInterfaceOrientation duration:duration];
    [[MCMCoreManager sharedInstance] viewRotate:self toOrientation:toInterfaceOrientation];
}

@end
