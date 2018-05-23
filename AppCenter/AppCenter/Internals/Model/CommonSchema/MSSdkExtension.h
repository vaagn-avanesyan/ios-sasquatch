#import <Foundation/Foundation.h>
#import "MSSerializableObject.h"
#import "MSModel.h"

/**
 * The SDK extension is used by platform specific library to record field that are specifically required for a specific SDK.
 */
@interface MSSdkExtension : NSObject <MSSerializableObject, MSModel>

/**
 * The SDK version.
 */
@property(nonatomic, copy) NSString *libVer;

/**
 * ID incremented for each SDK initialization.
 */
@property(nonatomic, copy) NSString *epoch;

/**
 * ID incremented for each event.
 */
@property(nonatomic) int64_t seq;

/**
 * ID created on first-time SDK initialization. It may serves as the device.localId.
 */
@property(nonatomic, copy) NSString *installId;

@end
