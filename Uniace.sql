SELECT 
    Email
    , Type
    , Title
    , URL
    , Referrer
    , TRIM('/' FROM Path)
    , IP
    , CUID
    , DATEPART(HOUR, TRY_CONVERT(Datetime2, Date)) AS Hour
    , TRY_CONVERT(Date, Date) AS Date
    , Message
    , REPLACE(TRIM('["]' FROM Tag), '-', ' ')
FROM Uniace_1

UNION

SELECT 
    Email
    , Type
    , Title
    , URL
    , Referrer
    , TRIM('/' FROM Path)
    , IP
    , CUID
    , DATEPART(HOUR, TRY_CONVERT(Datetime2, Date)) AS Hour
    , TRY_CONVERT(Date, Date) AS Date
    , Message
    , REPLACE(TRIM('["]' FROM Tag), '-', ' ')
FROM Uniace_2

UNION

SELECT 
    Email
    , Type
    , Title
    , URL
    , Referrer
    , TRIM('/' FROM Path)
    , IP
    , CUID
    , DATEPART(HOUR, TRY_CONVERT(Datetime2, Date)) AS Hour
    , TRY_CONVERT(Date, Date) AS Date
    , Message
    , REPLACE(TRIM('["]' FROM Tag), '-', ' ')
FROM Uniace_3




