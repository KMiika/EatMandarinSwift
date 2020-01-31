
//  MovingBallView.swift
//  MovingBallSUI

//  2019-10-20 File created by Kari Laitinen
//  2019-10-21 Last modification.

//  Copyright © 2019 com.naturalprogramming. All rights reserved.


import SwiftUI

var nom = 0

struct Pacman : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center ) // start from center
      
      pacman_path.addArc( center: rectangle_center,
                          radius: 80,                          // radius of the arc
        startAngle: Angle( radians: 0 * .pi ),
         endAngle: Angle( radians: 2 * .pi ),
         clockwise: false )                   // create a counterclockwise arc
      
      pacman_path.closeSubpath()
      
      return pacman_path
   }
}

struct Pacman2 : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center ) // start from center
      
      pacman_path.addArc( center: rectangle_center,
                          radius: 80,                          // radius of the arc
        startAngle: Angle( radians: 0 * .pi ),
         endAngle: Angle( radians: 1.75 * .pi ),
         clockwise: false )                   // create a counterclockwise arc
      
      pacman_path.closeSubpath()
      
      return pacman_path
   }
}

struct Pacman3 : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center ) // start from center
      
      pacman_path.addArc( center: rectangle_center,
                          radius: 80,                          // radius of the arc
        startAngle: Angle( radians: 0 * .pi ),
        endAngle: Angle( radians: 1.5 * .pi ),
         clockwise: false )                   // create a counterclockwise arc
      
      pacman_path.closeSubpath()
      
      return pacman_path
   }
}

struct Pacman4 : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center ) // start from center
      
      pacman_path.addArc( center: rectangle_center,
                          radius: 80,                          // radius of the arc
         startAngle: Angle( radians: 0 * .pi ),
         endAngle: Angle( radians: 1.25 * .pi ),
         clockwise: false )                   // create a counterclockwise arc
      
      pacman_path.closeSubpath()
      
      return pacman_path
   }
}
struct Pacman5 : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center ) // start from center
      
      pacman_path.addArc( center: rectangle_center,
                          radius: 80,                          // radius of the arc
         startAngle: Angle( radians: 0 * .pi ),
         endAngle: Angle( radians: 1 * .pi ),
         clockwise: false )                   // create a counterclockwise arc
      
      pacman_path.closeSubpath()
      
      return pacman_path
   }
}
struct Pacman6 : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center ) // start from center
      
      pacman_path.addArc( center: rectangle_center,
                          radius: 80,                          // radius of the arc
         startAngle: Angle( radians: 0 * .pi ),
         endAngle: Angle( radians: 0.75 * .pi ),
         clockwise: false )                   // create a counterclockwise arc
      
      pacman_path.closeSubpath()
      
      return pacman_path
   }
}
struct Pacman7 : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center ) // start from center
      
      pacman_path.addArc( center: rectangle_center,
                          radius: 80,                          // radius of the arc
         startAngle: Angle( radians: 0 * .pi ),
         endAngle: Angle( radians: 0.5 * .pi ),
         clockwise: false )                   // create a counterclockwise arc
      
      pacman_path.closeSubpath()
      
      return pacman_path
   }
}

struct Pacman8 : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center ) // start from center
      
      pacman_path.addArc( center: rectangle_center,
                          radius: 80,                          // radius of the arc
         startAngle: Angle( radians: 0 * .pi ),
         endAngle: Angle( radians: 0.5 * .pi ),
         clockwise: false )                   // create a counterclockwise arc
      
      pacman_path.closeSubpath()
      
      return pacman_path
   }
}

struct Pacman9 : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center ) // start from center
      
      pacman_path.addArc( center: rectangle_center,
                          radius: 80,                          // radius of the arc
         startAngle: Angle( radians: 0 * .pi ),
         endAngle: Angle( radians: 0.25 * .pi ),
         clockwise: false )                   // create a counterclockwise arc
      
      pacman_path.closeSubpath()
      
      return pacman_path
   }
}

struct Pacman10 : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center ) // start from center
      
      pacman_path.addArc( center: rectangle_center,
                          radius: 80,                          // radius of the arc
         startAngle: Angle( radians: 0 * .pi ),
         endAngle: Angle( radians: 0 * .pi ),
         clockwise: false )                   // create a counterclockwise arc
      
      pacman_path.closeSubpath()
      
      return pacman_path
   }
}

struct Pacman11 : Shape
{
   func path( in given_rectangle: CGRect ) -> Path
   {
      let rectangle_center = CGPoint( x: given_rectangle.origin.x + given_rectangle.size.width / 2,
                                      y: given_rectangle.origin.y + given_rectangle.size.height / 2 )
      
      var pacman_path = Path()
      
      pacman_path.move( to: rectangle_center ) // start from center
      
      pacman_path.addArc( center: rectangle_center,
                          radius: 80,                          // radius of the arc
         startAngle: Angle( radians: 0 * .pi ),
         endAngle: Angle( radians: 2 * .pi ),
         clockwise: false )                   // create a counterclockwise arc
      
      pacman_path.closeSubpath()
      
      return pacman_path
   }
}

struct BallButtonStyle: ButtonStyle
{
    func makeBody( configuration: Configuration) -> some View
    {
      configuration.label
         .frame( minWidth: 0, maxWidth: .infinity, minHeight: 44 )
            .padding( .horizontal )
            .foregroundColor( Color.accentColor )
            .background( RoundedRectangle( cornerRadius: 8 ).stroke( Color.accentColor ) )
    }
   
   // Buttons with equal widths were made by setting minWidth: 0, maxWidth: .infinity
}



struct MovingBallView : View
{
   @State private var showingAlert = false
   @State var selected_shape_index = 0
   @State var dont_eat_state = 0
   @State var text_to_modify = "Eat Orange!"
   

    
   var body : some View
   {
      
        VStack{
         // The backround color is the first layer in the ZStack
         Color( red: 255, green: 255, blue: 255 ).edgesIgnoringSafeArea( .all ) // background color
         Text( text_to_modify ).font( .largeTitle )
            

        
           
         
         ZStack  // the layer for the ball
        
         {
            if selected_shape_index == 0 {
            Pacman().fill( Color.orange )
                  .frame( width: 200, height: 140 )
            
            }
            else if selected_shape_index == 1{
           
            Pacman2().fill( Color.orange )
                .frame( width: 200, height: 140 )
            
        
            }
            else if selected_shape_index == 2{
            
            Pacman3().fill( Color.orange )
                .frame( width: 200, height: 140 )
            
            }
            else if selected_shape_index == 3{
            
            Pacman4().fill( Color.orange )
                .frame( width: 200, height: 140 )
            
            }
            else if selected_shape_index == 4{
            
            Pacman5().fill( Color.orange )
                .frame( width: 200, height: 140 )
            
            }
            else if selected_shape_index == 5{
           
            Pacman6().fill( Color.orange )
                .frame( width: 200, height: 140 )
            
            }
            else if selected_shape_index == 6{
          
            Pacman7().fill( Color.orange )
                .frame( width: 200, height: 140 )
            
            }
            else if selected_shape_index == 7{
     
            Pacman8().fill( Color.orange )
                .frame( width: 200, height: 140 )
            
            }
            else if selected_shape_index == 8{
      
            Pacman9().fill( Color.orange )
                .frame( width: 200, height: 140 )
            
            }
            else if selected_shape_index == 9{
         
            Pacman10().fill( Color.orange )
                .frame( width: 200, height: 140 )
            
            }
            else if selected_shape_index == 36 {
                Pacman11().fill( Color.green )
                .frame( width: 200, height: 140 )
                
            }
            
            
            
            
            
            
            
         }
         
         VStack  // the layer for the buttons
         {
            Spacer() // A Spacer puts the button rows to the bottom of VStack
            
            HStack  // First row of buttons
            {
               Button( action:
               {
                
                self.dont_eat_state = 0
                self.text_to_modify = "Eat Orange!"
                
                if self.selected_shape_index < 10{
                    self.selected_shape_index += 1
                }
                else{
                    self.selected_shape_index = 0
                }
                
                
                

               } )
               {
                  Text( "Eat Orange" )
               }
               
               .buttonStyle( BallButtonStyle() )
               
               
               
               Button( action:
               {
                self.dont_eat_state += 1
                
                if self.dont_eat_state < 2{
                 self.text_to_modify = "Are you sure?"
                }
                else {
                    self.selected_shape_index = 36
                    self.text_to_modify = "Orange is rotten. too bad"
                }
                
                } )
               {
                  Text( "Don't eat orange" )
               }
                .buttonStyle(BallButtonStyle())
                
               
            }
            .padding( EdgeInsets( top: 0, leading: 8, bottom: 8, trailing: 8 ) )
            
           
            }
            
            
         }
    
      }
    
   }




