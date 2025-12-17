;;; STATE.scm — parallax-ssg
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define metadata
  '((version . "1.0.1")
    (updated . "2025-12-17")
    (project . "parallax-ssg")
    (required-language . "Chapel")))

(define language-enforcement
  '((primary-language . "Chapel")
    (file-extension . ".chpl")
    (interpreter . "chpl")
    (forbidden-languages . ("Python" "JavaScript" "TypeScript" "Ruby" "Go"))
    (rationale . "parallax-ssg is the DEFINITIVE Chapel static site generator. It MUST be written entirely in Chapel. No other implementation languages are permitted.")
    (enforcement . "strict")))

(define current-position
  '((phase . "v1.0.1 - Core Complete, Integration Ready")
    (overall-completion . 95)
    (components ((Chapel-engine ((status . "complete") (completion . 100)))
                 (mcp-adapter ((status . "implemented") (language . "ReScript") (completion . 85)
                               (note . "Implemented but needs integration testing with poly-ssg-mcp hub")))))))

(define blockers-and-issues
  '((critical ())
    (high-priority ())))

(define critical-next-actions
  '((immediate (("Integration test MCP adapter with poly-ssg-mcp hub" . high)
                ("Add comprehensive Chapel test suite" . medium)
                ("Document API for hub integration" . medium)))))

(define state-summary
  '((project . "parallax-ssg")
    (language . "Chapel")
    (completion . 95)
    (blockers . 0)
    (next-milestone . "Hub integration testing")
    (updated . "2025-12-17")))
