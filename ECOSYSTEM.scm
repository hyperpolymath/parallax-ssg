;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Hyperpolymath
;; ECOSYSTEM.scm - Ecosystem positioning for parallax-ssg

(ecosystem
  (version "1.0.0")
  (name "parallax-ssg")
  (type "ssg-engine")
  (purpose "High-performance parallel static site generator using Chapel for cluster-scale builds")

  (position-in-ecosystem
    (role "satellite")
    (hub "poly-ssg-mcp")
    (domain "hpc-ssg")
    (uniqueness "Only SSG designed for HPC clusters with Chapel's data parallelism"))

  (related-projects
    ((poly-ssg-mcp
       (relationship "hub")
       (description "Central MCP adapter hub for all poly-ssg engines"))
     (obli-ssg
       (relationship "sibling")
       (description "Privacy-focused Oberon SSG"))
     (terrapin-ssg
       (relationship "sibling")
       (description "Educational Logo-based SSG"))
     (iota-ssg
       (relationship "sibling")
       (description "Array-oriented APL-based SSG - also high-performance"))
     (befunge-ssg
       (relationship "sibling")
       (description "2D esoteric Befunge-based SSG"))
     (pharos-ssg
       (relationship "sibling")
       (description "Live image Pharo Smalltalk SSG"))
     (qed-ssg
       (relationship "sibling")
       (description "Multi-SSG adapter hub in Lean 4"))))

  (what-this-is
    ("Static site generator in Chapel"
     "Parallel-by-default page generation"
     "Distributed builds across cluster nodes"
     "Linear scaling from 10 to 100,000 pages"
     "GPU offloading for image processing"
     "Part of poly-ssg-mcp family"))

  (what-this-is-not
    ("A small-site SSG (overkill for simple sites)"
     "A sequential build system"
     "A content management system"
     "A general-purpose HPC framework")))
