# Smart Portfolio Rebalancer - Sample Data Documentation

## Overview
This directory contains comprehensive sample data for all four core tables in the Smart Portfolio Rebalancer system.

---

## 📊 Tables Included

### 1. **portfolios** (4 records)
Portfolio-level information and aggregated metrics.

**Key Fields:**
- `portfolio_id`: Unique identifier (PORT-001 to PORT-004)
- `portfolio_name`: Main Portfolio, Retirement 401k, College Fund, Trading Account
- `total_value`: Current market value of entire portfolio
- `current_drift`: Overall portfolio drift percentage
- `risk_score`: 0-100 health score
- `sharpe_ratio`, `var_95_1day`, `beta`, `volatility_annual`: Risk metrics
- `rebalance_status`: Good, Recommended, or Critical

**Sample Portfolios:**
| Portfolio | Value | Drift | Status | Risk Score |
|-----------|--------|-------|--------|------------|
| Main Portfolio | $524,830 | 5.2% | Recommended | 72 |
| Retirement 401k | $248,500 | 1.2% | Good | 84 |
| College Fund | $87,200 | 0.8% | Good | 88 |
| Trading Account | $42,100 | 12.3% | Critical | 58 |

---

### 2. **holdings** (12 records)
Individual security positions across all portfolios.

**Key Fields:**
- `holding_id`: Unique identifier
- `ticker`: Stock/ETF symbol (AAPL, MSFT, BND, etc.)
- `quantity`, `current_price`, `market_value`: Position details
- `current_allocation_pct` vs `target_allocation_pct`: Drift tracking
- `drift_status`: Safe, Warning, or Critical
- `recommended_action`: BUY, SELL, or HOLD
- `recommended_shares`: Number of shares to trade

**Sample Holdings (PORT-001):**
| Ticker | Company | Class | Value | Current% | Target% | Drift | Action |
|--------|---------|-------|--------|----------|---------|-------|--------|
| AAPL | Apple | US Equity | $22,806 | 4.3% | 3.0% | +1.3% | SELL -28 |
| MSFT | Microsoft | US Equity | $35,046 | 6.7% | 5.0% | +1.7% | SELL -17 |
| BND | Vanguard Bond | Bonds | $22,480 | 4.3% | 6.0% | -1.7% | BUY +78 |
| VWO | Vanguard EM | Int'l Equity | $17,910 | 3.4% | 5.0% | -1.6% | BUY +212 |

**Holdings by Asset Class:**
- US Equity: AAPL, MSFT, GOOGL, JNJ, PG
- International Equity: VWO, VEA
- Bonds: BND, VBTLX
- REITs: VNQ
- Commodities: GLD

---

### 3. **target_allocations** (10 records)
Target allocation percentages and rebalancing bands for each asset class.

**Key Fields:**
- `allocation_id`: Unique identifier
- `asset_class`: US Equity, International Equity, Bonds, REITs, Commodities, Cash
- `target_percentage`: Strategic allocation target
- `sub_allocations`: JSON object with detailed breakdowns
- `drift_tolerance`: Acceptable drift before warning
- `rebalance_band_lower/upper`: Trigger points for rebalancing

**PORT-001 Target Allocation:**
| Asset Class | Target | Sub-Allocations | Bands |
|-------------|--------|-----------------|-------|
| US Equity | 30% | Large Cap: 18%, Mid Cap: 7.5%, Small Cap: 4.5% | 25-35% |
| International Equity | 20% | Developed: 12%, Emerging: 8% | 15-25% |
| Bonds | 30% | Government: 15%, Corporate IG: 10%, High Yield: 5% | 25-35% |
| REITs | 10% | Residential: 4%, Commercial: 3.5%, Industrial: 2.5% | 5-15% |
| Commodities | 5% | Gold: 3%, Energy: 1.5%, Agriculture: 0.5% | 0-10% |
| Cash | 5% | - | 2-8% |

**PORT-002 Target Allocation (Conservative):**
| Asset Class | Target | Bands |
|-------------|--------|-------|
| US Equity | 30% | 25-35% |
| International Equity | 15% | 10-20% |
| Bonds | 50% | 45-55% |
| Cash | 5% | 2-8% |

---

### 4. **drift_history** (270 records)
Historical time-series data tracking portfolio drift over time.

**Key Fields:**
- `drift_id`: Unique identifier
- `portfolio_id`: Foreign key to portfolios
- `snapshot_date`, `snapshot_time`: Timestamp of measurement
- `overall_drift`: Portfolio-level drift percentage
- `us_equity_drift`, `international_equity_drift`, etc.: Asset class-level drift
- `threshold_breach`: Boolean indicating if threshold exceeded
- `critical_assets_count`: Number of assets in critical drift
- `vix_level`: Market volatility index at time of snapshot
- `rebalance_event`: Boolean marking when rebalancing occurred

**Data Coverage:**
- **PORT-001**: 180 days of daily snapshots (Aug 2025 - Feb 2026)
- **PORT-002**: 90 days of daily snapshots (Nov 2025 - Feb 2026)
- **Rebalancing Events**: 
  - PORT-001: Dec 28, 2025 (45 days ago)
  - PORT-002: Jan 15, 2026 (28 days ago)

**Drift Trend (PORT-001):**
- Started at ~0.5% in August 2025
- Gradual increase over time with market volatility
- Current drift: 5.2% (threshold: 5.0%)
- Triggered 2 rebalancing events in past 6 months

---

## 📁 File Formats

### JSON Files
- **all_tables.json**: Single file containing all 4 tables
- **portfolios.json**: Portfolios table only
- **holdings.json**: Holdings table only
- **target_allocations.json**: Target allocations table only
- **drift_history.json**: Drift history table only

### CSV Files
- **portfolios.csv**: Import-ready CSV format
- **holdings.csv**: Import-ready CSV format
- **target_allocations.csv**: Import-ready CSV format
- **drift_history.csv**: Import-ready CSV format

### SQL File
- **sample_data_inserts.sql**: Ready-to-execute INSERT statements
  - Includes first 50 drift_history records to keep file manageable
  - Full 270 records available in JSON/CSV

---

## 🎯 Use Cases

### Testing Scenarios Covered

1. **Normal Drift (PORT-002, PORT-003)**
   - Drift < 2%
   - Status: Good
   - Use for: Testing green/safe state UI

2. **Warning State (PORT-001)**
   - Drift: 5.2% (just above 5% threshold)
   - Status: Recommended
   - Use for: Testing alert banners, recommendations

3. **Critical State (PORT-004)**
   - Drift: 12.3%
   - Status: Critical
   - Use for: Testing urgent alerts, multi-trade scenarios

4. **Asset Class Diversity**
   - US Equity, International Equity, Bonds, REITs, Commodities
   - Mix of BUY, SELL, HOLD recommendations

5. **Historical Analysis**
   - 180 days of drift data
   - Multiple rebalancing events
   - Market volatility (VIX) correlation

---

## 🔄 Data Relationships

```
portfolios (1) ──< (many) holdings
    │
    └──< (many) target_allocations
    │
    └──< (many) drift_history
```

**Example:**
- Portfolio PORT-001 has:
  - 10 holdings (AAPL, MSFT, BND, etc.)
  - 6 target allocations (US Eq, Intl Eq, Bonds, REITs, Commodities, Cash)
  - 180 drift history snapshots

---

## 💡 Key Insights from Sample Data

### Portfolio Diversity
- 4 different portfolio strategies (Balanced, Conservative, Aggressive)
- Total assets under management: $902,630
- Average drift across portfolios: 4.9%

### Rebalancing Recommendations
- **Total Trades Needed**: 12 (PORT-001)
  - SELL: 5 positions (AAPL, MSFT, JNJ, etc.)
  - BUY: 7 positions (BND, VWO, VNQ, etc.)
- **Expected Impact**: Risk reduction of 15%

### Risk Metrics
- Sharpe Ratios: 1.18 (Aggressive) to 1.65 (Conservative)
- Beta Range: 0.68 to 1.35
- VaR Range: -1.5% to -4.2%

### Drift Patterns
- Technology sector: Consistent overweight (+5-8%)
- Bonds: Consistent underweight (-5% to -6%)
- Correlation with VIX: Higher drift during volatility spikes

---

## 🚀 Getting Started

### Load JSON into Application
```python
import json

with open('all_tables.json', 'r') as f:
    data = json.load(f)
    
portfolios = data['portfolios']
holdings = data['holdings']
# etc.
```

### Import CSV into Database
```sql
COPY portfolios FROM '/path/to/portfolios.csv' 
DELIMITER ',' CSV HEADER;
```

### Execute SQL Inserts
```sql
\i sample_data_inserts.sql
```

---

## 📋 Data Quality Notes

- All monetary values in USD
- Percentages stored as decimals (5.2% = 5.2, not 0.052)
- Dates in ISO format (YYYY-MM-DD)
- Timestamps in 24-hour format
- Null values represented as `null` in JSON, `NULL` in SQL
- Boolean values: `true`/`false` in JSON, `TRUE`/`FALSE` in SQL

---

## 📞 Support

For questions about the data structure or to request additional sample data scenarios, please contact the development team.

**Generated**: February 12, 2026  
**Version**: 1.0  
**Total Records**: 296 (4 portfolios + 12 holdings + 10 allocations + 270 drift snapshots)

