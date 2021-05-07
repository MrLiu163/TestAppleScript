--
--  AppDelegate.applescript
--  MarketCheckAndSendMail
--
--  Created by mrliu on 2020/12/21.
--  
--

-- 测试方法示例

script TestScript
	property parent : class "NSObject"
    
    -- 测试数组方式传参
    on testMethodWithListParas_(parasList)
        log "parasList = "
        log parasList
        -- 数组传参形式获取参数
        set parasListList to parasList as list --将OC中的__NSArrayI转为AppleScript中的 <NSAppleEventDescriptor: 'list'> (即list)
        set str1 to item 1 of parasListList
        set str2 to item 2 of parasListList
        log "str1 = " & str1 & ", " & "str2 = " & str2
        log "parasList's class = "
        log class of parasList
    end testMethodWithListParas_
    
    -- 测试字典方式传参
    on testMethodWithDictParas_(parasDict)
        log "parasDict = "
        log parasDict
        -- 字典传参形式获取参数
        set parasRecord to parasDict as record --将OC中的__NSDictionaryI转为 <NSAppleEventDescriptor: 'reco'> (即record)
        set nameStr to theName of parasRecord
        set ageStr to theAge of parasRecord
        log "nameStr = " &  nameStr & ", " & "ageStr = " & ageStr
        log "parasDict's class = "
        log class of parasDict
    end testMethodWithDictParas_
    
    -- 测试无传参
    on testMethodWithNoParas()
        log "No Paras"
    end testMethodWithNoParas
    
end script
