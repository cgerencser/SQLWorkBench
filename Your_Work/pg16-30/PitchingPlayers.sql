SELECT 
    teamID AS 'Team',
    Firstname,
    Lastname,
    yearID AS 'Year',
    W AS 'Wins',
    L AS 'Losses',
    CG AS 'Complete Games',
    BB,
    SO,
    ERA
FROM
    trainwarehouse.bb_players
JOIN trainwarehouse.bb_pitching ON bb_players.playerID = bb_pitching.playerID
WHERE 
	yearID = 1968 AND teamID = 'SLN'
ORDER BY W DESC
;