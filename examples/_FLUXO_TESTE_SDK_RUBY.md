# FLUXO DE TESTES DA SDK Ruby (gem `falaai-api`)
@version 1.0.0 | 30/09/2026 | MANUAL — nao e regenerado pelo exportador de exemplos
SDK: `D:\ProjetoFalaAI\FalaAI\FalaAI_api\sdks\ruby\` (gem `falaai-api`) · Docker: imagem `ruby:3.3`
Regra de fundo: `.opencode/rules/macro/modulos/falaai-api/sdk-fonte-unica.md` (tests/e2e = MANUAL)

## Scripts e arquivos usados (nomes e paths exatos — LINGUAGEM: Ruby)
| # | Script / Arquivo | Path completo | Papel no fluxo |
|---|---|---|---|
| 1 | `run_docker.ps1` v1.0.0 | `D:\ProjetoFalaAI\FalaAI\FalaAI_api\sdks\ruby\tests\e2e\run_docker.ps1` | WRAPPER (PowerShell): valida gemspec + mp3 → **PASSO 0a** (sync exemplos) → Docker `ruby:3.3` (gem install) → **PASSO FINAL** (sync sandbox-responses) |
| 2 | `run_examples.sh` v1.0.0 | `D:\ProjetoFalaAI\FalaAI\FalaAI_api\sdks\ruby\tests\e2e\run_examples.sh` | RUNNER (bash, roda DENTRO do container): **limpa logs antigos**, `ruby -Ilib` dos 4 exemplos, grava os logs JSON + `.html` |
| 3 | `_generate_ruby_examples.mjs` v1.4.0 | `D:\ProjetoFalaAI\FalaAI\FalaAI_api\sdks\ruby\examples\_generate_ruby_examples.mjs` | EXPORTADOR (**PASSO 0a**, roda no HOST): re-exporta os 4 `.rb` da FONTE UNICA + **gera o README** + **copia o mp3** |
| 4 | `sandbox-examples.ts` | `D:\ProjetoFalaAI\FalaAI\FalaAI_landing\lib\sandbox-examples.ts` | FONTE UNICA dos exemplos (8 linguagens x 4 endpoints, tokens `{{...}}`) |
| 5 | `health.rb` · `transcribe.rb` · `diagnose.rb` · `audit.rb` | `D:\ProjetoFalaAI\FalaAI\FalaAI_api\sdks\ruby\examples\*.rb` | OS 4 EXEMPLOS GERADOS (usam o SDK Ruby: `FalaAI::Configuration` + `*Api` + `JSON.pretty_generate(obj.to_hash)`) |
| 6 | `README.md` | `D:\ProjetoFalaAI\FalaAI\FalaAI_api\sdks\ruby\examples\README.md` | manual dos exemplos (**GERADO** pelo exportador v1.4.0 — versao/data) |
| 7 | `demo_callcenter.mp3` | `D:\ProjetoFalaAI\FalaAI\FalaAI_api\sdks\ruby\tests\e2e\demo_callcenter.mp3` | audio do teste (1.3 MB) |
| 8 | `logs\ruby_<endpoint>_<ts>_tst.json` (+ `.html`) | `D:\ProjetoFalaAI\FalaAI\FalaAI_api\sdks\ruby\tests\e2e\logs\` | LOGS gerados pelo runner (**limpa os antigos a cada rodada**) |
| 9 | `VERSION.txt` | `D:\ProjetoFalaAI\FalaAI\FalaAI_api\VERSION.txt` | versao da API que o health devolve (`api_v1.21.49`) — SEM BOM |
| 10 | `_FLUXO_TESTE_SDK_RUBY.md` (este doc) | `D:\ProjetoFalaAI\FalaAI\FalaAI_api\sdks\ruby\examples\_FLUXO_TESTE_SDK_RUBY.md` | este doc |

## Requisitos do dev (inviolaveis)
- R-A: roda em Docker DA LINGUAGEM (`ruby:3.3`)
- R-B: roda os 4 exemplos GERADOS (`health/transcribe/diagnose/audit.rb`) — nunca reescreve
- R-C: LOG = request (codigo do exemplo) + response (o objeto do SDK Ruby) + `.html` da auditoria
- R-D: chave `fai_668e6474b83dd24540860d9ab9df0b738f7171a0f5bd8179` hardcoded no runner (local-only)
- R-E: **PASSO 0 antes de tudo** — exemplos sincronizados com a FONTE UNICA

## Fluxo (com os nomes reais dos scripts)
```mermaid
flowchart TD
    A["1. run_docker.ps1<br/>sdks/ruby/tests/e2e/run_docker.ps1"] --> B{"valida gemspec + demo_callcenter.mp3"}
    B --> P0["PASSO 0a (HOST): node _generate_ruby_examples.mjs<br/>(exemplos + README + mp3 = sandbox-examples.ts)"]
    P0 --> C["2. docker run ruby:3.3<br/>-e FALAAI_API_KEY -e TZ -e FALAAI_BASE_URL<br/>-v sdks/ruby:/ruby-sdk"]
    C --> D["3. run_examples.sh LIMPA logs antigos<br/>+ gem install typhoeus mime-types"]
    D --> E{"para cada endpoint<br/>health / transcribe / diagnostic / auditoria"}
    E --> F["ruby -Ilib examples/<f>.rb<br/>(usa o SDK Ruby: Configuration + *Api + JSON.pretty_generate)"]
    F --> G{"stdout = JSON valido?"}
    G -- "sim" --> H["log: logs/ruby_<endpoint>_<ts>_tst.json<br/>{language, endpoint, generated_at,<br/>request = codigo Ruby, response = objeto do SDK}"]
    G -- "nao" --> I["log {response: null, error: stdout}"]
    H --> J{"endpoint = auditoria?"}
    I --> J
    J -- "sim" --> K["unzip html_report (base64+gzip)<br/>grava ruby_auditoria_<ts>_tst.html"]
    J -- "nao" --> E
    K --> E
    E -- "fim" --> L["TODOS OK (exit 0) / HOUVE FALHA (exit 1)"]
    L --> M["PASSO FINAL: node _sync_sandbox_responses.mjs<br/>(so em sucesso) -> lib/sandbox-responses.ts"]
```

## Comando (API no micro do dev)
```powershell
powershell -ExecutionPolicy Bypass -File "D:\ProjetoFalaAI\FalaAI\FalaAI_api\sdks\ruby\tests\e2e\run_docker.ps1" -BaseUrl http://host.docker.internal:8002 -Only all
# -Only: all | health | transcribe | diagnostic | auditoria
# health = publico (sem creditos) · transcribe/diagnostic/auditoria = consomem creditos da chave FAI
```

## Log (formato — secoes separadas por linha em branco, JSON valido)
```json
{
  "language": "ruby",
  "endpoint": "health",
  "generated_at": "2026-09-30T17:37:14Z",

  "request": "<codigo do exemplo .rb, linhas escapadas como \n>",

  "response": { "o objeto do SDK Ruby serializado (JSON.pretty_generate) — snake_case" }
}
```
Falha: `"response": null, "error": "<stdout/stderr>"` · Auditoria: + `ruby_auditoria_<ts>_tst.html` (unzip de `html_report`)

## O que garantir
1. O exemplo usa o SDK Ruby (`FalaAI::Configuration` + `*Api` + `JSON.pretty_generate`) — NUNCA chamada HTTP/curl direta.
2. O request sai do SDK (Bearer fai_...) — a API responde — o SDK devolve — o runner grava o log.
3. PASSO 0 roda ANTES de qualquer teste (exemplos na ultima versao da fonte unica).
4. O runner LIMPA os logs antigos a cada rodada (so os da execucao atual ficam).
5. PASSO FINAL: em sucesso, o wrapper sincroniza `lib/sandbox-responses.ts` (automatico).
6. Refaco a qualquer momento: mesmo comando = mesmo comportamento (deterministico).

## Historico
- **v1.0.0 (30/09 14:37):** doc inicial (padrao 3.1) — wrapper v1.0.0 (PASSO 0a + sync), runner v1.0.0 (log JSON canonico + secoes separadas + limpa logs + `.html`), exportador v1.4.0 (README GERADO + mp3); exemplos com `JSON.pretty_generate`; scheme dinamico (http/https).