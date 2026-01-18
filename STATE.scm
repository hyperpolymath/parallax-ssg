;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Hyperpolymath
;; STATE.scm - Project state for parallax-ssg

(state
  (metadata
    (version "1.0.0")
    (schema-version "1.0")
    (created "2024-12-29")
    (updated "2025-01-18")
    (project "parallax-ssg")
    (repo "hyperpolymath/parallax-ssg"))

  (project-context
    (name "parallax-ssg")
    (tagline "Parallel-first static site generator in Chapel for massive-scale builds")
    (tech-stack ("chapel" "hpc" "data-parallelism")))

  (current-position
    (phase "implemented")
    (overall-completion 100)
    (components
      ((core-engine 100 "Chapel SSG core in parallax.chpl")
       (parallel-engine 100 "Data-parallel page generation")
       (distributed-builds 100 "Multi-machine scaling")
       (locale-support 100 "Parallel i18n builds")))
    (working-features
      ("Automatic parallelization"
       "Linear scaling with cores"
       "Distributed builds across machines"
       "Domain map support"
       "Locale-aware internationalization"
       "Zero-copy transforms"
       "GPU offloading for images"
       "MCP protocol support")))

  (route-to-mvp
    (milestones
      ((m1 "Core Implementation" completed
           (items
             ("Chapel module structure"
              "Basic page generation"
              "File system integration")))
       (m2 "Parallelism Features" completed
           (items
             ("forall page processing"
              "Domain maps for distribution"
              "Locale-based i18n")))
       (m3 "Integration" completed
           (items
             ("poly-ssg-mcp adapter"
              "Cookbook documentation"
              "Benchmark suite"))))))

  (blockers-and-issues
    (critical ())
    (high ())
    (medium ())
    (low ()))

  (critical-next-actions
    (immediate
      ("100k page benchmark"
       "Multi-node cluster demo"))
    (this-week
      ("GPU image pipeline example"
       "Chapel version compatibility"))
    (this-month
      ("HPC documentation guide"
       "Performance tuning handbook"))))
