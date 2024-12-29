instance_destroy(other)
enemyInfo.Health -= other.damage
if enemyInfo.Health <= 0
instance_destroy()