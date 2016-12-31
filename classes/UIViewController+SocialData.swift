//
//  UIViewController+SocialData.swift
//  formoney
//
//  Created by 火星人 on 16/4/17.
//  Copyright © 2016年 hqs. All rights reserved.
//
//
//extension UIViewController: UMSocialUIDelegate{
//
//    
//    func umengShareAPP(){
//        let txt = "富顺天牧app  安装工维修工版"
//        UMSocialSnsService.presentSnsIconSheetView(self, appKey: UMAPPKEY, shareText: txt, shareImage: UIImage(named: "AppIcon"), shareToSnsNames: [UMShareToWechatTimeline, UMShareToQzone, UMShareToSina, UMShareToWechatSession, UMShareToQQ, UMShareToAlipaySession], delegate: self)
//    }
//    
//    // umeng share
//    
//    public func closeOauthWebViewController(_ navigationCtroller: UINavigationController!, socialControllerService: UMSocialControllerService!) -> Bool {
//        
//        appPrint("closeOauthWebViewController")
//        return true
//    }
//    
//    
//    public func didCloseUIViewController(_ fromViewControllerType: UMSViewControllerType) {
//        
//        appPrint("didCloseUIViewController")
//    }
//    
//    public func didFinishGetUMSocialData(inViewController response: UMSocialResponseEntity!) {
//        
//        appPrint("didFinishGetUMSocialDataInViewController")
//        appPrint(response)
//        if response.responseCode == UMSResponseCodeSuccess {
//            
//            let platform = (response.data as NSDictionary).allKeys.first as! String
//            self.didSharedSuccessful(platform)
//            appPrint("分享成功")
//        }
//        else{
//            appPrint("分享失败")
//        }
//        appPrint("-------------------------------------")
//    }
//    
//    public func didSelectSocialPlatform(_ platformName: String!, with socialData: UMSocialData!) {
//        
//        appPrint("didSelectSocialPlatform")
//        appPrint("platformName: "+platformName)
//        appPrint("-------------------------------------")
//    }
//    
//    
//    public func isDirectShareInIconActionSheet() -> Bool {
//        return false
//    }
//    
//    
//    func didSharedSuccessful(_ platform: String){
//    
//    }
//}
