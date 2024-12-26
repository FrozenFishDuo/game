// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NewBoxCollider(_X, _Y, Size){
	 BoxCollider =
	 {
		 vectorA : NewVector2(_X, _Y), // Top Left
		 vectorB : NewVector2(_X + Size, _Y), // Top Right
		 vectorC : NewVector2(_X, _Y + Size), // Bottom Left
		 vectorD : NewVector2(_X + Size, _Y + Size), // Bottom Right
		 
		 IsOverlapping : function(_BoxCollider)
		 {
			 return (
			 vectorA.X < _BoxCollider.vectorD.X && // if This box's left side is left to the other box's right side
			 vectorD.X > _BoxCollider.vectorA.X && // if this box's right side is right to the other box's left side
			 vectorA.Y < _BoxCollider.vectorD.Y && // if this box's top side is above the other box's bottom side 
			 vectorD.Y > _BoxCollider.vectorA.Y // if this box's bottom side is below the other box's top side
			 );
		 }
	 }
	return BoxCollider
}