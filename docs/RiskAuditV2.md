# FalaAI::RiskAuditV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**RiskAuditMetaV2**](RiskAuditMetaV2.md) | Identification + usage |  |
| **participants** | [**RiskAuditParticipantsV2**](RiskAuditParticipantsV2.md) | Participants/roles/direction |  |
| **verdict** | [**RiskAuditVerdictV2**](RiskAuditVerdictV2.md) | Verdict + level + applied actions |  |
| **scores** | [**RiskAuditScoresV2**](RiskAuditScoresV2.md) | Consolidated + per-participant scores |  |
| **detections** | [**RiskAuditDetectionsV2**](RiskAuditDetectionsV2.md) | violations/positives/client alerts |  |
| **analysis** | [**RiskAuditAnalysisV2**](RiskAuditAnalysisV2.md) | global_metrics + final_analysis + frameworks |  |
| **timeline** | [**RiskAuditTimelineV2**](RiskAuditTimelineV2.md) | turns_sentiment + audio_events + groups |  |
| **audio_event_model** | [**RiskAuditAudioEventModelV2**](RiskAuditAudioEventModelV2.md) | MAC audio event semantics |  |
| **categories_summary** | **Hash&lt;String, Object&gt;** | Per-category summary (keyed by category) |  |
| **indexer** | [**RiskAuditIndexerV2**](RiskAuditIndexerV2.md) | Suggested terms for bank |  |
| **summary** | [**RiskAuditSummaryV2**](RiskAuditSummaryV2.md) | Executive summary counts |  |
| **actions_i18n** | **Hash&lt;String, Object&gt;** | Used actions i18n catalog (keyed by action) |  |
| **audit_decisions** | [**RiskAuditAuditDecisionsV2**](RiskAuditAuditDecisionsV2.md) | Risk origin + validator changes |  |
| **scoring_explanation** | [**RiskAuditScoringExplanationV2**](RiskAuditScoringExplanationV2.md) | Score composition explanation |  |
| **html_report** | **String** | HTML report (base64 gzip) |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::RiskAuditV2.new(
  meta: null,
  participants: null,
  verdict: null,
  scores: null,
  detections: null,
  analysis: null,
  timeline: null,
  audio_event_model: null,
  categories_summary: null,
  indexer: null,
  summary: null,
  actions_i18n: null,
  audit_decisions: null,
  scoring_explanation: null,
  html_report: null
)
```

