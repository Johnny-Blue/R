SELECT [AR21_EmploymentStatus_LST],	
	sum(cast([AR26_PrimaryIncome_MNY] as decimal) * cast(AR67_CurrentBalance_MNY as decimal)) / sum(cast([AR26_PrimaryIncome_MNY] as decimal)) PIByEmpl
	FROM [SQLDEV01_DEBUG].[ttool_ecb_latest].[ttool].[RMBS_ASSETS]
	WHERE [AR26_PrimaryIncome_MNY] IS NOT NULL
	and AR67_CurrentBalance_MNY IS NOT NULL
	GROUP BY [AR21_EmploymentStatus_LST]
	HAVING sum(cast([AR26_PrimaryIncome_MNY] as decimal)) > 0

select count(*) FROM [SQLDEV01_DEBUG].[ttool_ecb_latest].[ttool].[RMBS_ASSETS]


SELECT [AR21_EmploymentStatus_LST],	
	sum(cast([AR26_PrimaryIncome_MNY] as decimal) * cast(AR67_CurrentBalance_MNY as decimal)) / sum(cast([AR26_PrimaryIncome_MNY] as decimal)) PIByEmpl
	FROM [SQLDEV01_DEBUG].[ttool_dch_latest].[ttool].[RMBS_ASSETS]
	WHERE [AR26_PrimaryIncome_MNY] IS NOT NULL
	and AR67_CurrentBalance_MNY IS NOT NULL
	GROUP BY [AR21_EmploymentStatus_LST]
	HAVING sum(cast([AR26_PrimaryIncome_MNY] as decimal)) > 0

select count(*) FROM [SQLDEV01_DEBUG].[ttool_dch_latest].[ttool].[RMBS_ASSETS]