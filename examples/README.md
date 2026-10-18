# sdks/ruby/examples - exemplos ruby (canonicos)

@version 1.4.0 | criado: 15/10/2026 18:55 | atualizado: 18/10/2026 00:33

## O que e
Os 7 exemplos ruby (.rb) - 4 endpoints + 3 variantes do WhatsApp - EXPORTADOS DA LANDING PAGE (fonte unica
de verdade). Nunca editados a mao.

## Fonte unica de verdade
- FalaAI_landing/lib/sandbox-examples.ts -> SANDBOX_EXAMPLES[<endpoint>].ruby
- que INTERPOLA FalaAI_landing/lib/sandbox-json-example.ts (SANDBOX_JSON_EXAMPLE = dados reais).

## Script (ferramenta)
_generate_ruby_examples.mjs (prefixo _ = ferramenta, nao exemplo)

| Comando                                      | Acao                                                      |
|----------------------------------------------|-----------------------------------------------------------|
| node _generate_ruby_examples.mjs             | Exporta (escreve os rb a partir da landing + README)     |
| node _generate_ruby_examples.mjs --check     | Verifica (compara rb x landing; exit 1 se divergir)      |

- Roda de QUALQUER pasta (resolve a landing pelo proprio caminho).
- Pre-requisito: Node (v22+).
- NUNCA edite os rb nem este README a mao: edite a landing e reexecute o script.

## Ordem obrigatoria (regra)
1. Altere a FONTE (landing / SANDBOX_JSON_EXAMPLE).
2. Valide o cURL primeiro:  node _generate_ruby_examples.mjs --check   (exit 0 = ok)
3. So depois espelhe nas linguagens.
4. Cadeia integrada no pipeline: scripts/regenerate_all.py (T11) exporta via node.

## Relatorio da ultima execucao
| Data | Modo | Resultado |
|------|------|-----------|
| 18/10/2026 00:33 | exportacao | OK - 7 exemplos ruby exportados da landing. |

| Arquivo | Endpoint | Status | Gerado em |
|---------|----------|--------|-----------|
| health.rb | GET  /v1/health | exportado (519 chars) | 18/10/2026 00:33 |
| transcribe.rb | POST /v1/audio/transcriptions | exportado (906 chars) | 18/10/2026 00:33 |
| diagnose.rb | POST /v1/analyze/diagnostic | exportado (4462 chars) | 18/10/2026 00:33 |
| audit.rb | POST /v1/analyze/riskAudit | exportado (3276 chars) | 18/10/2026 00:33 |
| whatsapp_preview.rb | POST /v1/whatsapp/extractConversations | exportado (1114 chars) | 18/10/2026 00:33 |
| whatsapp_periodo.rb | POST /v1/whatsapp/extractConversations | exportado (1131 chars) | 18/10/2026 00:33 |
| whatsapp_janelas.rb | POST /v1/whatsapp/extractConversations | exportado (1215 chars) | 18/10/2026 00:33 |

## Datas
- Criacao:     15/10/2026 18:55
- Atualizacao: 18/10/2026 00:33

Gerado automaticamente por _generate_ruby_examples.mjs - NAO edite a mao.
