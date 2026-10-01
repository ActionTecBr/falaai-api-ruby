# falaai-api — Ruby SDK for Conversation Intelligence, Speech Analytics & Compliance

[![Gem version](https://img.shields.io/gem/v/falaai-api)](https://rubygems.org/gems/falaai-api)
[![License: MIT](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![CI](https://github.com/ActionTecBr/falaai-api-ruby/actions/workflows/ci.yml/badge.svg)](https://github.com/ActionTecBr/falaai-api-ruby/actions/workflows/ci.yml)
[![Docs](https://img.shields.io/badge/docs-GitHub%20Pages-blue)](https://actiontecbr.github.io/falaai-api-ruby/)

Official **Ruby SDK** for the **FalaAI API** — transcribe audio, analyze conversations and audit compliance (COPC CX, ISO 18295-1). **Use each API independently or combine them into your own pipeline.**

> Analyze calls, contact-center recordings, voice notes, chat and email. Get speaker-separated transcripts, summaries, reasons, actions, sentiment and a **compliance risk score**.

## Use any FalaAI API independently

FalaAI is a set of **independent REST APIs**. You **do not** need FalaAI Transcription to use FalaAI analysis or compliance auditing. If your application already has a transcript, send that text straight to the analysis APIs.

| If you have... | Use |
|---|---|
| Audio but no transcript | `FalaAI::SpeechApi` — Transcription |
| An existing transcript | `FalaAI::AnalysisApi` — Diagnostic |
| A transcript needing compliance analysis | `FalaAI::AnalysisApi` — Risk Audit |
| An existing transcript needing both | Diagnostic + Risk Audit |
| Your own STT provider (Whisper, Deepgram...) | Skip FalaAI Transcription |

```text
Your STT                             ->  FalaAI Diagnostic  ->  FalaAI Risk Audit
Telegram voice -> your STT           ->  FalaAI Risk Audit
3CX / Asterisk / Genesys transcript  ->  FalaAI Diagnostic  ->  FalaAI Risk Audit
CRM conversation                     ->  FalaAI Risk Audit
```

## Use the APIs the way you want

Every FalaAI API is **independent and optional** — chain any subset, in any combination.

```mermaid
flowchart LR
  A["Audio"] -.->|optional| T["Transcribe"]
  T --> X["Text / dialog"]
  S["Your own STT / CRM / chat / existing transcript"] --> X
  X -.->|optional| D["Diagnostic"]
  X -.->|optional| R["Risk Audit"]
  D --> O["Structured intelligence + auditable report"]
  R --> O
```

> Skip **Transcribe** if you already have text. Call only **Diagnostic**, only **Risk Audit**, or both.

## Install

```bash
gem install falaai-api
```

Requires **Ruby 2.7+**.

## Quickstart

### 1. Get an API key
Create a free account and copy your `fai_` key: <https://falaai.action.tec.br/api/auth> (or the [Dashboard](https://falaai.action.tec.br/api/dashboard)).

### 2. Set environment variables

```bash
FALAAI_BASE_URL=https://api01-falaai.action.tec.br
FALAAI_API_KEY=fai_xxxxxxxx
```

### 3. Transcribe a call (audio -> text)

```ruby
require 'falaai-api'

config = FalaAI::Configuration.new
config.host = ENV.fetch('FALAAI_BASE_URL', 'https://api01-falaai.action.tec.br')
config.access_token = ENV['FALAAI_API_KEY']
client = FalaAI::ApiClient.new(config)

transcription, _status = FalaAI::SpeechApi.new(client).create_transcription_v1_audio_transcriptions_post_with_http_info(
  File.open('call.mp3'),
  { model: 'falaai-transcribe-1', language: 'pt', client_reference_id: 'call_202609271408' }
)

puts JSON.pretty_generate(transcription)
```

Expected response (abridged):

```json
{
  "id": "tr-...",
  "object": "transcription",
  "model": "falaai-transcribe-1",
  "language": "por",
  "duration_seconds": 25.0,
  "text": "...",
  "dialog": "Speaker 1: [...] ...",
  "usage": { "audio_seconds": 25.0, "credits_consumed": 25, "processing_ms": 951 }
}
```

> Only need analysis? **Skip step 3** and call `FalaAI::AnalysisApi` with your own transcript (use the `text` field for a plain transcript).

### 4. Analyze or audit an existing transcript (no transcription needed)

```ruby
require 'falaai-api'

config = FalaAI::Configuration.new
config.host = ENV['FALAAI_BASE_URL']
config.access_token = ENV['FALAAI_API_KEY']
client = FalaAI::ApiClient.new(config)
analysis = FalaAI::AnalysisApi.new(client)

transcript = 'Good morning, how can I help? I need to cancel my subscription.'

# 5 analyses in one call: summary, reason, action, topic, sentiment
diagnostic, _status = analysis.create_diagnostic_v1_analyze_diagnostic_post_with_http_info(
  FalaAI::DiagnosticRequest.new(text: transcript, language: 'pt-BR', duration_seconds: 81.46)
)

# Compliance risk score + violations + auditable report
audit, _status = analysis.create_risk_audit_v1_analyze_risk_audit_post_with_http_info(
  FalaAI::RiskAuditRequest.new(text: transcript, language: 'pt-BR', response_language: 'pt-BR', duration_seconds: 81.46)
)
```

## What is FalaAI API?

FalaAI API is an **AI conversation-intelligence API** for analyzing customer-service, contact-center, sales, messaging and other business conversations. It combines speech-to-text (with speaker diarization and audio-event detection), conversation analysis (summary, contact reason, action taken, topic classification, sentiment) and a **compliance/risk audit** against **COPC CX** and **ISO 18295-1**. Conversation content is processed and discarded (zero-storage).

## What can you do with FalaAI?

- **Transcribe** audio to text with speaker separation and audio events.
- **Diagnose** a conversation: summary, reason, action taken, topic and sentiment.
- **Audit** conversations: compliance risk score, detections/violations and an auditable HTML report.
- **Track usage**, **manage webhooks** and **email alerts**, and **health/version** checks.

## Use cases

- **Contact center / Quality** — audit 100% of conversations instead of a sample.
- **Compliance / Legal** — auditable evidence for audits and disputes.
- **CX / Operations** — risk score, sentiment and reason per conversation.
- **BI / Data** — typed JSON ready for your database or analytics stack.

## SDK surface (Ruby)

| Class | Namespace | Purpose |
|---|---|---|
| `Configuration` | `FalaAI` | `host`, `access_token` |
| `ApiClient` | `FalaAI` | `FalaAI::ApiClient.new(config)` |
| `HealthApi` | `FalaAI` | `health_check` |
| `SpeechApi` | `FalaAI` | `create_transcription_v1_audio_transcriptions_post_with_http_info(...)` |
| `AnalysisApi` | `FalaAI` | `create_diagnostic_v1_analyze_diagnostic_post_with_http_info(...)`, `create_risk_audit_v1_analyze_risk_audit_post_with_http_info(...)` |
| `UsageApi` / `WebhooksApi` / `EmailAlertsApi` / `VersionApi` | `FalaAI` | management |
| Models | `FalaAI` | `DiagnosticRequest`, `RiskAuditRequest`, `Participant`, `DiagnosticAudioEvent` |
| `ApiError` | `FalaAI` | HTTP errors |

> Model IDs: `falaai-transcribe-1`, `falaai-diagnostic-1`, `falaai-risk-audit-1`.

## Examples

Runnable examples in [`examples/`](./examples): `health.rb`, `transcribe.rb`, `diagnose.rb`, `audit.rb`.

## Authentication

Every request requires `Authorization: Bearer fai_<your_key>` — except the public endpoints (`GET/HEAD /v1/health`, `GET /api/version`). Set the key with `Configuration#access_token=` (or `FALAAI_API_KEY`).

## Error handling

Non-2xx responses raise `FalaAI::ApiError`.

```ruby
require 'falaai-api'

begin
  health = FalaAI::HealthApi.new(client).health_check
  puts health.status
rescue FalaAI::ApiError => e
  warn "FalaAI API error: #{e.message}"
end
```

## Where to integrate (this SDK)

FalaAI is language-independent; this package targets **Ruby** backends.

| Platform / environment (this SDK's language: **Ruby**) | Integration |
|---|---|
| **Ruby on Rails** apps | `falaai-api` (Ruby) |
| Ruby workers / Sidekiq jobs | `falaai-api` (Ruby) |
| Ruby data pipelines | `falaai-api` (Ruby) |
| Other stacks (3CX, Salesforce, Genesys...) | REST / cURL — [API reference](https://api01-falaai.action.tec.br/docs) (or the SDK for that backend's language) |

> These are **integration examples**, not certified native integrations. Any platform can integrate through **REST / cURL** — see the [API reference](https://api01-falaai.action.tec.br/docs). Authenticated calls use `Authorization: Bearer fai_<key>`.

## Production usage

- Store API keys in environment variables or a secret manager — never hard-code.
- Reuse the `ApiClient` across requests.
- Handle `FalaAI::ApiError` explicitly.

## Compatibility

| Requirement | Version |
|---|---|
| Ruby | 2.7+ |
| API | v1.21.49 |

## Documentation

- **SDK docs (this language):** <https://actiontecbr.github.io/falaai-api-ruby/>
- **API reference (Swagger UI):** <https://api01-falaai.action.tec.br/docs>
- **OpenAPI contract:** <https://api01-falaai.action.tec.br/openapi.json>
- **Sandbox:** <https://falaai.action.tec.br/api#playground>
- **Quickstart:** <https://falaai.action.tec.br/api/quickstart>
- **Product page:** <https://falaai.action.tec.br/api>

## Versioning

Semantic versioning; the SDK version tracks the API version (`1.21.49`). See [CHANGELOG.md](CHANGELOG.md) and [Releases](https://github.com/ActionTecBr/falaai-api-ruby/releases).

## Security

See [SECURITY.md](SECURITY.md). Never commit real keys — use environment variables.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

[MIT](LICENSE).

## Links

- Website: <https://falaai.action.tec.br>
- API base URL: <https://api01-falaai.action.tec.br>
- GitHub organization: <https://github.com/ActionTecBr>
- Other SDKs: Python, Node.js, PHP, Go, Java, .NET.