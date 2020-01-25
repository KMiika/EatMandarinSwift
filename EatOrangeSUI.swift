
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
         endAngle: Angle( radians: 1.5 * .pi ),
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
         endAngle: Angle( radians: 1 * .pi ),
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
         endAngle: Angle( radians: 0.5 * .pi ),
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

struct MovementButtonStyle: ButtonStyle
{
    func makeBody( configuration: Configuration) -> some View
    {
      configuration.label
         .frame( minWidth: 0, maxWidth: .infinity, minHeight: 44 )
            .padding( .horizontal )
            .foregroundColor( Color.white )
            .background( RoundedRectangle( cornerRadius: 8 ).fill( Color.accentColor ) )
    }
   
   // Buttons with equal widths were made by setting minWidth: 0, maxWidth: .infinity
}


struct MovingBallView : View
{
   @State private var showingAlert = false
   @State var selected_shape_index = 0
   @State var ball_filling_color = Color.green
   @State var ball_offset = CGSize.zero
   
   let possible_ball_colors = [ Color.green, Color.red, Color.yellow, Color.blue, Color.pink,
                                Color.purple, Color.orange, Color.white ]
   
   var body : some View
   {
      VStack
      {
         // The backround color is the first layer in the ZStack
         Color( red: 0.9, green: 0.9, blue: 0.9 ).edgesIgnoringSafeArea( .all ) // background color
        
        
           
         
         ZStack  // the layer for the ball
         {
            
            
            
            if selected_shape_index == 0 {
            Pacman().fill( Color.orange )
                  .frame( width: 200, height: 140 )
            }
            if selected_shape_index == 1{
            Pacman().fill( Color.white )
                .frame( width: 200, height: 140 )
            Pacman2().fill( Color.orange )
                .frame( width: 200, height: 140 )
        
            }
            if selected_shape_index == 2{
            Pacman2().fill( Color.white )
                .frame( width: 200, height: 140 )
            Pacman3().fill( Color.orange )
                .frame( width: 200, height: 140 )
            
            }
            if selected_shape_index == 3{
            Pacman3().fill( Color.white )
                .frame( width: 200, height: 140 )
            Pacman4().fill( Color.orange )
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
                
                self.selected_shape_index += 1
                
                

               } )
               {
                  Text( "Eat Orange" )
               }
               
               .buttonStyle( BallButtonStyle() )
               
               
               
               Button( action:
               {
                  self.ball_filling_color = self.possible_ball_colors.randomElement()!
               } )
               {
                  Text( "Don't eat orange" )
               }
               .buttonStyle( BallButtonStyle() )
            }
            .padding( EdgeInsets( top: 0, leading: 8, bottom: 0, trailing: 8 ) )

           
            }
         }
      }
   }

 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MovingBallView()
    }
}
