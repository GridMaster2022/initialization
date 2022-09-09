UPDATE scenario_overview
SET calculationState= 'scenarioInitialized'
WHERE scenarioUuid = %(scenarioUuid)s