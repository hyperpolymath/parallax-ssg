;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; ECOSYSTEM.scm — parallax-ssg

(define-module (parallax-ssg ecosystem)
  #:export (identity position related-projects integration))

;; ============================================================================
;; PROJECT IDENTITY
;; ============================================================================

(ecosystem
  (version "2.0.0")
  (name "parallax-ssg")
  (type "satellite-ssg")
  (purpose "The DEFINITIVE Chapel static site generator")
  (status "44/44 Components Complete")

  ;; ============================================================================
  ;; LANGUAGE IDENTITY
  ;; ============================================================================

  (language-identity
    (primary "Chapel")
    (version "1.30+")
    (rationale "parallax-ssg exists to be THE Chapel SSG. The entire engine is written in Chapel.")
    (forbidden ("Python" "JavaScript" "TypeScript" "Ruby" "Go" "Java" "Rust" "C" "C++"))
    (exceptions (("ReScript" . "adapters/ only - MCP hub communication")))
    (enforcement "This is not negotiable. Any non-Chapel implementation will be rejected."))

  ;; ============================================================================
  ;; POSITION IN ECOSYSTEM
  ;; ============================================================================

  (position-in-ecosystem
    "Satellite SSG in the poly-ssg constellation. Each satellite is the definitive SSG for its language."
    "parallax-ssg is THE Chapel SSG - parallel-first static site generation."
    "Connected to poly-ssg-mcp hub for unified interface across 28+ SSGs.")

  ;; ============================================================================
  ;; RELATED PROJECTS
  ;; ============================================================================

  (related-projects
    (project
      (name "poly-ssg-mcp")
      (url "https://github.com/hyperpolymath/poly-ssg-mcp")
      (relationship "hub")
      (description "Unified MCP server for 28+ SSGs - provides adapter interface"))
    (project
      (name "rhodium-standard-repositories")
      (url "https://github.com/hyperpolymath/rhodium-standard-repositories")
      (relationship "standard")
      (description "Repository structure and compliance standards")))

  ;; ============================================================================
  ;; SATELLITE CONSTELLATION
  ;; ============================================================================

  (constellation
    (hub "poly-ssg-mcp")
    (satellite-count "28+")
    (this-satellite
      (name "parallax-ssg")
      (language "Chapel")
      (unique-feature "Parallel-first processing via Chapel forall loops")
      (status "Production Ready")))

  ;; ============================================================================
  ;; WHAT THIS IS
  ;; ============================================================================

  (what-this-is
    "- The DEFINITIVE static site generator written in Chapel"
    "- Parallel-first design using Chapel's forall loops"
    "- Part of the poly-ssg satellite constellation"
    "- 44/44 components complete"
    "- Production-ready static site generation")

  ;; ============================================================================
  ;; WHAT THIS IS NOT
  ;; ============================================================================

  (what-this-is-not
    "- NOT a template that can be reimplemented in other languages"
    "- NOT optional about being in Chapel"
    "- NOT a proof-of-concept or demo"
    "- NOT negotiable on language requirements")

  ;; ============================================================================
  ;; KEY FEATURES
  ;; ============================================================================

  (features
    (parallel-processing "Chapel forall loops for parallel page generation")
    (frontmatter "YAML-like key:value metadata parsing")
    (markdown "Headers, lists, code blocks, inline formatting")
    (templates "{{variable}} placeholder substitution")
    (mcp-integration "poly-ssg-mcp hub connection via ReScript adapter")
    (testing "Built-in test commands: test-markdown, test-frontmatter, test-full")
    (ci-cd "GitHub Actions with language enforcement"))

  ;; ============================================================================
  ;; INTEGRATION POINTS
  ;; ============================================================================

  (integration
    (mcp-tools
      (("parallax_build" . "Build site with parallel processing")
       ("parallax_compile" . "Compile Chapel source")
       ("parallax_version" . "Get version info")))
    (cli-commands
      (("build" . "Generate static site")
       ("test-markdown" . "Test markdown parser")
       ("test-frontmatter" . "Test frontmatter parser")
       ("test-full" . "Run all tests")
       ("help" . "Show help")))
    (just-recipes
      (("build" . "Compile Chapel source")
       ("test" . "Run test suite")
       ("test-e2e" . "Run E2E tests")
       ("ci" . "Run CI pipeline locally")
       ("security" . "Run security checks")))))
