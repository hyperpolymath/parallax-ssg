;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 hyperpolymath
;;; NEUROSYM.scm — parallax-ssg Neurosymbolic Processing Definitions

(define-module (parallax-ssg neurosym)
  #:export (symbols patterns transformations reasoning))

;; ============================================================================
;; SYMBOLS: Core symbolic representations
;; ============================================================================

(define symbols
  '((project-identity
     (symbol . "⚡")
     (name . "parallax-ssg")
     (meaning . "Parallel-first static site generation")
     (language . "Chapel"))

    (language-symbols
     (chapel . "🏛️")
     (rescript . "📦")
     (forbidden . "🚫"))

    (status-symbols
     (complete . "✅")
     (pending . "⏳")
     (blocked . "🔴")
     (warning . "⚠️"))

    (component-symbols
     (engine . "⚙️")
     (adapter . "🔌")
     (test . "🧪")
     (docs . "📚"))))

;; ============================================================================
;; PATTERNS: Recognized patterns and their meanings
;; ============================================================================

(define patterns
  '((parallel-processing
     (pattern . "forall ... in ...")
     (meaning . "Chapel parallel iteration")
     (performance . "O(n/p) where p = processors")
     (thread-safety . "atomic operations required for shared state"))

    (frontmatter-parsing
     (pattern . "---\\n(.*)\\n---")
     (meaning . "YAML-like metadata block")
     (fields . ("title" "date" "tags" "draft" "template")))

    (markdown-headers
     (pattern . "^#{1,6} ")
     (meaning . "Header levels h1-h6")
     (transformation . "<h{level}>{content}</h{level}>"))

    (template-substitution
     (pattern . "{{variable}}")
     (meaning . "Placeholder for dynamic content")
     (scope . ("title" "content" "date" "tags")))))

;; ============================================================================
;; TRANSFORMATIONS: Input → Output transformations
;; ============================================================================

(define transformations
  '((markdown-to-html
     (input . "*.md")
     (output . "*.html")
     (stages . (("frontmatter" . "extract metadata")
                ("body" . "parse markdown")
                ("inline" . "process bold/italic/code")
                ("template" . "inject into HTML template"))))

    (content-to-site
     (input . "content/*.md")
     (output . "_site/*.html")
     (parallel . #t)
     (stages . (("discover" . "find all .md files")
                ("parse" . "extract frontmatter + body")
                ("transform" . "markdown → HTML")
                ("template" . "apply HTML template")
                ("write" . "output to _site/"))))

    (source-to-binary
     (input . "src/*.chpl")
     (output . "./parallax-ssg")
     (compiler . "chpl")
     (flags . ("--fast" "--optimize")))))

;; ============================================================================
;; REASONING: Inference rules and logic
;; ============================================================================

(define reasoning
  '((language-inference
     (rule . "If file in src/ AND extension NOT .chpl THEN reject")
     (rationale . "Language satellite must use target language")
     (enforcement . "CI + pre-commit hooks"))

    (parallel-safety
     (rule . "If shared-state AND forall THEN require atomic")
     (rationale . "Prevent race conditions in parallel loops")
     (pattern . "var counter: atomic int"))

    (draft-filtering
     (rule . "If frontmatter.draft = true AND NOT includeDrafts THEN skip")
     (rationale . "Don't publish draft content by default")
     (override . "--include-drafts flag"))

    (template-selection
     (rule . "If frontmatter.template THEN use custom ELSE use default")
     (rationale . "Allow per-page template customization")
     (fallback . "default HTML template"))))

;; ============================================================================
;; SEMANTIC MAPPINGS: Concept relationships
;; ============================================================================

(define semantic-mappings
  '((parallel-press → static-site-generator)
    (Chapel → systems-programming-language)
    (forall → data-parallel-iteration)
    (frontmatter → document-metadata)
    (markdown → lightweight-markup)
    (template → HTML-scaffold)
    (MCP → model-context-protocol)
    (adapter → hub-communication)))

;; ============================================================================
;; NEURAL PATTERNS: ML/AI integration points
;; ============================================================================

(define neural-patterns
  '((content-classification
     (purpose . "Classify content types")
     (inputs . ("frontmatter" "body text"))
     (outputs . ("blog-post" "page" "documentation"))
     (status . "planned"))

    (auto-tagging
     (purpose . "Suggest tags for content")
     (inputs . ("title" "body"))
     (outputs . ("relevant tags"))
     (status . "planned"))

    (summary-generation
     (purpose . "Generate content summaries")
     (inputs . ("markdown body"))
     (outputs . ("excerpt" "meta description"))
     (status . "planned"))))

;; ============================================================================
;; SYMBOLIC LOGIC: Formal specifications
;; ============================================================================

(define symbolic-logic
  '((type-system
     (Post . "(record title:string date:string tags:list[string] content:string)")
     (Config . "(record source:string output:string verbose:bool)")
     (Template . "(function Post → HTML)"))

    (invariants
     ("∀ file ∈ src/ : extension(file) = .chpl")
     ("∀ post ∈ content/ : has_frontmatter(post)")
     ("build(content) → _site/ ∧ ∀ md ∈ content : ∃ html ∈ _site"))

    (pre-conditions
     ("build" . "Chapel installed ∧ src/parallel-press.chpl exists")
     ("generate" . "content/ exists ∧ ≥1 .md file"))

    (post-conditions
     ("build" . "executable ./parallax-ssg exists")
     ("generate" . "_site/ exists ∧ HTML files generated"))))
