;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; META.scm — parallax-ssg

(define-module (parallax-ssg meta)
  #:export (architecture-decisions development-practices design-rationale language-rules components))

;; ============================================================================
;; LANGUAGE RULES: Absolute enforcement
;; ============================================================================

(define language-rules
  '((mandatory-language . "Chapel")
    (enforcement-level . "absolute")
    (rationale . "Each SSG satellite is the DEFINITIVE implementation for its language. parallax-ssg IS the Chapel SSG.")
    (violations
     ("Python implementation" . "FORBIDDEN")
     ("JavaScript/TypeScript" . "FORBIDDEN")
     ("Ruby/Go/Java/Rust" . "FORBIDDEN")
     ("Any non-Chapel language" . "FORBIDDEN - defeats the purpose of this satellite"))
    (correct-implementation
     (interpreter . "chpl")
     (version . "1.30+")
     (mcp-adapter . "adapters/ in ReScript (only exception - adapters are in ReScript for hub communication)"))))

;; ============================================================================
;; ARCHITECTURE DECISIONS (ADRs)
;; ============================================================================

(define architecture-decisions
  '((adr-001
     (title . "Chapel-Only Implementation")
     (status . "accepted")
     (date . "2025-12-16")
     (context . "SSG satellites must be in their target language")
     (decision . "parallax-ssg is written entirely in Chapel")
     (consequences . ("Language-specific features" "Idiomatic patterns" "Parallel processing")))

    (adr-002
     (title . "RSR Compliance")
     (status . "accepted")
     (date . "2025-12-15")
     (context . "Part of hyperpolymath ecosystem")
     (decision . "Follow Rhodium Standard Repository guidelines")
     (consequences . ("RSR Gold target" "SHA-pinned actions" "SPDX headers" "Dual licensing")))

    (adr-003
     (title . "Parallel-First Design")
     (status . "accepted")
     (date . "2025-12-17")
     (context . "Chapel excels at parallel processing")
     (decision . "Use Chapel's forall loops for parallel site generation")
     (consequences . ("High performance" "Thread-safe design" "Atomic counters")))

    (adr-004
     (title . "MCP Hub Integration")
     (status . "accepted")
     (date . "2025-12-17")
     (context . "Part of poly-ssg satellite constellation")
     (decision . "Connect to poly-ssg-mcp hub via ReScript adapter")
     (consequences . ("Unified interface" "Cross-language coordination" "ReScript exception allowed")))

    (adr-005
     (title . "44-Component Structure")
     (status . "accepted")
     (date . "2025-12-22")
     (context . "Standardized project structure across satellites")
     (decision . "Implement full 44-component SSG structure")
     (consequences . ("Complete feature set" "Standard tooling" "Full documentation")))))

;; ============================================================================
;; DEVELOPMENT PRACTICES
;; ============================================================================

(define development-practices
  '((code-style
     (languages . ("Chapel"))
     (formatting . "chapel-fmt where available")
     (documentation . "AsciiDoc primary, Markdown secondary"))

    (testing
     (framework . "Chapel built-in")
     (coverage-target . "80%")
     (types . ("unit" "integration" "e2e")))

    (security
     (sast . "CodeQL for adapter scanning")
     (secrets . "Environment variables only, never hardcoded")
     (headers . "SPDX license headers required"))

    (versioning
     (scheme . "SemVer 2.0.0")
     (changelog . "Keep a Changelog format"))

    (ci-cd
     (platform . "GitHub Actions")
     (language-enforcement . "Required, blocking")
     (caching . "Chapel installation cached"))))

;; ============================================================================
;; DESIGN RATIONALE
;; ============================================================================

(define design-rationale
  '((why-Chapel
     "This is THE Chapel SSG. No other language is acceptable."
     "Chapel provides built-in parallelism via forall loops."
     "Type-safe, performant, clean syntax for complex operations.")

    (why-parallel-first
     "Static site generation is embarrassingly parallel."
     "Each page can be processed independently."
     "Chapel's forall loops make this trivial to implement.")

    (why-44-components
     "Standardized structure across poly-ssg satellites."
     "Complete feature coverage."
     "Consistent developer experience.")))

;; ============================================================================
;; 44-COMPONENT STRUCTURE
;; ============================================================================

(define components
  '((total . 44)
    (complete . 44)
    (completion-percentage . 100)

    (categories
     ((core-engine (count . 4)
                   (items . ("Chapel Engine" "Markdown Synthesis" "Template Engine" "Variable Store"))
                   (locations . ("src/parallel-press.chpl")))

      (build-system (count . 4)
                    (items . ("Justfile" "Mustfile" "Containerfile" ".tool-versions"))
                    (locations . ("justfile" "Mustfile" "Containerfile" ".tool-versions")))

      (site-generation (count . 4)
                       (items . ("Content Processing" "Template Engine" "Output Generation" "Content Schema"))
                       (locations . ("src/parallel-press.chpl")))

      (adapters (count . 3)
                (items . ("MCP Server Connection" "ReScript Adapter" "Hub Interface"))
                (locations . ("adapters/src/ParallaxAdapter.res")))

      (testing (count . 4)
               (items . ("Unit Tests" "Markdown Tests" "Frontmatter Tests" "E2E Tests"))
               (locations . ("src/parallel-press.chpl" ".github/workflows/ci.yml")))

      (documentation (count . 8)
                     (items . ("README" "ROADMAP" "SECURITY" "CODE_OF_CONDUCT"
                               "CONTRIBUTING" "cookbook" "Adapter README" "copilot-instructions"))
                     (locations . ("README.adoc" "ROADMAP.md" "SECURITY.md" "cookbook.adoc")))

      (configuration (count . 3)
                     (items . ("Site Config" "Example Config" "Environment Handling"))
                     (locations . ("src/parallel-press.chpl")))

      (scm-metadata (count . 6)
                    (items . ("META.scm" "STATE.scm" "ECOSYSTEM.scm" "PLAYBOOK.scm" "AGENTIC.scm" "NEUROSYM.scm"))
                    (locations . ("META.scm" "STATE.scm" "ECOSYSTEM.scm" "PLAYBOOK.scm" "AGENTIC.scm" "NEUROSYM.scm")))

      (ci-cd (count . 4)
             (items . ("CI Workflow" "CodeQL" "Dependabot" "Language Enforcement"))
             (locations . (".github/workflows/ci.yml" ".github/workflows/codeql.yml" ".github/dependabot.yml")))

      (security (count . 4)
                (items . ("SECURITY.md" "security.txt" "AIBDP" "Consent Framework"))
                (locations . ("SECURITY.md" ".well-known/security.txt" ".well-known/aibdp.json")))))))
