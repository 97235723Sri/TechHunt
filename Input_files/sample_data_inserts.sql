-- Sample Data for Smart Portfolio Rebalancer
-- Generated: 2026-02-12

-- ==========================================================
-- TABLE: portfolios
-- ==========================================================

INSERT INTO portfolios VALUES (
  'PORT-001',
  'Main Portfolio',
  'USER-12345',
  524830.0,
  12450.0,
  512380.0,
  5.2,
  5.0,
  '2025-12-28',
  45,
  72,
  'Moderate',
  1.42,
  -2.3,
  0.98,
  12.3,
  -8.2,
  0.65,
  'Recommended',
  3,
  '2024-01-15',
  '2026-02-12'
);

INSERT INTO portfolios VALUES (
  'PORT-002',
  'Retirement 401k',
  'USER-12345',
  248500.0,
  5200.0,
  243300.0,
  1.2,
  5.0,
  '2026-01-15',
  28,
  84,
  'Conservative',
  1.58,
  -1.8,
  0.75,
  9.8,
  -5.4,
  0.58,
  'Good',
  0,
  '2024-01-15',
  '2026-02-12'
);

INSERT INTO portfolios VALUES (
  'PORT-003',
  'College Fund',
  'USER-12345',
  87200.0,
  2100.0,
  85100.0,
  0.8,
  5.0,
  '2026-02-01',
  11,
  88,
  'Conservative',
  1.65,
  -1.5,
  0.68,
  8.2,
  -4.1,
  0.52,
  'Good',
  0,
  '2024-06-10',
  '2026-02-12'
);

INSERT INTO portfolios VALUES (
  'PORT-004',
  'Trading Account',
  'USER-12345',
  42100.0,
  8500.0,
  33600.0,
  12.3,
  8.0,
  '2025-11-20',
  84,
  58,
  'Aggressive',
  1.18,
  -4.2,
  1.35,
  18.7,
  -15.8,
  0.82,
  'Critical',
  5,
  '2024-09-01',
  '2026-02-12'
);

-- ==========================================================
-- TABLE: holdings
-- ==========================================================

INSERT INTO holdings VALUES (
  'HOLD-001',
  'PORT-001',
  'AAPL',
  'Apple Inc.',
  'US Equity',
  'Technology',
  125.0,
  165.5,
  182.45,
  22806.25,
  20687.5,
  2118.75,
  10.24,
  4.3,
  3.0,
  1.3,
  'Warning',
  'SELL',
  -28,
  0.52,
  '2026-02-12 15:30:00'
);

INSERT INTO holdings VALUES (
  'HOLD-002',
  'PORT-001',
  'MSFT',
  'Microsoft Corporation',
  'US Equity',
  'Technology',
  85.0,
  380.2,
  412.3,
  35045.5,
  32317.0,
  2728.5,
  8.44,
  6.7,
  5.0,
  1.7,
  'Warning',
  'SELL',
  -17,
  0.78,
  '2026-02-12 15:30:00'
);

INSERT INTO holdings VALUES (
  'HOLD-003',
  'PORT-001',
  'BND',
  'Vanguard Total Bond Market ETF',
  'Bonds',
  'Fixed Income',
  320.0,
  72.8,
  70.25,
  22480.0,
  23296.0,
  -816.0,
  -3.5,
  4.3,
  6.0,
  -1.7,
  'Warning',
  'BUY',
  78,
  3.25,
  '2026-02-12 15:30:00'
);

INSERT INTO holdings VALUES (
  'HOLD-004',
  'PORT-001',
  'VWO',
  'Vanguard FTSE Emerging Markets ETF',
  'International Equity',
  'Equity',
  450.0,
  41.2,
  39.8,
  17910.0,
  18540.0,
  -630.0,
  -3.4,
  3.4,
  5.0,
  -1.6,
  'Warning',
  'BUY',
  212,
  2.85,
  '2026-02-12 15:30:00'
);

INSERT INTO holdings VALUES (
  'HOLD-005',
  'PORT-001',
  'VEA',
  'Vanguard FTSE Developed Markets ETF',
  'International Equity',
  'Equity',
  580.0,
  48.9,
  51.25,
  29725.0,
  28362.0,
  1363.0,
  4.8,
  5.7,
  5.0,
  0.7,
  'Safe',
  'HOLD',
  0,
  2.45,
  '2026-02-12 15:30:00'
);

INSERT INTO holdings VALUES (
  'HOLD-006',
  'PORT-001',
  'VNQ',
  'Vanguard Real Estate ETF',
  'REITs',
  'Real Estate',
  235.0,
  88.5,
  91.2,
  21432.0,
  20797.5,
  634.5,
  3.05,
  4.1,
  5.0,
  -0.9,
  'Safe',
  'BUY',
  52,
  3.82,
  '2026-02-12 15:30:00'
);

INSERT INTO holdings VALUES (
  'HOLD-007',
  'PORT-001',
  'GLD',
  'SPDR Gold Trust',
  'Commodities',
  'Precious Metals',
  75.0,
  178.9,
  185.2,
  13890.0,
  13417.5,
  472.5,
  3.52,
  2.6,
  2.5,
  0.1,
  'Safe',
  'HOLD',
  0,
  0.0,
  '2026-02-12 15:30:00'
);

INSERT INTO holdings VALUES (
  'HOLD-008',
  'PORT-001',
  'GOOGL',
  'Alphabet Inc.',
  'US Equity',
  'Technology',
  95.0,
  138.75,
  145.8,
  13851.0,
  13181.25,
  669.75,
  5.08,
  2.6,
  2.0,
  0.6,
  'Safe',
  'HOLD',
  0,
  0.0,
  '2026-02-12 15:30:00'
);

INSERT INTO holdings VALUES (
  'HOLD-009',
  'PORT-001',
  'JNJ',
  'Johnson & Johnson',
  'US Equity',
  'Healthcare',
  165.0,
  158.2,
  162.5,
  26812.5,
  26103.0,
  709.5,
  2.72,
  5.1,
  4.0,
  1.1,
  'Warning',
  'SELL',
  -29,
  2.95,
  '2026-02-12 15:30:00'
);

INSERT INTO holdings VALUES (
  'HOLD-010',
  'PORT-001',
  'PG',
  'Procter & Gamble Co.',
  'US Equity',
  'Consumer Staples',
  125.0,
  145.8,
  152.3,
  19037.5,
  18225.0,
  812.5,
  4.46,
  3.6,
  3.0,
  0.6,
  'Safe',
  'HOLD',
  0,
  2.48,
  '2026-02-12 15:30:00'
);

INSERT INTO holdings VALUES (
  'HOLD-011',
  'PORT-002',
  'VFIAX',
  'Vanguard 500 Index Fund',
  'US Equity',
  'Equity',
  185.0,
  385.5,
  412.8,
  76368.0,
  71317.5,
  5050.5,
  7.08,
  30.7,
  30.0,
  0.7,
  'Safe',
  'HOLD',
  0,
  1.48,
  '2026-02-12 15:30:00'
);

INSERT INTO holdings VALUES (
  'HOLD-012',
  'PORT-002',
  'VBTLX',
  'Vanguard Total Bond Market Index',
  'Bonds',
  'Fixed Income',
  4250.0,
  10.85,
  10.45,
  44412.5,
  46112.5,
  -1700.0,
  -3.69,
  17.9,
  20.0,
  -2.1,
  'Warning',
  'BUY',
  500,
  3.85,
  '2026-02-12 15:30:00'
);

-- ==========================================================
-- TABLE: target_allocations
-- ==========================================================

INSERT INTO target_allocations VALUES (
  'ALLOC-001',
  'PORT-001',
  'US Equity',
  30.0,
  '{"Large Cap": 18.0, "Mid Cap": 7.5, "Small Cap": 4.5}',
  5.0,
  25.0,
  35.0,
  'Strategic',
  '2025-01-15'
);

INSERT INTO target_allocations VALUES (
  'ALLOC-002',
  'PORT-001',
  'International Equity',
  20.0,
  '{"Developed Markets": 12.0, "Emerging Markets": 8.0}',
  5.0,
  15.0,
  25.0,
  'Strategic',
  '2025-01-15'
);

INSERT INTO target_allocations VALUES (
  'ALLOC-003',
  'PORT-001',
  'Bonds',
  30.0,
  '{"Government": 15.0, "Corporate IG": 10.0, "High Yield": 5.0}',
  5.0,
  25.0,
  35.0,
  'Strategic',
  '2025-01-15'
);

INSERT INTO target_allocations VALUES (
  'ALLOC-004',
  'PORT-001',
  'REITs',
  10.0,
  '{"Residential": 4.0, "Commercial": 3.5, "Industrial": 2.5}',
  5.0,
  5.0,
  15.0,
  'Strategic',
  '2025-01-15'
);

INSERT INTO target_allocations VALUES (
  'ALLOC-005',
  'PORT-001',
  'Commodities',
  5.0,
  '{"Gold": 3.0, "Energy": 1.5, "Agriculture": 0.5}',
  5.0,
  0.0,
  10.0,
  'Tactical',
  '2025-01-15'
);

INSERT INTO target_allocations VALUES (
  'ALLOC-006',
  'PORT-001',
  'Cash',
  5.0,
  '{}',
  3.0,
  2.0,
  8.0,
  'Tactical',
  '2025-01-15'
);

INSERT INTO target_allocations VALUES (
  'ALLOC-007',
  'PORT-002',
  'US Equity',
  30.0,
  '{"Large Cap": 25.0, "Mid Cap": 5.0}',
  5.0,
  25.0,
  35.0,
  'Strategic',
  '2024-01-15'
);

INSERT INTO target_allocations VALUES (
  'ALLOC-008',
  'PORT-002',
  'International Equity',
  15.0,
  '{"Developed Markets": 15.0}',
  5.0,
  10.0,
  20.0,
  'Strategic',
  '2024-01-15'
);

INSERT INTO target_allocations VALUES (
  'ALLOC-009',
  'PORT-002',
  'Bonds',
  50.0,
  '{"Government": 35.0, "Corporate IG": 15.0}',
  5.0,
  45.0,
  55.0,
  'Strategic',
  '2024-01-15'
);

INSERT INTO target_allocations VALUES (
  'ALLOC-010',
  'PORT-002',
  'Cash',
  5.0,
  '{}',
  3.0,
  2.0,
  8.0,
  'Tactical',
  '2024-01-15'
);

-- ==========================================================
-- TABLE: drift_history (showing first 50 records)
-- ==========================================================

INSERT INTO drift_history VALUES (
  'DRIFT-0180',
  'PORT-001',
  '2026-02-12',
  '09:58:00',
  532053.2820720006,
  0.36,
  0.34,
  -0.69,
  -1.16,
  -1.61,
  -0.22,
  0.76,
  FALSE,
  0,
  17.47,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0179',
  'PORT-001',
  '2026-02-11',
  '14:49:00',
  534609.5104741678,
  0.45,
  1.74,
  -0.79,
  0.5,
  -2.02,
  0.31,
  -0.48,
  FALSE,
  0,
  32.3,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0178',
  'PORT-001',
  '2026-02-10',
  '13:11:00',
  526782.0213454827,
  0.78,
  1.09,
  0.28,
  0.48,
  -1.06,
  1.0,
  -0.38,
  FALSE,
  0,
  26.09,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0177',
  'PORT-001',
  '2026-02-09',
  '12:04:00',
  527024.9503654444,
  0.38,
  0.95,
  -0.07,
  -0.58,
  -0.11,
  1.09,
  0.07,
  FALSE,
  0,
  25.8,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0176',
  'PORT-001',
  '2026-02-08',
  '16:01:00',
  533098.4559019419,
  0.85,
  0.32,
  -0.44,
  0.43,
  0.14,
  -0.34,
  -0.64,
  FALSE,
  0,
  28.48,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0175',
  'PORT-001',
  '2026-02-07',
  '13:08:00',
  522405.8129129094,
  0.49,
  0.39,
  -1.38,
  -0.92,
  -2.01,
  -0.81,
  0.73,
  FALSE,
  0,
  33.82,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0174',
  'PORT-001',
  '2026-02-06',
  '12:19:00',
  525812.1789664286,
  0.39,
  0.19,
  -0.79,
  -1.52,
  -0.06,
  1.11,
  -0.23,
  FALSE,
  0,
  22.73,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0173',
  'PORT-001',
  '2026-02-05',
  '13:42:00',
  528159.2075737695,
  0.89,
  0.96,
  -0.16,
  -1.36,
  -1.68,
  -0.9,
  -0.95,
  FALSE,
  0,
  22.52,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0172',
  'PORT-001',
  '2026-02-04',
  '16:44:00',
  524504.4650178404,
  0.52,
  1.86,
  -0.34,
  -1.38,
  0.38,
  0.15,
  -0.93,
  FALSE,
  0,
  31.62,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0171',
  'PORT-001',
  '2026-02-03',
  '09:55:00',
  524513.233289322,
  0.44,
  1.75,
  0.28,
  -1.89,
  0.43,
  -0.35,
  0.3,
  FALSE,
  0,
  26.85,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0170',
  'PORT-001',
  '2026-02-02',
  '15:42:00',
  523792.48216899845,
  1.01,
  1.9,
  -0.42,
  -0.63,
  -1.14,
  0.09,
  0.71,
  FALSE,
  0,
  16.28,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0169',
  'PORT-001',
  '2026-02-01',
  '14:40:00',
  533061.4551021466,
  0.62,
  0.22,
  -1.03,
  -1.37,
  -2.18,
  0.01,
  0.31,
  FALSE,
  0,
  16.85,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0168',
  'PORT-001',
  '2026-01-31',
  '10:56:00',
  523460.9283914355,
  0.71,
  0.73,
  -0.9,
  -1.93,
  0.37,
  -0.89,
  0.89,
  FALSE,
  0,
  24.46,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0167',
  'PORT-001',
  '2026-01-30',
  '14:08:00',
  524755.6871443588,
  0.72,
  0.5,
  -0.99,
  -1.34,
  -0.91,
  -0.76,
  0.96,
  FALSE,
  0,
  18.08,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0166',
  'PORT-001',
  '2026-01-29',
  '09:45:00',
  530108.7869758345,
  0.83,
  1.48,
  -0.39,
  0.01,
  -1.0,
  1.61,
  -0.97,
  FALSE,
  0,
  28.1,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0165',
  'PORT-001',
  '2026-01-28',
  '14:50:00',
  520084.64949702,
  0.8,
  0.12,
  -0.6,
  -0.4,
  -0.99,
  1.81,
  -0.88,
  FALSE,
  0,
  22.49,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0164',
  'PORT-001',
  '2026-01-27',
  '13:28:00',
  528371.1387684161,
  0.61,
  0.5,
  0.46,
  -0.27,
  -1.64,
  -0.76,
  0.22,
  FALSE,
  0,
  31.56,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0163',
  'PORT-001',
  '2026-01-26',
  '12:21:00',
  533708.8701356957,
  1.08,
  0.69,
  -0.68,
  -1.02,
  -0.2,
  -0.22,
  0.98,
  FALSE,
  0,
  34.21,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0162',
  'PORT-001',
  '2026-01-25',
  '11:45:00',
  518640.495129392,
  1.1,
  1.62,
  0.36,
  -0.85,
  0.35,
  1.9,
  0.24,
  FALSE,
  0,
  32.62,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0161',
  'PORT-001',
  '2026-01-24',
  '13:08:00',
  517235.9989332076,
  0.69,
  1.34,
  -0.27,
  -0.62,
  -1.21,
  -0.47,
  0.61,
  FALSE,
  0,
  22.85,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0160',
  'PORT-001',
  '2026-01-23',
  '11:30:00',
  532246.8964843425,
  1.27,
  1.18,
  -0.53,
  0.25,
  -2.05,
  -0.84,
  0.78,
  FALSE,
  0,
  22.62,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0159',
  'PORT-001',
  '2026-01-22',
  '14:47:00',
  518433.828273364,
  0.84,
  1.34,
  -0.91,
  -0.53,
  -0.01,
  -0.99,
  -0.44,
  FALSE,
  0,
  19.77,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0158',
  'PORT-001',
  '2026-01-21',
  '12:42:00',
  516403.7505433721,
  1.17,
  0.47,
  -0.97,
  -0.0,
  -2.34,
  -0.6,
  0.76,
  FALSE,
  0,
  29.85,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0157',
  'PORT-001',
  '2026-01-20',
  '13:36:00',
  518985.88079448603,
  1.32,
  0.11,
  0.49,
  -1.94,
  -2.49,
  0.45,
  -0.66,
  FALSE,
  0,
  28.19,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0156',
  'PORT-001',
  '2026-01-19',
  '09:03:00',
  534374.4854809776,
  1.28,
  1.96,
  -1.04,
  -0.83,
  -0.19,
  -0.19,
  0.52,
  FALSE,
  0,
  27.79,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0155',
  'PORT-001',
  '2026-01-18',
  '10:23:00',
  515581.34884260787,
  1.26,
  0.31,
  0.15,
  -0.9,
  -2.39,
  0.93,
  0.68,
  FALSE,
  0,
  18.93,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0154',
  'PORT-001',
  '2026-01-17',
  '15:45:00',
  516275.87703933497,
  1.35,
  0.28,
  -0.29,
  -0.71,
  0.49,
  -0.45,
  -0.02,
  FALSE,
  0,
  29.26,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0153',
  'PORT-001',
  '2026-01-16',
  '09:04:00',
  526102.0284032637,
  1.42,
  0.63,
  0.08,
  0.42,
  -1.46,
  -0.34,
  0.63,
  FALSE,
  0,
  22.17,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0152',
  'PORT-001',
  '2026-01-15',
  '13:14:00',
  530120.851059816,
  0.94,
  1.17,
  -0.25,
  -0.7,
  -1.43,
  0.49,
  -0.12,
  FALSE,
  0,
  19.37,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0151',
  'PORT-001',
  '2026-01-14',
  '12:09:00',
  515081.5554473397,
  1.0,
  0.89,
  0.16,
  0.05,
  -1.7,
  -0.6,
  0.79,
  FALSE,
  0,
  25.65,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0150',
  'PORT-001',
  '2026-01-13',
  '15:06:00',
  534291.1790108351,
  1.36,
  0.19,
  -0.92,
  0.25,
  -0.01,
  0.29,
  -0.02,
  FALSE,
  0,
  16.09,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0149',
  'PORT-001',
  '2026-01-12',
  '09:39:00',
  529818.4393851487,
  1.01,
  2.71,
  -0.82,
  -1.09,
  0.3,
  5.48,
  -0.28,
  FALSE,
  1,
  31.06,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0148',
  'PORT-001',
  '2026-01-11',
  '12:33:00',
  534471.7863277652,
  1.42,
  1.68,
  -3.14,
  -4.78,
  -0.94,
  1.56,
  -0.91,
  FALSE,
  0,
  19.77,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0147',
  'PORT-001',
  '2026-01-10',
  '16:53:00',
  532515.3427208097,
  1.09,
  5.74,
  -1.55,
  -1.41,
  0.18,
  4.92,
  0.6,
  FALSE,
  1,
  18.1,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0146',
  'PORT-001',
  '2026-01-09',
  '09:00:00',
  534267.9075509114,
  1.44,
  1.62,
  -3.38,
  -3.28,
  -1.37,
  2.73,
  0.27,
  FALSE,
  0,
  26.94,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0145',
  'PORT-001',
  '2026-01-08',
  '10:24:00',
  531858.026941181,
  1.6,
  1.28,
  -3.56,
  -5.44,
  -0.36,
  3.66,
  -0.97,
  FALSE,
  1,
  29.23,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0144',
  'PORT-001',
  '2026-01-07',
  '14:23:00',
  520928.5689052564,
  1.49,
  2.86,
  -3.15,
  -4.84,
  -2.03,
  3.01,
  -0.16,
  FALSE,
  0,
  30.46,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0143',
  'PORT-001',
  '2026-01-06',
  '12:38:00',
  530098.4042833871,
  1.67,
  3.29,
  -1.87,
  -2.34,
  0.48,
  3.89,
  -0.83,
  FALSE,
  0,
  22.88,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0142',
  'PORT-001',
  '2026-01-05',
  '16:40:00',
  533709.9655500121,
  1.74,
  2.75,
  -2.09,
  -3.66,
  -1.77,
  2.2,
  0.37,
  FALSE,
  0,
  20.34,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0141',
  'PORT-001',
  '2026-01-04',
  '13:01:00',
  534114.3312470829,
  1.57,
  5.31,
  -0.86,
  -4.29,
  -0.88,
  3.84,
  0.99,
  FALSE,
  1,
  12.13,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0140',
  'PORT-001',
  '2026-01-03',
  '10:27:00',
  525423.4307350321,
  1.3,
  4.79,
  -2.4,
  -1.32,
  0.17,
  2.76,
  -0.01,
  FALSE,
  0,
  18.3,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0139',
  'PORT-001',
  '2026-01-02',
  '13:01:00',
  534067.7867408874,
  1.78,
  5.74,
  -1.21,
  -2.17,
  -1.54,
  5.13,
  -0.64,
  FALSE,
  2,
  20.87,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0138',
  'PORT-001',
  '2026-01-01',
  '15:20:00',
  516224.1193972024,
  1.6,
  3.75,
  -1.39,
  -3.61,
  -0.99,
  4.15,
  -0.62,
  FALSE,
  0,
  29.51,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0137',
  'PORT-001',
  '2025-12-31',
  '13:13:00',
  518512.2767987665,
  1.51,
  1.92,
  -1.43,
  -4.74,
  0.05,
  1.27,
  0.09,
  FALSE,
  0,
  32.14,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0136',
  'PORT-001',
  '2025-12-30',
  '14:15:00',
  516059.16643991513,
  1.59,
  1.97,
  -0.84,
  -5.06,
  -2.11,
  5.12,
  0.94,
  FALSE,
  2,
  28.71,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0135',
  'PORT-001',
  '2025-12-29',
  '11:47:00',
  531681.8170152153,
  1.65,
  5.07,
  -1.91,
  -5.44,
  -0.25,
  0.74,
  -0.12,
  FALSE,
  2,
  28.08,
  TRUE,
  'Rebalanced portfolio'
);

INSERT INTO drift_history VALUES (
  'DRIFT-0134',
  'PORT-001',
  '2025-12-28',
  '12:16:00',
  517493.54953033413,
  1.4,
  5.15,
  -0.6,
  -4.63,
  -2.18,
  2.21,
  0.16,
  FALSE,
  1,
  34.84,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0133',
  'PORT-001',
  '2025-12-27',
  '14:05:00',
  528239.9769669354,
  1.39,
  0.82,
  -1.55,
  -1.19,
  -1.65,
  1.13,
  0.79,
  FALSE,
  0,
  20.55,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0132',
  'PORT-001',
  '2025-12-26',
  '15:36:00',
  533646.0294009588,
  1.51,
  5.32,
  -2.15,
  -5.35,
  -1.9,
  0.81,
  -0.84,
  FALSE,
  2,
  16.66,
  FALSE,
  NULL
);

INSERT INTO drift_history VALUES (
  'DRIFT-0131',
  'PORT-001',
  '2025-12-25',
  '11:11:00',
  528833.4484964752,
  1.43,
  1.93,
  -3.57,
  -3.54,
  -1.5,
  4.12,
  0.19,
  FALSE,
  0,
  31.42,
  FALSE,
  NULL
);

