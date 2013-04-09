require "widget_list_theme_cruddy/version"

module WidgetListThemeHelper
  class ThemeDefaults
    def self.get_theme_widget_list_defaults()

      list_parms = {}

      list_parms['rowOffsets']                       = ['#eee','#E5E5CB']
      list_parms['headerBGColor']                    = '#cc9'
      list_parms['footerBGColor']                    = '#cc9'
      list_parms['headerFontColor']                  = '#FFFFFF'
      list_parms['footerFontColor']                  = '#FFFFFF'
      list_parms['fontFamily']                       = 'Georgia'
      list_parms['headerFooterFontSize']             = '20px'
      list_parms['headerFontColor']                  = '#705E54'
      list_parms['rowFontColor']                     = 'SlateGray'
      list_parms['dataFontSize']                     = '14px'
      list_parms['bordersEverywhere?']               = true
      list_parms['borderEverywhere']                 = '1px dotted grey'
      list_parms['defaultButtonClass']               = 'default'
      list_parms['cornerRadius']                     = 0
      list_parms['useShadow']                        = true
      list_parms['shadowInset']                      = 10
      list_parms['shadowSpread']                     = 30
      list_parms['shadowColor']                      = 'black'

      return list_parms
    end
  end
end

ActionView::Base.send :include, WidgetListThemeHelper
