# Png_Fit_Model
切图适配以及ReactiveCocoa那点事
-----------------------------------

关于切图，之前一直使用交互区域大小的切图方法；  
目前可以采用自定义交互区域大小的方法，按图的边缘切图，好处是可以减少图片总量所占大小，图片规则统一化：

适配上可以使用：   

     yourButton.imageEdgeInsets = UIEdgeInsetsMake(10, 10, 0, 0);
     
UIEdgeInsetsMake的参数对应上左下右4个方向的相对距离，对应的contentEdgeInsets也可设置文字距离。   

---------------------------------------------------------------------------------------------------------------------         
         
关于ReactiveCocoa，可以规范化消息传递机制，例如UIButton的Event事件：        

    @weakify(self);
    [[[naviBar.backBtn rac_signalForControlEvents:UIControlEventTouchUpInside] takeUntil:self.view.rac_willDeallocSignal] subscribeNext:^(id x) {
        @strongify(self);
        [self dismissViewControllerAnimated:YES completion:^(void){
            // Code.            
        }];
   
   
updating...

  
    
    
By Lee.
