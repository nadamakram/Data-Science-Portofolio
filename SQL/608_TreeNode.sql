SELECT id, 
CASE   
    WHEN p_id IS NULL AND id IN (SELECT DISTINCT p_id FROM Tree) THEN "Root"
    WHEN p_id IS NULL THEN "Root"
    WHEN id IN (SELECT DISTINCT p_id FROM Tree) THEN "Inner"
    ELSE "Leaf"
END AS Type
FROM Tree