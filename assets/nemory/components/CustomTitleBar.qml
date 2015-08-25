/* BY NEMORY OLIVER MARTINEZ */

import bb.cascades 1.0

TitleBar 
{
    appearance: TitleBarAppearance.Plain
    kind: TitleBarKind.FreeForm
    
    property string titleText 					: "Snap2Chat";
    property variant titleTextColor				: Color.White
    property variant titleBarBackgroundColor	: Color.White
    property variant titleTextFontSize			: FontSize.Large
    property variant titleTextFontWeight		: FontWeight.W100
    
    property bool imageLogoVisibility 			: false;
    property bool textLogoVisibility 			: true;
    property bool cameraVisibility 				: false;
    property bool closeVisibility 				: false;
    property bool settingsVisibility 			: false;
    
    signal closeButtonClicked();
    signal settingsButtonClicked();
    signal cameraButtonClicked();
    signal titleBarClicked();
	
	kindProperties: FreeFormTitleBarKindProperties 
	{
	    content: 
		Container 
		{
            layout: DockLayout {}
		    id: titleBackground
            background: titleBarBackgroundColor 
            horizontalAlignment: HorizontalAlignment.Fill

			Container 
			{
			    layout: DockLayout {}
		        horizontalAlignment: HorizontalAlignment.Fill
		        verticalAlignment: VerticalAlignment.Fill
		        leftPadding: 20
		        rightPadding: leftPadding

				Container 
				{
					id: leftButtons
                    horizontalAlignment: HorizontalAlignment.Left   
					verticalAlignment: VerticalAlignment.Center
                    
                    ImageButton 
                    {
                        id: closeButton
                        visible: closeVisibility
                        preferredHeight: 70
                        preferredWidth: 70
                        defaultImageSource: "asset:///images/titlebar/close.png"
                        onClicked: 
                        {
                            closeButtonClicked();
                        }
                    }
                    
                    ImageButton 
                    {
                        id: cameraButton
                        visible: cameraVisibility
                        preferredHeight: 70
                        preferredWidth: 70
                        defaultImageSource: "asset:///images/titlebar/camera.png"
                        onClicked: 
                        {
                            cameraButtonClicked();
                        }
                    }
				}
				
                Container 
                {
                    id: centerButtons
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    
                    ImageView 
                    {
                        visible: imageLogoVisibility
                        verticalAlignment: VerticalAlignment.Center
                        imageSource: "asset:///images/titlebar/logo.png"
                        preferredHeight: 70
                        scalingMethod: ScalingMethod.AspectFit
                    }
                    
                    Label 
                    {
                        visible: textLogoVisibility
                        text: titleText
                        textStyle.color: titleTextColor
                        textStyle.fontSize: titleTextFontSize
                        textStyle.fontWeight: titleTextFontWeight
                    }
                    
                    gestureHandlers: TapHandler 
                    {
                        onTapped: 
                        {
                            titleBarClicked();
                        }    
                    }
                }

		        Container 
		        {
		            id: rightButtons
                    horizontalAlignment: HorizontalAlignment.Right
                    verticalAlignment: VerticalAlignment.Center
            
                    ImageButton 
                    {
                        visible: settingsVisibility
                        preferredHeight: 70
                        preferredWidth: 70
                        defaultImageSource: "asset:///images/titlebar/settings.png"
                        onClicked: 
                        {
                            settingsButtonClicked();
                        }
                    }
              	}
		    }
		}
	}
}