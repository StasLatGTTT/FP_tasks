-- zapp fs xs = map (uncurry ($)) $ zip fs xs
zapp = curry $ map (uncurry ($)) . uncurry zip
