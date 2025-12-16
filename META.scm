;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; META.scm — parallax-ssg

(define-module (parallax-ssg meta)
  #:export (architecture-decisions development-practices design-rationale language-rules))

(define language-rules
  '((mandatory-language . "Chapel")
    (enforcement-level . "absolute")
    (rationale . "Each SSG satellite is the DEFINITIVE implementation for its language. parallax-ssg IS the Chapel SSG.")
    (violations
     ("Python implementation" . "FORBIDDEN")
     ("JavaScript/TypeScript" . "FORBIDDEN")
     ("Any non-Chapel language" . "FORBIDDEN - defeats the purpose of this satellite"))
    (correct-implementation
     (interpreter . "chpl")
     (mcp-adapter . "adapters/ in ReScript (only exception - adapters are in ReScript/Deno)"))))

(define architecture-decisions
  '((adr-001
     (title . "Chapel-Only Implementation")
     (status . "accepted")
     (date . "2025-12-16")
     (context . "SSG satellites must be in their target language")
     (decision . "parallax-ssg is written entirely in Chapel")
     (consequences . ("Language-specific features" "Idiomatic patterns")))
    (adr-002
     (title . "RSR Compliance")
     (status . "accepted")
     (date . "2025-12-15")
     (context . "Part of hyperpolymath ecosystem")
     (decision . "Follow Rhodium Standard Repository guidelines")
     (consequences . ("RSR Gold target" "SHA-pinned actions" "SPDX headers")))))

(define development-practices
  '((code-style (languages . ("Chapel")))
    (security (sast . "CodeQL for workflow scanning") (credentials . "env vars only"))
    (versioning (scheme . "SemVer 2.0.0"))))

(define design-rationale
  '((why-Chapel "This is THE Chapel SSG. No other language is acceptable.")))
