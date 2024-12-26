// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NewVector2(_X, _Y){
		Vector2 = {
			X : _X,
			Y : _Y,
			
		IsEqual : function(OtherVector2)
		{
			return Vector2.X == OtherVector2.X
			&& Vector2.Y == OtherVector2.Y;
		},
		
		Add : function(OtherVector2) 
		{
			Vector2.X += OtherVector2.X;
			Vector2.Y += OtherVector2.Y;
		},
		
		Subtract : function(OtherVector2) 
		{
			Vector2.X -= OtherVector2.X;
			Vector2.Y -= OtherVector2.Y;
		},
		
		Multiply : function(OtherVector2) 
		{
			Vector2.X *= OtherVector2.X;
			Vector2.Y *= OtherVector2.Y;
		},
		
		Divide : function(OtherVector2) 
		{
			Vector2.X /= OtherVector2.X;
			Vector2.Y /= OtherVector2.Y;
		},
		
		ScalarMultiply : function(Scalar) 
		{
			Vector2.X *= Scalar;
			Vector2.Y *= Scalar;
		},
		
		ScalarDivide : function(Scalar) 
		{
			Vector2.X /= Scalar;
			Vector2.Y /= Scalar;
		},
		
		
		Magnitude : function()
		{
			return sqrt(Vector2.X * Vector2.X + Vector2.Y * Vector2.Y);
		},
		
		Normalize : function()
		{
			var length = Vector2.Magnitude();
			if (length == 0) { return NewVector2(0, 0) }
			return Vector2.ScalarMultiply(1 / length);
		},
		
		DotProduct : function(OtherVector2)
		{
			return Vector2.X * OtherVector2.X + Vector2.Y * OtherVector2.Y;
		},
		
		CrossProduct : function(OtherVector2)
		{
			return Vector2.X * OtherVector2.X - Vector2.Y * OtherVector2.Y;
		},
		
		ToRadian : function()
		{
			return arctan2(Vector2.X, Vector2.Y);
		},
		
		ToDegrees : function()
		{
			return radtodeg(arctan2(Vector2.X, Vector2.Y));
		},
		
		RadianBetween : function(OtherVector)
		{
			var dot = Vector2.DotProduct(OtherVector);
			var lengths = Vector2.Magnitude() * OtherVector.Magnitude();
			if (lengths == 0) { return 0; }
			return arccos(dot / lengths);
		},
		
		DegreesBetween : function(OtherVector)
		{
			var dot = Vector2.DotProduct(OtherVector)
			var lengths = Vector2.Magnitude() * OtherVector.Magnitude()
			if (lengths == 0) { return 0; }
			return radtodeg(arccos(dot / lengths));
		}
		
	}
	return Vector2
}