@interface UIView (FixAllSubviewsCrash)
-(NSArray *)allSubviews;
@end

@implementation UIView (FixAllSubviewsCrash)
-(NSArray *)allSubviews {
	NSArray *subviews = [self subviews];
	NSMutableArray *allSubs = [subviews mutableCopy];

	for (UIView *subview in subviews) {
		[allSubs addObjectsFromArray: subview.allSubviews];
	}

	return (NSArray *)allSubs;
}
@end