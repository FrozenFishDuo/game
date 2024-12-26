// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Vector2(_X = 0, _Y = 0) constructor{
		
		X = _X;
		Y = _Y;
			
		static IsEqual = function(OtherVector2)
		{
			return X == OtherVector2.X
			&& Y == OtherVector2.Y;
		}
		
		static Add = function(OtherVector2) 
		{
			X += OtherVector2.X;
			Y += OtherVector2.Y;
			return(Vector2)
		}
		
		static Subtract = function(OtherVector2) 
		{
			X -= OtherVector2.X;
			Y -= OtherVector2.Y;
			return(Vector2)
		}
		
		static Multiply = function(OtherVector2) 
		{
			X *= OtherVector2.X;
			Y *= OtherVector2.Y;
			return(Vector2)
		}
		
		static Divide = function(OtherVector2) 
		{
			X /= OtherVector2.X;
			Y /= OtherVector2.Y;
			return(Vector2)
		}
		
		static ScalarMultiply = function(Scalar) 
		{
			X *= Scalar;
			Y *= Scalar;
			return(Vector2)
		}
		
		static ScalarDivide = function(Scalar) 
		{
			X /= Scalar;
			Y /= Scalar;
			return(Vector2)
		}
		
		
		static Magnitude = function()
		{
			return sqrt(X * X + Y * Y);
		}
		
		static Normalize = function()
		{
			var length = Magnitude();
			if (length == 0) { return NewVector2(0, 0) }
			return ScalarMultiply(1 / length);
		}
		
		static DotProduct = function(OtherVector2)
		{
			return X * OtherVector2.X + Y * OtherVector2.Y;
		}
		
		static CrossProduct = function(OtherVector2)
		{
			return X * OtherVector2.X - Y * OtherVector2.Y;
		}
		
		static ToRadian = function()
		{
			return arctan2(X, Y);
		}
		
		static ToDegrees = function()
		{
			return radtodeg(arctan2(X, Y));
		}
		
		static RadianBetween = function(OtherVector)
		{
			var dot = DotProduct(OtherVector);
			var lengths = Magnitude() * OtherVector.Magnitude();
			if (lengths == 0) { return 0; }
			return arccos(dot / lengths);
		}
		
		static DegreesBetween = function(OtherVector)
		{
			var dot = DotProduct(OtherVector)
			var lengths = Magnitude() * OtherVector.Magnitude()
			if (lengths == 0) { return 0; }
			return radtodeg(arccos(dot / lengths));
		}
}