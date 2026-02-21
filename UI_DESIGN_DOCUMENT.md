# Smart Portfolio Rebalancer - UI Design Document
## ML-Powered Rebalancing Recommendations Interface

**Version:** 1.0  
**Date:** February 2026  
**Designer:** AI-Powered Design Team  
**Status:** Production Ready

---

## Table of Contents

1. [Executive Summary](#executive-summary)
2. [Design Philosophy](#design-philosophy)
3. [Information Architecture](#information-architecture)
4. [Visual Design System](#visual-design-system)
5. [Component Library](#component-library)
6. [Page Layouts](#page-layouts)
7. [Wireframes](#wireframes)
8. [Mockups](#mockups)
9. [Interaction Design](#interaction-design)
10. [Responsive Design](#responsive-design)
11. [Accessibility](#accessibility)
12. [Implementation Guidelines](#implementation-guidelines)

---

## 1. Executive Summary

### 1.1 Purpose
This document defines the complete UI/UX design for the Smart Portfolio Rebalancer's ML-powered recommendation interface. The design showcases results from an ensemble of 4 AI models (CVXPY, XGBoost, LSTM, LLM) in an intuitive, actionable format.

### 1.2 Goals
- **Transparency**: Make AI decision-making visible and understandable
- **Confidence**: Instill trust through clear confidence metrics
- **Actionability**: Enable quick decision-making with clear CTAs
- **Education**: Help users understand portfolio management concepts
- **Professional**: Enterprise-grade visual design

### 1.3 Target Users
- Individual investors (retail)
- Financial advisors
- Wealth managers
- Portfolio managers
- Robo-advisor platforms

### 1.4 Key Metrics
- Time to decision: < 2 minutes
- User confidence score: > 80%
- Action completion rate: > 70%
- Mobile usability: 100% feature parity

---

## 2. Design Philosophy

### 2.1 Core Principles

#### Principle 1: Clarity Over Complexity
```
Complex AI → Simple Visual Representation
4 ML Models → Single Confidence Score
15 Trades → Prioritized Action List
```

#### Principle 2: Progressive Disclosure
```
Level 1: Summary (What to do)
Level 2: Details (Why to do it)
Level 3: Technical (How it works)
```

#### Principle 3: Trust Through Transparency
```
Show:
✓ All model contributions
✓ Confidence scores
✓ Expected outcomes
✓ Potential risks
```

#### Principle 4: Action-Oriented Design
```
Every screen should answer:
1. What should I do?
2. Why should I do it?
3. How do I do it?
```

### 2.2 Design Language

#### Visual Metaphors
- **Gradient backgrounds** = AI/ML technology
- **Progress bars** = Confidence levels
- **Color intensity** = Priority/urgency
- **Icons** = Quick recognition
- **Arrows** = Improvement direction

#### Tone & Voice
- **Professional** but not intimidating
- **Confident** but not arrogant
- **Helpful** but not patronizing
- **Clear** but not oversimplified

---

## 3. Information Architecture

### 3.1 Page Hierarchy

```
┌─────────────────────────────────────┐
│     Dashboard (Overview)            │
├─────────────────────────────────────┤
│  ┌───────────────────────────────┐  │
│  │  Portfolio Health Status      │  │
│  └───────────────────────────────┘  │
│                                      │
│  ┌───────────────────────────────┐  │
│  │  Quick Actions                │  │
│  │  • View Recommendations       │  │
│  │  • Manual Rebalance           │  │
│  │  • Portfolio Analytics        │  │
│  └───────────────────────────────┘  │
└─────────────────────────────────────┘
              ↓
┌─────────────────────────────────────┐
│  Rebalance Recommendations          │
│  (Focus of this document)           │
├─────────────────────────────────────┤
│  1. Portfolio Health Dashboard      │
│  2. AI Recommendation Summary       │
│  3. Model Contributions             │
│  4. Trade Recommendations           │
│  5. Expected Impact                 │
│  6. AI Insights & Warnings          │
│  7. Execution Guidance              │
│  8. Action Buttons                  │
└─────────────────────────────────────┘
```

### 3.2 Navigation Flow

```
Home → View Portfolio → Get Recommendations → Review → Execute → Confirm → Monitor
  ↑                                                                            │
  └────────────────────────────────────────────────────────────────────────────┘
                            (Feedback Loop)
```

### 3.3 User Journey Map

```
DISCOVER → EVALUATE → DECIDE → ACT → VERIFY

1. DISCOVER
   - User sees drift alert
   - Clicks "Get Recommendations"
   
2. EVALUATE
   - Reviews AI summary
   - Checks model contributions
   - Examines trade details
   
3. DECIDE
   - Reads insights/warnings
   - Reviews expected impact
   - Considers execution timing
   
4. ACT
   - Clicks "Execute All Trades"
   - Confirms action
   
5. VERIFY
   - Monitors execution
   - Verifies drift reduction
   - Receives confirmation
```

---

## 4. Visual Design System

### 4.1 Color Palette

#### Primary Colors
```
┌─────────────────────────────────────────────┐
│ Primary Purple                              │
│ #667eea ▓▓▓▓▓▓▓▓▓▓                         │
│ Usage: Primary actions, headers, gradients │
└─────────────────────────────────────────────┘

┌─────────────────────────────────────────────┐
│ Primary Dark                                │
│ #764ba2 ▓▓▓▓▓▓▓▓▓▓                         │
│ Usage: Gradient end, hover states          │
└─────────────────────────────────────────────┘
```

#### Semantic Colors
```
Success Green     #2ecc71  ▓▓▓  Positive outcomes, buy orders
Warning Orange    #f39c12  ▓▓▓  Medium priority, caution
Error Red         #e74c3c  ▓▓▓  High priority, sell orders
Info Blue         #3498db  ▓▓▓  Information, neutral actions
```

#### Model-Specific Colors
```
CVXPY Optimizer   #3498db  ▓▓▓  Mathematical precision
XGBoost Predictor #e74c3c  ▓▓▓  ML prediction power
LSTM Forecaster   #2ecc71  ▓▓▓  Time series analysis
LLM Reasoner      #9b59b6  ▓▓▓  AI intelligence
```

#### Neutral Colors
```
Text Primary      #2c3e50  ▓▓▓  Main content
Text Secondary    #7f8c8d  ▓▓▓  Supporting content
Background Light  #f8f9fa  ░░░  Page background
Background Dark   #34495e  ▓▓▓  Dark mode
Border            #ecf0f1  ░░░  Dividers, borders
```

### 4.2 Typography

#### Font Family
```
Primary: 'Inter', -apple-system, system-ui, sans-serif
Monospace: 'Fira Code', 'Courier New', monospace
```

#### Type Scale
```
┌──────────────────────────────────────────┐
│ Display / H1                             │
│ 48px / 3rem    Bold    Letter: -0.5px   │
│ Usage: Page titles                       │
└──────────────────────────────────────────┘

┌──────────────────────────────────────────┐
│ Heading 2 / H2                           │
│ 32px / 2rem    Bold    Letter: -0.3px   │
│ Usage: Section headers                   │
└──────────────────────────────────────────┘

┌──────────────────────────────────────────┐
│ Heading 3 / H3                           │
│ 24px / 1.5rem  Semibold Letter: 0       │
│ Usage: Subsection headers                │
└──────────────────────────────────────────┘

┌──────────────────────────────────────────┐
│ Body Large                               │
│ 18px / 1.125rem Regular  Line: 1.6      │
│ Usage: Important body text               │
└──────────────────────────────────────────┘

┌──────────────────────────────────────────┐
│ Body / Default                           │
│ 16px / 1rem    Regular  Line: 1.5       │
│ Usage: Standard body text                │
└──────────────────────────────────────────┘

┌──────────────────────────────────────────┐
│ Caption / Small                          │
│ 14px / 0.875rem Regular Line: 1.4       │
│ Usage: Labels, captions, metadata        │
└──────────────────────────────────────────┘

┌──────────────────────────────────────────┐
│ Micro / Tiny                             │
│ 12px / 0.75rem  Regular Line: 1.3       │
│ Usage: Timestamps, fine print            │
└──────────────────────────────────────────┘
```

### 4.3 Spacing System

```
Base Unit: 8px

Scale:
┌────┬────┬─────┬─────┬─────┬─────┬─────┬─────┐
│ xs │ sm │  md │  lg │  xl │ 2xl │ 3xl │ 4xl │
├────┼────┼─────┼─────┼─────┼─────┼─────┼─────┤
│ 4  │ 8  │ 16  │ 24  │ 32  │ 48  │ 64  │ 96  │
└────┴────┴─────┴─────┴─────┴─────┴─────┴─────┘

Usage:
- Component padding: md (16px)
- Section margins: xl (32px)
- Page padding: 2xl (48px)
- Card gaps: lg (24px)
```

### 4.4 Elevation & Shadows

```
Level 1 (Cards):
box-shadow: 0 2px 4px rgba(0,0,0,0.1)

Level 2 (Hover):
box-shadow: 0 4px 8px rgba(0,0,0,0.12)

Level 3 (Modal):
box-shadow: 0 8px 16px rgba(0,0,0,0.15)

Level 4 (Dropdown):
box-shadow: 0 12px 24px rgba(0,0,0,0.18)
```

### 4.5 Border Radius

```
Small:  4px   - Badges, chips
Medium: 8px   - Buttons, inputs
Large:  12px  - Cards, panels
XLarge: 16px  - Modal dialogs
Round:  9999px - Avatar, pills
```

### 4.6 Iconography

#### Icon Library
**Material Design Icons** - Consistent, recognizable, accessible

#### Usage Guidelines
```
Size:
- Small: 16px  (Inline with text)
- Medium: 24px (Standard)
- Large: 32px  (Headers)
- XLarge: 48px (Empty states)

Style:
- Outlined for non-primary actions
- Filled for primary actions
- Color matches text or theme
```

#### Key Icons
```
Psychology     → AI/ML features
Calculate      → Mathematical operations
Timeline       → Time series, trends
TrendingUp     → Positive change
TrendingDown   → Negative change
Warning        → Alerts, cautions
CheckCircle    → Success, completion
Info           → Information
Bolt           → Risk, power
AutoAwesome    → AI magic
```

---

## 5. Component Library

### 5.1 Buttons

#### Primary Button
```
┌─────────────────────────────┐
│  Execute All Trades    ▶   │  ← Primary CTA
└─────────────────────────────┘

Specs:
- Background: Gradient (#667eea → #764ba2)
- Text: White, 16px, Semibold
- Padding: 12px 32px
- Border radius: 8px
- Height: 48px
- Shadow: Level 1
- Hover: Level 2 shadow + slight scale

States:
Default  → [Enabled]
Hover    → [Elevated + Lighter]
Active   → [Pressed down]
Disabled → [Grayed out, cursor: not-allowed]
Loading  → [Spinner icon]
```

#### Secondary Button
```
┌─────────────────────────────┐
│      Refresh               │  ← Secondary action
└─────────────────────────────┘

Specs:
- Background: White
- Border: 2px solid #667eea
- Text: #667eea, 16px, Semibold
- Padding: 12px 32px
- Border radius: 8px
```

#### Ghost Button
```
┌─────────────────────────────┐
│      Export Report         │  ← Tertiary action
└─────────────────────────────┘

Specs:
- Background: Transparent
- Text: #667eea, 16px, Semibold
- Padding: 12px 24px
- Hover: Background rgba(102,126,234,0.1)
```

### 5.2 Cards

#### Standard Card
```
┌────────────────────────────────────────┐
│  Header                          ⋯    │
├────────────────────────────────────────┤
│                                        │
│  Content area                          │
│  - Body text                           │
│  - Data visualization                  │
│  - Action buttons                      │
│                                        │
└────────────────────────────────────────┘

Specs:
- Background: White
- Border: 1px solid #ecf0f1
- Border radius: 12px
- Padding: 24px
- Shadow: Level 1
```

#### Gradient Card
```
┌────────────────────────────────────────┐
│                                        │
│  Portfolio Health Overview             │
│  (White text on gradient background)  │
│                                        │
└────────────────────────────────────────┘

Specs:
- Background: linear-gradient(135deg, #667eea 0%, #764ba2 100%)
- Text: White
- Border radius: 12px
- Padding: 24px
- Shadow: Level 2
```

#### Metric Card
```
┌──────────────────┐
│  ⚡ Risk Score  │
│                  │
│      72          │
│     ↗ +12        │
└──────────────────┘

Specs:
- Background: White
- Border-left: 4px solid [color]
- Padding: 20px
- Border radius: 12px
- Icon: 32px, colored
- Value: 32px, bold
- Change: 16px, colored chip
```

### 5.3 Tables

#### Trade Table
```
┌─────────────────────────────────────────────────────────────┐
│ Priority │ Ticker │ Shares │ Current │ Target │ Confidence │
├──────────┼────────┼────────┼─────────┼────────┼────────────┤
│  HIGH ▓  │  AAPL  │   28   │  4.3%   │  3.0%  │  ▓▓▓▓▓ 87% │
│  MED  ▓  │  MSFT  │   15   │  6.7%   │  5.0%  │  ▓▓▓▓░ 85% │
│  LOW  ▓  │  BND   │   45   │  4.3%   │  6.0%  │  ▓▓▓▓░ 82% │
└─────────────────────────────────────────────────────────────┘

Specs:
Header:
- Background: Gradient or solid color
- Text: White, 12px, uppercase, semibold
- Padding: 16px

Rows:
- Border-left: 4px solid [priority color]
- Padding: 12px 16px
- Hover: Background rgba(102,126,234,0.05)
- Height: 60px minimum

Cells:
- Align: Left (text), Right (numbers)
- Font: 14px regular
- Bold: Ticker, values
```

### 5.4 Alerts & Notifications

#### Info Alert
```
┌────────────────────────────────────────────────┐
│ ℹ  AI Recommendation Summary                  │
├────────────────────────────────────────────────┤
│  Based on comprehensive analysis from 4 ML     │
│  models, we recommend 15 trades to reduce...   │
└────────────────────────────────────────────────┘

Specs:
- Background: rgba(52,152,219,0.1)
- Border-left: 4px solid #3498db
- Icon: 24px, #3498db
- Padding: 16px
- Border radius: 8px
```

#### Warning Alert
```
┌────────────────────────────────────────────────┐
│ ⚠  High volatility detected (VIX > 25)        │
│    Consider delaying execution by 2-3 days     │
└────────────────────────────────────────────────┘

Specs:
- Background: rgba(243,156,18,0.1)
- Border-left: 4px solid #f39c12
- Icon: 24px, #f39c12
```

#### Success Alert
```
┌────────────────────────────────────────────────┐
│ ✓  Tax-loss harvesting opportunity found       │
│    Potential savings: $297.50                  │
└────────────────────────────────────────────────┘

Specs:
- Background: rgba(46,204,113,0.1)
- Border-left: 4px solid #2ecc71
- Icon: 24px, #2ecc71
```

### 5.5 Badges & Chips

#### Priority Badge
```
 HIGH   MEDIUM   LOW 
  ▓▓     ▓▓      ▓▓   

Specs:
- Padding: 4px 12px
- Border radius: 12px
- Font: 12px, uppercase, bold
- Colors:
  HIGH:   bg=#e74c3c, text=white
  MEDIUM: bg=#f39c12, text=white
  LOW:    bg=#3498db, text=white
```

#### Confidence Badge
```
 87% Confidence 
     ▓▓▓▓▓      

Specs:
- Display: inline-flex
- Padding: 6px 12px
- Border radius: 16px
- Font: 14px, semibold
- Icon: CheckCircle, 16px
- Colors based on confidence:
  High (85-100%):   bg=rgba(46,204,113,0.15), text=#27ae60
  Medium (70-84%):  bg=rgba(243,156,18,0.15), text=#e67e22
  Low (0-69%):      bg=rgba(231,76,60,0.15), text=#c0392b
```

### 5.6 Progress Indicators

#### Linear Progress
```
▓▓▓▓▓▓▓▓▓░░░░░░  87%

Specs:
- Height: 8px
- Border radius: 4px
- Background: #e0e0e0
- Fill: Gradient or solid color
- Animation: 1s ease fill
```

#### Confidence Meter
```
┌──────────────────────────┐
│ Model Confidence         │
│ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓░░░ 87% │
└──────────────────────────┘

Specs:
- Container: Full width
- Bar height: 8px
- Color gradient based on value
- Label: Right-aligned, 12px
```

#### Loading Spinner
```
    ◐
   Analyzing...

Specs:
- Size: 64px
- Color: #667eea
- Speed: 1s rotation
- Text: 16px, below spinner
```

### 5.7 Input Fields

#### Text Input
```
┌────────────────────────────────┐
│ Portfolio Name                 │
│ My Retirement Portfolio     ▼ │
└────────────────────────────────┘

Specs:
- Height: 48px
- Padding: 12px 16px
- Border: 1px solid #ddd
- Border radius: 8px
- Font: 16px
- Focus: Border #667eea, shadow
```

#### Dropdown
```
┌────────────────────────────────┐
│ Select Strategy            ▼  │
├────────────────────────────────┤
│ CONSERVATIVE                   │
│ MODERATE                  ✓   │
│ AGGRESSIVE                     │
└────────────────────────────────┘

Specs:
- Same as text input
- Dropdown shadow: Level 3
- Selected: Checkmark, bg=rgba(102,126,234,0.1)
```

---

## 6. Page Layouts

### 6.1 Desktop Layout (> 1200px)

```
┌────────────────────────────────────────────────────────────────┐
│  Header: Logo | Navigation | User Menu                    [≡] │
├────────────────────────────────────────────────────────────────┤
│                                                                │
│  ┌──────────────────────────────────────────────────────────┐ │
│  │  Breadcrumb: Home > Portfolio > Recommendations          │ │
│  └──────────────────────────────────────────────────────────┘ │
│                                                                │
│  ┌──────────────────────────────────────────────────────────┐ │
│  │  Page Header                                             │ │
│  │  AI-Powered Rebalance Recommendations   [87% Confidence] │ │
│  └──────────────────────────────────────────────────────────┘ │
│                                                                │
│  ┌──────────────────────────────────────────────────────────┐ │
│  │  Portfolio Health Dashboard (Gradient Card)              │ │
│  │  ┌───────┐ ┌───────┐ ┌───────┐ ┌───────┐               │ │
│  │  │ Drift │ │ After │ │ Risk  │ │Sharpe │               │ │
│  │  └───────┘ └───────┘ └───────┘ └───────┘               │ │
│  └──────────────────────────────────────────────────────────┘ │
│                                                                │
│  ┌──────────────────────────────────────────────────────────┐ │
│  │  AI Recommendation Summary (Alert)                       │ │
│  └──────────────────────────────────────────────────────────┘ │
│                                                                │
│  ┌──────────────────────────────────────────────────────────┐ │
│  │  Model Contributions                                     │ │
│  │  ┌──────────────┐  ┌──────────────┐                     │ │
│  │  │ CVXPY (40%)  │  │ XGBoost (30%)│                     │ │
│  │  └──────────────┘  └──────────────┘                     │ │
│  │  ┌──────────────┐  ┌──────────────┐                     │ │
│  │  │ LSTM (20%)   │  │ LLM (10%)    │                     │ │
│  │  └──────────────┘  └──────────────┘                     │ │
│  └──────────────────────────────────────────────────────────┘ │
│                                                                │
│  ┌──────────────────────────────────────────────────────────┐ │
│  │  Trade Recommendations                                   │ │
│  │  [Sell Orders Tab] [Buy Orders Tab]                     │ │
│  │  ┌────────────────────────────────────────────────────┐ │ │
│  │  │ Table: Priority | Ticker | Shares | ...           │ │ │
│  │  └────────────────────────────────────────────────────┘ │ │
│  └──────────────────────────────────────────────────────────┘ │
│                                                                │
│  ┌──────────────────────────────────────────────────────────┐ │
│  │  Expected Impact                                         │ │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────┐              │ │
│  │  │  Drift   │  │   Risk   │  │  Sharpe  │              │ │
│  │  │ 5.2→0.3% │  │  72→84   │  │ 1.42→1.58│              │ │
│  │  └──────────┘  └──────────┘  └──────────┘              │ │
│  └──────────────────────────────────────────────────────────┘ │
│                                                                │
│  ┌──────────────────────────────────────────────────────────┐ │
│  │  AI Insights & Warnings                                  │ │
│  │  [Insight Cards]                                         │ │
│  └──────────────────────────────────────────────────────────┘ │
│                                                                │
│  ┌──────────────────────────────────────────────────────────┐ │
│  │  Execution Guidance (Stepper)                            │ │
│  └──────────────────────────────────────────────────────────┘ │
│                                                                │
│  ┌──────────────────────────────────────────────────────────┐ │
│  │  [Execute All] [Refresh] [Export Report]                │ │
│  └──────────────────────────────────────────────────────────┘ │
│                                                                │
├────────────────────────────────────────────────────────────────┤
│  Footer: © 2026 | Privacy | Terms | Support                   │
└────────────────────────────────────────────────────────────────┘

Specs:
- Max width: 1400px
- Container padding: 48px
- Component margins: 32px
- Grid: 12 columns
```

### 6.2 Tablet Layout (768px - 1199px)

```
┌──────────────────────────────────────┐
│  Header: [☰] Logo         [User]    │
├──────────────────────────────────────┤
│                                      │
│  ┌────────────────────────────────┐ │
│  │  Page Header                   │ │
│  │  87% Confidence                │ │
│  └────────────────────────────────┘ │
│                                      │
│  ┌────────────────────────────────┐ │
│  │  Health Dashboard              │ │
│  │  ┌──────┐ ┌──────┐             │ │
│  │  │Drift │ │After │             │ │
│  │  └──────┘ └──────┘             │ │
│  │  ┌──────┐ ┌──────┐             │ │
│  │  │ Risk │ │Sharpe│             │ │
│  │  └──────┘ └──────┘             │ │
│  └────────────────────────────────┘ │
│                                      │
│  [All other components stacked]     │
│                                      │
│  ┌────────────────────────────────┐ │
│  │  Model Contributions           │ │
│  │  ┌──────────┐ ┌──────────┐    │ │
│  │  │  CVXPY   │ │ XGBoost  │    │ │
│  │  └──────────┘ └──────────┘    │ │
│  │  ┌──────────┐ ┌──────────┐    │ │
│  │  │   LSTM   │ │   LLM    │    │ │
│  │  └──────────┘ └──────────┘    │ │
│  └────────────────────────────────┘ │
│                                      │
│  [Action Buttons - Full Width]      │
│                                      │
└──────────────────────────────────────┘

Specs:
- Container padding: 24px
- Component margins: 24px
- Grid: 2 columns
```

### 6.3 Mobile Layout (< 768px)

```
┌────────────────────────┐
│  [☰]  Logo      [User] │
├────────────────────────┤
│                        │
│ ┌────────────────────┐ │
│ │  AI Recommendations│ │
│ │  87% Confidence    │ │
│ └────────────────────┘ │
│                        │
│ ┌────────────────────┐ │
│ │  Drift             │ │
│ │  5.2% → 0.3%       │ │
│ └────────────────────┘ │
│                        │
│ ┌────────────────────┐ │
│ │  Risk              │ │
│ │  72 → 84           │ │
│ └────────────────────┘ │
│                        │
│ ┌────────────────────┐ │
│ │  Sharpe            │ │
│ │  1.42 → 1.58       │ │
│ └────────────────────┘ │
│                        │
│ [Summary Card]         │
│                        │
│ [Models - Accordion]   │
│ ▼ View Models          │
│                        │
│ [Trades - Accordion]   │
│ ▼ View Trades          │
│                        │
│ [Impact - Accordion]   │
│ ▼ View Impact          │
│                        │
│ [Insights - Accordion] │
│ ▼ View Insights        │
│                        │
│ ┌────────────────────┐ │
│ │  Execute All       │ │
│ └────────────────────┘ │
│                        │
└────────────────────────┘

Specs:
- Container padding: 16px
- Component margins: 16px
- Single column layout
- Accordion components
- Bottom sticky action bar
```

---

## 7. Wireframes

### 7.1 Main Page Wireframe

```
+-----------------------------------------------------------+
|  HEADER                                                   |
|  [Logo]        [Nav Items]              [User] [Settings]|
+-----------------------------------------------------------+
|                                                           |
|  +-------------------------------------------------------+|
|  | PAGE TITLE                              [Confidence]  ||
|  | AI-Powered Rebalance Recommendations      87%         ||
|  +-------------------------------------------------------+|
|                                                           |
|  +-------------------------------------------------------+|
|  | PORTFOLIO HEALTH (Gradient Background)                ||
|  | +------------+ +------------+ +------------+ +------+ ||
|  | | [Icon]     | | [Icon]     | | [Icon]     | |[Icon]| ||
|  | | Drift      | | After      | | Risk       | |Sharpe| ||
|  | | 5.2%       | | 0.3%       | | 72→84      | |1.42→ | ||
|  | |            | |            | |            | |1.58  | ||
|  | +------------+ +------------+ +------------+ +------+ ||
|  +-------------------------------------------------------+|
|                                                           |
|  +-------------------------------------------------------+|
|  | [i] AI RECOMMENDATION SUMMARY                         ||
|  | Based on 4 models, we recommend 15 trades...          ||
|  | • 8 Sell Orders • 7 Buy Orders                        ||
|  +-------------------------------------------------------+|
|                                                           |
|  +-------------------------------------------------------+|
|  | MODEL CONTRIBUTIONS                                   ||
|  | +----------------------+  +----------------------+     ||
|  | | [Icon] CVXPY        |  | [Icon] XGBoost       |     ||
|  | | 40% Weight          |  | 30% Weight           |     ||
|  | | [Progress Bar] 95%  |  | [Progress Bar] 78%   |     ||
|  | +----------------------+  +----------------------+     ||
|  | +----------------------+  +----------------------+     ||
|  | | [Icon] LSTM         |  | [Icon] LLM           |     ||
|  | | 20% Weight          |  | 10% Weight           |     ||
|  | | [Progress Bar] 70%  |  | [Progress Bar] 85%   |     ||
|  | +----------------------+  +----------------------+     ||
|  +-------------------------------------------------------+|
|                                                           |
|  +-------------------------------------------------------+|
|  | TRADE RECOMMENDATIONS                                 ||
|  | [Sell Orders (8)] [Buy Orders (7)]                    ||
|  | +---------------------------------------------------+ ||
|  | | Pri | Ticker | Shares | Current | Target | Conf  | ||
|  | +---------------------------------------------------+ ||
|  | | [H] | AAPL   | 28     | 4.3%    | 3.0%   | [87%] | ||
|  | | [H] | MSFT   | 15     | 6.7%    | 5.0%   | [85%] | ||
|  | | [M] | BND    | 45     | 4.3%    | 6.0%   | [82%] | ||
|  | +---------------------------------------------------+ ||
|  +-------------------------------------------------------+|
|                                                           |
|  +-------------------------------------------------------+|
|  | EXPECTED IMPACT                                       ||
|  | +--------------+  +--------------+  +--------------+  ||
|  | | Drift Reduce |  | Risk Score   |  | Sharpe Ratio |  ||
|  | | 5.2% → 0.3%  |  | 72 → 84      |  | 1.42 → 1.58  |  ||
|  | | ▼ -94%       |  | ▲ +16.7%     |  | ▲ +11.3%     |  ||
|  | +--------------+  +--------------+  +--------------+  ||
|  +-------------------------------------------------------+|
|                                                           |
|  +-------------------------------------------------------+|
|  | AI INSIGHTS                                           ||
|  | [✓] Tax Optimization • 85% Confidence                 ||
|  |     Consider tax-loss harvesting on TSLA              ||
|  |                                                       ||
|  | [i] Market Timing • 78% Confidence                    ||
|  |     Good window for rebalancing (VIX: 18.5)           ||
|  +-------------------------------------------------------+|
|                                                           |
|  +-------------------------------------------------------+|
|  | EXECUTION GUIDANCE                                    ||
|  | 1. ● Review Recommendations                           ||
|  | 2. ○ Check Market Conditions                          ||
|  | 3. ○ Execute Sell Orders                              ||
|  | 4. ○ Execute Buy Orders                               ||
|  | 5. ○ Monitor Results                                  ||
|  +-------------------------------------------------------+|
|                                                           |
|  +-------------------------------------------------------+|
|  |     [Execute All Trades]  [Refresh]  [Export]        ||
|  +-------------------------------------------------------+|
|                                                           |
+-----------------------------------------------------------+
|  FOOTER: © 2026 | Privacy | Terms | Support               |
+-----------------------------------------------------------+
```

### 7.2 Mobile Wireframe

```
+---------------------+
| [☰] Logo     [User] |
+---------------------+
|                     |
| +-----------------+ |
| | AI Recommend    | |
| | 87% Confidence  | |
| +-----------------+ |
|                     |
| +-----------------+ |
| | Drift           | |
| | 5.2% → 0.3%     | |
| +-----------------+ |
|                     |
| +-----------------+ |
| | Summary         | |
| | 15 trades...    | |
| +-----------------+ |
|                     |
| +-----------------+ |
| | ▼ View Models   | |
| +-----------------+ |
|                     |
| +-----------------+ |
| | ▼ View Trades   | |
| +-----------------+ |
|                     |
| +-----------------+ |
| | ▼ View Impact   | |
| +-----------------+ |
|                     |
| +-----------------+ |
| | ▼ View Insights | |
| +-----------------+ |
|                     |
| +-----------------+ |
| | Execute All     | |
| +-----------------+ |
|                     |
+---------------------+
```

---

## 8. Mockups

### 8.1 High-Fidelity Mockup - Desktop

[See attached full-color mockup file]

**Key Features Shown:**
1. Purple gradient header with confidence badge
2. 4-column health metrics with icons
3. Blue info alert with summary
4. 4 model contribution cards (color-coded)
5. Tabbed trade table with priority badges
6. 3 impact cards with before/after arrows
7. Green/blue insight cards
8. Vertical stepper for guidance
9. Large purple CTA button

### 8.2 Component Mockups

#### Portfolio Health Card
```
┌────────────────────────────────────────────────────────┐
│ ╔═══════════════════════════════════════════════════╗ │
│ ║  Portfolio Health Overview                        ║ │
│ ║  (Purple Gradient Background, White Text)         ║ │
│ ╚═══════════════════════════════════════════════════╝ │
│                                                        │
│  ╭──────────╮  ╭──────────╮  ╭──────────╮  ╭────────╮│
│  │ ⚠        │  │ ✓        │  │ ⚡       │  │ ↗      ││
│  │ Drift    │  │ After    │  │ Risk     │  │ Sharpe ││
│  │          │  │          │  │          │  │        ││
│  │  5.2%    │  │  0.3%    │  │ 72 → 84  │  │ 1.42→  ││
│  │          │  │          │  │          │  │  1.58  ││
│  │          │  │  +12 ▲   │  │          │  │ +0.16▲ ││
│  ╰──────────╯  ╰──────────╯  ╰──────────╯  ╰────────╯│
│    (Red)         (Green)        (Yellow)     (Mint)   │
└────────────────────────────────────────────────────────┘
```

#### Model Contribution Card
```
┌─────────────────────────────────────┐
│ ┃ Calculate Icon                    │
│ ┃                                   │
│ ┃ CVXPY Optimizer                   │
│ ┃ Weight: 40% • Confidence: 95%    │
│ ┃                                   │
│ ┃ ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓░ 95%         │
│ ┃                                   │
│ ┃ Mathematical optimization for     │
│ ┃ optimal allocation                │
└─────────────────────────────────────┘
(Blue left border, white background)
```

#### Trade Table Row
```
┌───────────────────────────────────────────────────────────────┐
│┃ HIGH ▓  AAPL  28  4.3%  3.0%  +1.3%  $5,108  ▓▓▓▓▓ 87%  ... │
│┃ (Red)  Bold  Bold  →     →    (Red)  Bold    (Progress)     │
└───────────────────────────────────────────────────────────────┘
Hover: Light purple background, slight elevation
```

---

## 9. Interaction Design

### 9.1 User Interactions

#### Card Hover
```
State: Default
┌────────────┐
│   Card     │  Shadow: Level 1
└────────────┘

↓ Hover

State: Hover
┌────────────┐
│   Card     │  Shadow: Level 2
└────────────┘  Transform: translateY(-4px)
                Transition: 0.3s ease
```

#### Button Click
```
State: Default → Hover → Active → Processing

Default:  [Execute All Trades]
Hover:    [Execute All Trades]  (Elevated)
Active:   [Execute All Trades]  (Pressed)
Process:  [⟳ Executing...]      (Spinner)
Success:  [✓ Executed]          (Green)
```

#### Table Row Expansion
```
Click row to expand:

┌──────────────────────────────┐
│ HIGH AAPL 28 shares...  [▼] │
├──────────────────────────────┤
│                              │
│ Detailed Information:        │
│ • Reason: Overweight by...   │
│ • Tax Impact: $204.35        │
│ • Confidence: 87%            │
│ • Execution: Market order    │
│                              │
└──────────────────────────────┘
```

### 9.2 State Transitions

#### Loading State
```
Initial Load:
1. Show skeleton screens (0.5s)
2. Fade in components (0.3s each)
3. Animate progress bars (1s)
4. Pulse confidence badges (0.5s)
```

#### Error State
```
If API fails:
┌────────────────────────────┐
│ ⚠ Error Loading            │
│                            │
│ Unable to fetch            │
│ recommendations            │
│                            │
│ [Retry] [Contact Support] │
└────────────────────────────┘
```

#### Empty State
```
No recommendations:
┌────────────────────────────┐
│      ✨                    │
│                            │
│ No Recommendations Yet     │
│                            │
│ Your portfolio is well-    │
│ balanced!                  │
│                            │
│ [View Analytics]           │
└────────────────────────────┘
```

### 9.3 Animations

#### Page Load Sequence
```
0.0s: Header appears (fade in)
0.2s: Health dashboard slides in from top
0.4s: Summary alert fades in
0.6s: Model cards slide in from left (staggered)
0.8s: Trade table fades in
1.0s: Impact cards slide in from bottom
1.2s: Insights appear
1.4s: Action buttons pulse once
```

#### Micro-interactions
```
Hover Effects:
- Cards: Elevate 4px, 0.3s ease
- Buttons: Brighten 10%, 0.2s ease
- Table rows: Background change, 0.15s

Click Feedback:
- Buttons: Scale 0.98, 0.1s
- Links: Underline appears, 0.2s
```

---

## 10. Responsive Design

### 10.1 Breakpoints

```
Mobile:      320px - 767px
Tablet:      768px - 1199px
Desktop:     1200px - 1919px
Large:       1920px+
```

### 10.2 Responsive Rules

#### Typography
```
Mobile:
- H1: 32px
- H2: 24px
- Body: 14px

Tablet:
- H1: 40px
- H2: 28px
- Body: 15px

Desktop:
- H1: 48px
- H2: 32px
- Body: 16px
```

#### Grid
```
Mobile:   1 column
Tablet:   2 columns
Desktop:  4 columns (health), 2 columns (models)
```

#### Components
```
Mobile:
- Stack all cards vertically
- Use accordions for collapsible sections
- Bottom sticky action bar
- Horizontal scroll for tables

Tablet:
- 2-column grid for metrics
- 2-column grid for models
- Tabbed interface for trades

Desktop:
- Full layout as designed
- No compromises
```

---

## 11. Accessibility

### 11.1 WCAG 2.1 Level AAA Compliance

#### Color Contrast
```
Text on Background:
- Primary text: 12:1 ratio ✓
- Secondary text: 7:1 ratio ✓
- Large text: 7:1 ratio ✓

Links:
- Underlined + Color
- Focus indicator: 3:1 ratio ✓
```

#### Keyboard Navigation
```
Tab Order:
1. Header navigation
2. Main content
3. Action buttons
4. Footer links

Focus Indicators:
- 2px solid #667eea outline
- 2px offset from element
- Visible on all interactive elements
```

#### Screen Readers
```
ARIA Labels:
- role="main" on content
- role="navigation" on nav
- aria-label on icons
- aria-describedby for tooltips
- aria-live for updates
```

### 11.2 Accessibility Features

```
✓ Keyboard-only navigation
✓ Screen reader compatible
✓ High contrast mode support
✓ Reduced motion option
✓ Text resizing up to 200%
✓ Alt text on all images
✓ Semantic HTML structure
✓ Skip to content link
```

---

## 12. Implementation Guidelines

### 12.1 Technology Stack

```
Frontend Framework: React 18+
UI Library: Material-UI (MUI) v5
State Management: Redux Toolkit
Styling: CSS-in-JS (Emotion)
Charts: Recharts / Chart.js
Icons: Material Design Icons
```

### 12.2 Component Structure

```
src/
├── components/
│   ├── RebalanceRecommendation/
│   │   ├── index.jsx
│   │   ├── PortfolioHealthDashboard.jsx
│   │   ├── AIRecommendationSummary.jsx
│   │   ├── ModelContributions.jsx
│   │   ├── TradeRecommendations.jsx
│   │   ├── ExpectedImpact.jsx
│   │   ├── AIInsights.jsx
│   │   ├── ExecutionGuidance.jsx
│   │   └── ActionButtons.jsx
│   └── shared/
│       ├── Card.jsx
│       ├── Button.jsx
│       ├── Badge.jsx
│       └── ProgressBar.jsx
├── styles/
│   ├── theme.js
│   ├── colors.js
│   └── typography.js
└── utils/
    └── formatters.js
```

### 12.3 Performance Requirements

```
Target Metrics:
- First Contentful Paint: < 1.5s
- Time to Interactive: < 3.5s
- Lighthouse Score: > 90
- Bundle Size: < 500KB gzipped
```

### 12.4 Browser Support

```
Modern Browsers:
✓ Chrome 90+
✓ Firefox 88+
✓ Safari 14+
✓ Edge 90+

Mobile:
✓ iOS Safari 14+
✓ Chrome Android 90+
```

---

## Appendix

### A. Color Palette Reference

```css
/* Primary */
--color-primary: #667eea;
--color-primary-dark: #764ba2;
--color-primary-light: #8b96f5;

/* Semantic */
--color-success: #2ecc71;
--color-warning: #f39c12;
--color-error: #e74c3c;
--color-info: #3498db;

/* Models */
--color-cvxpy: #3498db;
--color-xgboost: #e74c3c;
--color-lstm: #2ecc71;
--color-llm: #9b59b6;

/* Neutral */
--color-text-primary: #2c3e50;
--color-text-secondary: #7f8c8d;
--color-background: #f8f9fa;
--color-border: #ecf0f1;
```

### B. Spacing Scale

```css
--spacing-xs: 4px;
--spacing-sm: 8px;
--spacing-md: 16px;
--spacing-lg: 24px;
--spacing-xl: 32px;
--spacing-2xl: 48px;
--spacing-3xl: 64px;
--spacing-4xl: 96px;
```

### C. Typography Scale

```css
--font-size-xs: 12px;
--font-size-sm: 14px;
--font-size-md: 16px;
--font-size-lg: 18px;
--font-size-xl: 24px;
--font-size-2xl: 32px;
--font-size-3xl: 48px;

--line-height-tight: 1.25;
--line-height-normal: 1.5;
--line-height-relaxed: 1.75;
```

---

**Document Version:** 1.0  
**Last Updated:** February 2026  
**Next Review:** March 2026  

**Approved By:**  
- Product Design Lead  
- Engineering Lead  
- UX Research Lead  

---

**END OF DOCUMENT**
