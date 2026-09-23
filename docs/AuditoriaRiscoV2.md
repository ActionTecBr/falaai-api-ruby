# FalaAI::AuditoriaRiscoV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**AuditoriaRiscoMetaV2**](AuditoriaRiscoMetaV2.md) | Identification + usage |  |
| **participants** | [**AuditoriaRiscoParticipantsV2**](AuditoriaRiscoParticipantsV2.md) | Participants/roles/direction |  |
| **verdict** | [**AuditoriaRiscoVerdictV2**](AuditoriaRiscoVerdictV2.md) | Verdict + level + applied actions |  |
| **scores** | [**AuditoriaRiscoScoresV2**](AuditoriaRiscoScoresV2.md) | Consolidated + per-participant scores |  |
| **detections** | [**AuditoriaRiscoDetectionsV2**](AuditoriaRiscoDetectionsV2.md) | violations/positives/client alerts |  |
| **analysis** | [**AuditoriaRiscoAnalysisV2**](AuditoriaRiscoAnalysisV2.md) | global_metrics + final_analysis + frameworks |  |
| **timeline** | [**AuditoriaRiscoTimelineV2**](AuditoriaRiscoTimelineV2.md) | turns_sentiment + audio_events + groups |  |
| **audio_event_model** | [**AuditoriaRiscoAudioEventModelV2**](AuditoriaRiscoAudioEventModelV2.md) | MAC audio event semantics |  |
| **categories_summary** | **Hash&lt;String, Object&gt;** | Per-category summary (keyed by category) |  |
| **indexer** | [**AuditoriaRiscoIndexerV2**](AuditoriaRiscoIndexerV2.md) | Suggested terms for bank |  |
| **summary** | [**AuditoriaRiscoSummaryV2**](AuditoriaRiscoSummaryV2.md) | Executive summary counts |  |
| **acoes_i18n** | **Hash&lt;String, Object&gt;** | Used actions i18n catalog (keyed by action) |  |
| **audit_decisions** | [**AuditoriaRiscoAuditDecisionsV2**](AuditoriaRiscoAuditDecisionsV2.md) | Risk origin + validator changes |  |
| **scoring_explanation** | [**AuditoriaRiscoScoringExplanationV2**](AuditoriaRiscoScoringExplanationV2.md) | Score composition explanation |  |
| **html_report** | **String** | HTML report (base64 gzip) |  |

## Example

```ruby
require 'falaai-api'

instance = FalaAI::AuditoriaRiscoV2.new(
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
  acoes_i18n: null,
  audit_decisions: null,
  scoring_explanation: null,
  html_report: null
)
```

