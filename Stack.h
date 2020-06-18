#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Stack : NSObject

-(void)push:(id)obj;      //push an object into stack
-(void)pop;                 //delete the object on top
-(id)top;                 //return the object on top
-(BOOL)isEmpty;           //judge if stack is empty,YES:empty  No:not empty
-(NSUInteger)size;        //the sizeof stack

@end

NS_ASSUME_NONNULL_END
