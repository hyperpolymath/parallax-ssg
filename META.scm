;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Hyperpolymath
;; META.scm - Meta-level information for parallax-ssg

(define project-meta
  `((version . "1.0.0")

    (architecture-decisions
      ((adr-001
         (title . "Chapel as Implementation Language")
         (status . "accepted")
         (date . "2024-12-29")
         (context . "Need a language designed for data parallelism at scale")
         (decision . "Use Chapel for its first-class parallel constructs")
         (consequences . ("Implicit parallelism via forall loops"
                          "Domain maps for distributed data"
                          "Locale abstractions for multi-node"
                          "Requires Chapel compiler installation")))
       (adr-002
         (title . "Parallel by Default")
         (status . "accepted")
         (date . "2024-12-29")
         (context . "Traditional SSGs are sequential and slow for large sites")
         (decision . "Every page builds in parallel automatically")
         (consequences . ("Build time is wall-clock / cores"
                          "No manual threading code"
                          "Memory usage scales with parallelism"
                          "Race conditions prevented by Chapel semantics")))
       (adr-003
         (title . "GPU Offloading for Images")
         (status . "accepted")
         (date . "2024-12-29")
         (context . "Image processing is a common SSG bottleneck")
         (decision . "Use Chapel's GPU support for image transformation pipelines")
         (consequences . ("Significant speedup for image-heavy sites"
                          "Requires CUDA or ROCm capable GPU"
                          "Fallback to CPU for systems without GPU")))))

    (development-practices
      ((code-style . "chapel-standard")
       (security . "openssf-scorecard")
       (testing . "parallel-correctness-tests")
       (versioning . "semver")
       (documentation . "asciidoc")
       (branching . "trunk-based")))

    (design-rationale
      ((why-chapel . "Purpose-built for data parallelism with readable syntax")
       (why-parallax . "Build view shifts with parallel perspective - same code, parallel execution")
       (why-distributed . "Some sites are too large for a single machine")))))
