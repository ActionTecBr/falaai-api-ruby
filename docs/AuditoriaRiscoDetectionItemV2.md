# FalaAI::AuditoriaRiscoDetectionItemV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **turn** | **Integer** | Turn number | [optional] |
| **interlocutor** | **String** | Speaker | [optional] |
| **role** | **String** | Role | [optional] |
| **timestamp_start_s** | **Float** | Start (s) | [optional] |
| **timestamp_end_s** | **Float** | End (s) | [optional] |
| **timestamp_formatted** | **String** | Formatted timestamp | [optional] |
| **term_text** | **String** | Detected term | [optional] |
| **suggested_term_for_bank** | **Object** | Suggested term for bank | [optional] |
| **category** | **String** | Category code | [optional] |
| **category_label** | **String** | Category label (i18n) |  |
| **category_color** | **String** | Category color | [optional] |
| **category_icon** | **String** | Category icon | [optional] |
| **criticality** | **String** | Criticality | [optional] |
| **category_threshold** | **Float** | Category threshold | [optional] |
| **category_type** | **String** | Category type | [optional] |
| **category_group** | **String** | Category group label (i18n) |  |
| **nature** | **String** | Nature | [optional] |
| **llm_confidence** | **Float** | LLM confidence | [optional] |
| **reason** | **String** | Reason | [optional] |
| **is_valid_context** | **Boolean** | Valid context | [optional] |
| **risk_probability** | **Float** | Risk probability | [optional] |
| **risk_impact** | **Float** | Risk impact | [optional] |
| **category_weight** | **Float** | Category weight | [optional] |
| **turn_sentiment** | **String** | Turn sentiment | [optional] |
| **intensity** | **Object** | Intensity | [optional] |
| **mod_applied** | **Float** | Total modifier applied | [optional] |
| **mac_applied** | **Float** | Audio modifier applied | [optional] |
| **mvad_applied** | **Float** | Intensity modifier applied | [optional] |
| **mod_formula** | **String** | Modifier formula | [optional] |
| **mac_details** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | MAC details | [optional] |
| **calibration_reason** | **String** | Calibration reason | [optional] |
| **final_score** | **Float** | Final score | [optional] |
| **final_score_formula** | **String** | Final score formula | [optional] |
| **conversation_limit** | **Object** | Conversation limit | [optional] |
| **apply_saturation** | **Boolean** | Apply saturation | [optional] |
| **block_repetition** | **Boolean** | Block repetition | [optional] |
| **status** | **String** | Status | [optional] |
| **effective_impact** | **Float** | Effective impact | [optional] |
| **saturation_factor** | **Float** | Saturation factor | [optional] |
| **saturation_formula** | **String** | Saturation formula | [optional] |
| **threshold_formula** | **String** | Threshold formula | [optional] |
| **blocked_formula** | **String** | Blocked formula | [optional] |
| **reconciliation_note** | **String** | Reconciliation note | [optional] |
| **violated_frameworks** | **Array&lt;Object&gt;** | Violated frameworks | [optional] |
| **citation_fidelity** | **Boolean** | Citation fidelity | [optional][default to true] |
| **subcategory** | **String** | Subcategory code | [optional] |
| **subcategory_label** | **String** | Subcategory label (i18n) | [optional] |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::AuditoriaRiscoDetectionItemV2.new(
  turn: null,
  interlocutor: null,
  role: null,
  timestamp_start_s: null,
  timestamp_end_s: null,
  timestamp_formatted: null,
  term_text: null,
  suggested_term_for_bank: null,
  category: null,
  category_label: null,
  category_color: null,
  category_icon: null,
  criticality: null,
  category_threshold: null,
  category_type: null,
  category_group: null,
  nature: null,
  llm_confidence: null,
  reason: null,
  is_valid_context: null,
  risk_probability: null,
  risk_impact: null,
  category_weight: null,
  turn_sentiment: null,
  intensity: null,
  mod_applied: null,
  mac_applied: null,
  mvad_applied: null,
  mod_formula: null,
  mac_details: null,
  calibration_reason: null,
  final_score: null,
  final_score_formula: null,
  conversation_limit: null,
  apply_saturation: null,
  block_repetition: null,
  status: null,
  effective_impact: null,
  saturation_factor: null,
  saturation_formula: null,
  threshold_formula: null,
  blocked_formula: null,
  reconciliation_note: null,
  violated_frameworks: null,
  citation_fidelity: null,
  subcategory: null,
  subcategory_label: null
)
```

