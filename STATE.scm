;;; STATE.scm — parallax-ssg
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define metadata
  '((version . "1.0.0")
    (updated . "2025-12-16")
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
  '((phase . "v1.0 - Chapel Implementation Complete")
    (overall-completion . 100)
    (components ((Chapel-engine ((status . "complete") (completion . 100)))
                 (mcp-adapter ((status . "pending") (language . "ReScript") (completion . 0)))))))

(define blockers-and-issues
  '((critical ())
    (high-priority ())))

(define critical-next-actions
  '((immediate (("Connect MCP adapter in ReScript" . high)))))

(define state-summary
  '((project . "parallax-ssg")
    (language . "Chapel")
    (completion . 100)
    (blockers . 0)
    (updated . "2025-12-16")))
