

echo -e -n  "Please enter your theme name (widget_list_theme_XXXXX_YYYY_MY_NAME): " 
read THEMENAME
echo $THEMENAME

rvm gemset create $THEMENAME
rvm gemset use $THEMENAME
gem install bundler
bundle gem $THEMENAME
cd $THEMENAME/
echo 'require "'$THEMENAME'/version"' > lib/$THEMENAME.rb
echo '' >> lib/$THEMENAME.rb
echo 'module WidgetListThemeHelper' >> lib/$THEMENAME.rb
echo '  class ThemeDefaults' >> lib/$THEMENAME.rb
echo '    def self.get_theme_widget_list_defaults()' >> lib/$THEMENAME.rb
echo '      list_parms = {}' >> lib/$THEMENAME.rb
echo '      #Add all your theme customizations below' >> lib/$THEMENAME.rb
echo '' >> lib/$THEMENAME.rb
echo '      #list_parms['rowOffsets']                       = ['#FFFFFF','#edf6fd'] # Like this!!!' >> lib/$THEMENAME.rb
echo '' >> lib/$THEMENAME.rb
echo '      return list_parms' >> lib/$THEMENAME.rb
echo '    end' >> lib/$THEMENAME.rb
echo '  end' >> lib/$THEMENAME.rb
echo 'end' >> lib/$THEMENAME.rb
echo '' >> lib/$THEMENAME.rb
echo 'ActionView::Base.send :include, WidgetListThemeHelper' >> lib/$THEMENAME.rb
wget https://github.com/davidrenne/widget_list_theme_blue_sky_basin/blob/master/create_new_widget_list_theme.sh


