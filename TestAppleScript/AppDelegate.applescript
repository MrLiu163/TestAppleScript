--
--  AppDelegate.applescript
--  TestAppleScript
--
--  Created by mrliu on 2021/4/19.
--  
--

script AppDelegate
	property parent : class "NSObject"
	
    -- 载入OC类
    property Test : class "Test"
    
	-- IBOutlets
	property theWindow : missing value
	
	on applicationWillFinishLaunching_(aNotification)
		-- Insert code here to initialize your application before any files are opened
        
        --Safari打开网页
        --(*
        tell application "Safari"
            activate
            --新建tab页，传入URL
            tell front window
                --get every tab
                --get URL of tab 1
                make new tab with properties {URL:"https://www.apple.com.cn"}
            end tell
        end tell
        --*)
        -- 测试OC和AppleScript方法互相调用
        Test's testListParaMethod() --测试OC给脚本方法传数组参数
        Test's testDictParaMethod() --测试OC给脚本方法传字典参数
        Test's testNOParaMethod() --测试OC给脚本不传参数
        set theParaStr to get Test's testRetrunParaMethod() as text --测试通过OC方法获取返回值
        log theParaStr & " "  & (class of theParaStr) --打印返回值及类型
        
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_
	
end script
