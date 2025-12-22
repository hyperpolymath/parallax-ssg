;;; STATE.scm — parallax-ssg
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define-module (parallax-ssg state)
  #:export (metadata language-enforcement current-position components-status state-summary))

;; ============================================================================
;; METADATA
;; ============================================================================

(define metadata
  '((version . "2.0.0")
    (updated . "2025-12-22")
    (project . "parallax-ssg")
    (required-language . "Chapel")
    (status . "44/44 Components Complete")))

;; ============================================================================
;; LANGUAGE ENFORCEMENT
;; ============================================================================

(define language-enforcement
  '((primary-language . "Chapel")
    (file-extension . ".chpl")
    (interpreter . "chpl")
    (minimum-version . "1.30")
    (forbidden-languages . ("Python" "JavaScript" "TypeScript" "Ruby" "Go" "Java" "Rust" "C" "C++"))
    (rationale . "parallax-ssg is the DEFINITIVE Chapel static site generator. It MUST be written entirely in Chapel. No other implementation languages are permitted.")
    (enforcement . "strict")
    (exceptions . (("ReScript" . "adapters/ only for MCP hub communication")))))

;; ============================================================================
;; CURRENT POSITION: 44/44 Complete
;; ============================================================================

(define current-position
  '((phase . "v2.0 - 44/44 Components Complete")
    (overall-completion . 100)
    (milestone . "Production Ready")))

;; ============================================================================
;; COMPONENT STATUS: All 44 Components
;; ============================================================================

(define components-status
  '((core-engine
     (count . "4/4")
     (status . "complete")
     (components
      (("Chapel Engine" . "src/parallel-press.chpl")
       ("Markdown Synthesis" . "Frontmatter + body parsing")
       ("Template Engine" . "{{variable}} substitution")
       ("Variable Store" . "Config constants + frontmatter"))))

    (build-system
     (count . "4/4")
     (status . "complete")
     (components
      (("Justfile" . "justfile - build, test, test-e2e, lsp, compile")
       ("Mustfile" . "Mustfile - required validations")
       ("Containerfile" . "Containerfile - Podman/Docker")
       (".tool-versions" . "asdf version management"))))

    (site-generation
     (count . "4/4")
     (status . "complete")
     (components
      (("Content Processing" . "YAML frontmatter + Markdown")
       ("Template Engine" . "{{variable}} substitution")
       ("Output Generation" . "HTML files to _site/")
       ("Content Schema" . "Post record type"))))

    (adapters
     (count . "3/3")
     (status . "complete")
     (components
      (("MCP Server" . "poly-ssg-mcp hub connection")
       ("ReScript Adapter" . "adapters/src/ParallaxAdapter.res")
       ("Hub Interface" . "parallax_build, parallax_compile, parallax_version"))))

    (testing
     (count . "4/4")
     (status . "complete")
     (components
      (("Unit Tests" . "test-full command")
       ("Markdown Tests" . "test-markdown command")
       ("Frontmatter Tests" . "test-frontmatter command")
       ("E2E Tests" . "Site generation test in CI"))))

    (documentation
     (count . "8/8")
     (status . "complete")
     (components
      (("README" . "README.adoc")
       ("ROADMAP" . "ROADMAP.md")
       ("SECURITY" . "SECURITY.md")
       ("CODE_OF_CONDUCT" . "CODE_OF_CONDUCT.md")
       ("CONTRIBUTING" . "CONTRIBUTING.md")
       ("Cookbook" . "cookbook.adoc")
       ("Adapter README" . "adapters/README.md")
       ("Copilot Instructions" . "copilot-instructions.md"))))

    (configuration
     (count . "3/3")
     (status . "complete")
     (components
      (("Site Config" . "Config vars in Chapel")
       ("Example Config" . "Default settings")
       ("Environment" . "CLI arguments"))))

    (scm-metadata
     (count . "6/6")
     (status . "complete")
     (components
      (("META.scm" . "Architecture decisions")
       ("STATE.scm" . "Project state")
       ("ECOSYSTEM.scm" . "Ecosystem position")
       ("PLAYBOOK.scm" . "Operations")
       ("AGENTIC.scm" . "AI agent config")
       ("NEUROSYM.scm" . "Symbolic patterns"))))

    (ci-cd
     (count . "4/4")
     (status . "complete")
     (components
      (("CI Workflow" . ".github/workflows/ci.yml")
       ("CodeQL" . ".github/workflows/codeql.yml")
       ("Dependabot" . ".github/dependabot.yml")
       ("Language Enforcement" . "Blocks forbidden languages"))))

    (security
     (count . "4/4")
     (status . "complete")
     (components
      (("SECURITY.md" . "Security policy")
       ("security.txt" . ".well-known/security.txt")
       ("AIBDP" . ".well-known/aibdp.json")
       ("Consent Framework" . ".well-known/ai.txt"))))))

;; ============================================================================
;; BLOCKERS AND ISSUES
;; ============================================================================

(define blockers-and-issues
  '((critical ())
    (high-priority ())
    (notes . "All 44 components complete. Production ready.")))

;; ============================================================================
;; NEXT ACTIONS
;; ============================================================================

(define next-actions
  '((immediate ())
    (future
     (("Add watch mode for development" . "enhancement")
      ("Add incremental builds" . "performance")
      ("Add plugin architecture" . "extensibility")
      ("Add more Markdown features" . "feature")))))

;; ============================================================================
;; STATE SUMMARY
;; ============================================================================

(define state-summary
  '((project . "parallax-ssg")
    (language . "Chapel")
    (version . "2.0.0")
    (components . "44/44")
    (completion . 100)
    (blockers . 0)
    (status . "Production Ready")
    (updated . "2025-12-22")))
