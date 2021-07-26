

#import <Foundation/Foundation.h>
typedef enum : NSUInteger {
    //下载失败
    FF_DPBH5LoadFail             = 0,
    //下载中
    FF_DPBH5LoadProcess          = 1,
    //下载成功
    FF_DPBH5LoadSuccess          = 2
    
} FF_DPBH5LoadState;  //下载状态


typedef void(^FF_DPBH5ManageDownloadH5Block)(BOOL loadResult);

typedef void(^FF_DPBH5ManageH5Block)(BOOL result);

typedef void(^FF_DPBH5ManageH5VersionBlock)(BOOL result, NSString* version);

typedef void(^FF_DPBH5ManageCheckLoadingH5Block)(FF_DPBH5LoadState state, float progress);

typedef void(^FF_DPBH5ManageH5TicketBlock)(BOOL result, NSString* ticket);


@interface FF_DPBH5Manage : NSObject

@property (nonatomic, copy)FF_DPBH5ManageCheckLoadingH5Block resultBlock;

@property (nonatomic, strong)NSString* loadPageName;

@property (assign, nonatomic) BOOL isLog;  /**< 是否需要打印 */

+ (instancetype)shareManager;

/// 下载H5资源包 Zip包
/// @param url 下载地址
/// @param packageName 包名(自定义, 方便存取)
/// @param loadResult 下载结果 YES / NO
- (void)FF_DPBDownloadWebZipDataWithUrl:(NSString* )url andPackageName:(NSString* )packageName andCompetetion:(FF_DPBH5ManageDownloadH5Block)loadResult;


/// 请求H5信息
/// @param url 接口
/// @param header 请求头
/// @param parameters 请求体
/// @param method 请求方式 GET / POST (目前服务端GET)
/// @param packageName H5的包名
/// @param result 返回值 YES成功, NO失败
- (void)FF_DPBLoadH5PackageWithUrl:(NSString* )url header:(NSDictionary* )header parameters:(id)parameters method:(NSString *)method andPackageName:(NSString* )packageName andCompetetion:(FF_DPBH5ManageH5Block)result;
- (void)FF_DPBLoadH5PackageWithUrl:(NSString* )url header:(NSDictionary* )header parameters:(id)parameters method:(NSString *)method andPackageName:(NSString* )packageName andVersionCompetetion:(FF_DPBH5ManageH5VersionBlock)result;
- (void)YFSKingFF_DPBLoadH5PackageWithUrl:(NSString* )url header:(NSDictionary* )header parameters:(id)parameters method:(NSString *)method andPackageName:(NSString* )packageName andVersionCompetetion:(FF_DPBH5ManageH5VersionBlock)result;

/// 获取指定包名的H5下载状态, 下载中, 下载失败显示本地包
/// @param packageName 包名
- (FF_DPBH5LoadState)loadingState:(NSString* )packageName;



/// 监测H5下载状态回调 , 实时监测, 有结果回调, 进度显示
/// @param packageName 包名
/// @param resultBlock 回调
- (void)slCheckLoadingState:(NSString* )packageName andBlock:(FF_DPBH5ManageCheckLoadingH5Block)resultBlock;


/// 解压整个世界
- (void)startUnzipH5FileZip:(NSString*)localZipFile FileName:(NSString *)FileName finishBlock:(void(^)(BOOL sucess))finishBlock;



@end

