#
# This filed defines the top level of your application.
#

class Savasana < Limber::Components::Application
  
  has_attributes :height => "100%", :width => "100%",
                 :layout => "vertical",
                 :background_gradient_colors => "[#ffffff, #000000]",
                 :creation_complete_effect => 'fadeIn'
  
  # tells Limber to look for these components in app/flex/savasana
  has_components :progress_popup #, :component2, :component3
  
  # If a Limber component implements a custom_action_script method,
  # the string returned is added to the top of the MXML file in the script
  # definition area.  Ie. Between <script></script> tags along
  # with any automatically generated ActionScript
  # ...
  def custom_action_script
    return <<-END_AS
      import mx.controls.Alert;
      public static function debug(str:String):void {
        /* Alert.show(str); */
      }
      
      public function firstAndLastName(data:Object, column:DataGridColumn):String {
        return data.firstName + ' ' + data.lastName;
      }
      
    END_AS
  end
  
  # The :to_mxml method is where the magic happens.
  #  - Limber invokes this method to generate the MXML.
  #  - Ruby’s block structure is used to indicate XML containment hierarchy.
  #  - Unrecognized methods are assumed to correspond to ActionScript classes.
  #  - Hash parameters turn into XML attributes.
  #  - Many shortcuts have been implemented to make attributes more readable
  #    and to reduce code size.  Documentation forthcoming...

  def to_mxml
    # non-UI components must go at the top
    fade :id => 'fadeIn', :duration => 100
    style :source => 'com/savasana/css/savasana.css'
    
    # UI Components
    h_box {
      teachers_panel
      timeslots_panel
    }
  end
  
  def teachers_panel
    panel(:teachersPanel, :title => "Teachers", :width => "40%", :height => "40%") {
      data_grid_for(:teachers, :id => "teachersDG") do |grid|
        grid.column "Name", :name, :label_function => "firstAndLastName"
      end
    }
  end
  
  def timeslots_panel
    panel(:timeslotsPanel, :title => "Timeslots", :width => "40%", :height => "40%") {
      
    }
  end
  
  
end