/* BY NEMORY OLIVER MARTINEZ */

import bb.cascades 1.0
import "nemory/components"

Page 
{
    titleBar: CustomTitleBar 
    {
        scrollBehavior: TitleBarScrollBehavior.Sticky
        
        titleText: "Oliver Martinez"
        titleTextColor: Color.White
        titleBarBackgroundColor: Color.create("#2DA667")
        titleTextFontSize: FontSize.XLarge
        titleTextFontWeight: FontWeight.W100
        
        textLogoVisibility: true
        onTitleBarClicked: 
        {
            actionText.text = "onTitleBarClicked";
        }

        settingsVisibility: true
        onSettingsButtonClicked:
        {
            actionText.text = "onSettingsButtonClicked";
        }
        
        closeVisibility: true
        onCloseButtonClicked:
        {
            actionText.text = "onCloseButtonClicked";
        }
    }
    
    Container 
    {
    	layout: DockLayout {}
    	horizontalAlignment: HorizontalAlignment.Fill
    	verticalAlignment: VerticalAlignment.Fill
    	
    	Label 
    	{
    	    id: actionText
        	text: "The Snap2Chat Custom Title Bar"
        	multiline: true
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            textStyle.fontStyle: FontStyle.Italic
            textStyle.fontSize: FontSize.Large
            textStyle.fontWeight: FontWeight.W100
        }
    }
}
