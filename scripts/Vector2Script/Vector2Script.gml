// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Vector2(_x = 0, _y = 0) constructor{
		
		X = _x;
		Y = _y;
			
		static IsEqual = function(OtherVector2)
		{
			return X == OtherVector2.X
			&& Y == OtherVector2.Y;
		}
		
		static Add = function(OtherVector2) 
		{
			X += OtherVector2.X;
			Y += OtherVector2.Y;
		}
		
		static Subtract = function(OtherVector2) 
		{
			X -= OtherVector2.X;
			Y -= OtherVector2.Y;
		}
		
		static Multiply = function(OtherVector2) 
		{
			X *= OtherVector2.X;
			Y *= OtherVector2.Y;
		}
		
		static Divide = function(OtherVector2) 
		{
			X /= OtherVector2.X;
			Y /= OtherVector2.Y;
		}
		
		static ScalarMultiply = function(Scalar) 
		{
			X *= Scalar;
			Y *= Scalar;
		}
		
		static ScalarDivide = function(Scalar) 
		{
			X /= Scalar;
			Y /= Scalar;
		}
		
		
		static Magnitude = function()
		{
			return sqrt(Vector2.X * Vector2.X + Vector2.Y * Vector2.Y);
		}
		
		static Normalize = function()
		{
			var length = Vector2.Magnitude();
			if (length == 0) { return NewVector2(0, 0) }
			ScalarMultiply(1 / length);
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