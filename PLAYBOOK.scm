;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 hyperpolymath
;;; PLAYBOOK.scm — parallax-ssg Operational Playbook

(define-module (parallax-ssg playbook)
  #:export (operations workflows procedures))

;; ============================================================================
;; OPERATIONS: Day-to-day operational procedures
;; ============================================================================

(define operations
  '((build
     (name . "Build SSG Engine")
     (command . "just build")
     (frequency . "on-demand")
     (dependencies . ("Chapel 1.30+"))
     (outputs . ("./parallax-ssg binary")))

    (test
     (name . "Run Test Suite")
     (command . "just test-all")
     (frequency . "before-commit")
     (coverage . ("unit" "markdown" "frontmatter" "e2e")))

    (generate
     (name . "Generate Static Site")
     (command . "./parallax-ssg build")
     (inputs . ("content/*.md" "templates/*.html"))
     (outputs . ("_site/*.html")))

    (deploy
     (name . "Deploy Site")
     (command . "just deploy")
     (targets . ("github-pages" "netlify" "custom"))
     (status . "planned"))))

;; ============================================================================
;; WORKFLOWS: Multi-step operational workflows
;; ============================================================================

(define workflows
  '((development
     (name . "Development Workflow")
     (steps . (("checkout" . "git checkout -b feat/new-feature")
               ("develop" . "just dev")
               ("test" . "just test")
               ("commit" . "git commit -m 'feat: description'")
               ("push" . "git push -u origin feat/new-feature")
               ("pr" . "gh pr create"))))

    (release
     (name . "Release Workflow")
     (steps . (("validate" . "just ci")
               ("version" . "bump version in STATE.scm")
               ("changelog" . "update CHANGELOG.md")
               ("tag" . "just tag VERSION")
               ("build" . "just release VERSION")
               ("publish" . "git push origin --tags"))))

    (hotfix
     (name . "Hotfix Workflow")
     (steps . (("branch" . "git checkout -b fix/critical-issue main")
               ("fix" . "implement fix")
               ("test" . "just test-all")
               ("commit" . "git commit -m 'fix: critical issue'")
               ("pr" . "gh pr create --base main"))))

    (security-patch
     (name . "Security Patch Workflow")
     (steps . (("branch" . "git checkout -b security/cve-xxx main")
               ("patch" . "apply security fix")
               ("verify" . "just security")
               ("test" . "just test-all")
               ("advisory" . "create GitHub Security Advisory")
               ("release" . "emergency release"))))))

;; ============================================================================
;; PROCEDURES: Standard operating procedures
;; ============================================================================

(define procedures
  '((onboarding
     (name . "Developer Onboarding")
     (steps . (("install-chapel" . "Install Chapel 1.30+ from chapel-lang.org")
               ("clone" . "git clone repo")
               ("build" . "just build")
               ("test" . "just test")
               ("hooks" . "just hooks-install")
               ("read-docs" . "Review README.adoc and CONTRIBUTING.md"))))

    (code-review
     (name . "Code Review Procedure")
     (checklist . (("language" . "Verify Chapel-only in src/")
                   ("tests" . "Tests pass")
                   ("security" . "No secrets in code")
                   ("style" . "Follows coding standards")
                   ("docs" . "Documentation updated if needed"))))

    (incident-response
     (name . "Security Incident Response")
     (steps . (("identify" . "Identify and confirm vulnerability")
               ("contain" . "Assess impact and contain")
               ("notify" . "Notify via SECURITY.md process")
               ("fix" . "Develop and test fix")
               ("deploy" . "Emergency release")
               ("postmortem" . "Document lessons learned"))))

    (maintenance
     (name . "Regular Maintenance")
     (tasks . (("deps" . "Review Dependabot PRs weekly")
               ("security" . "Review security advisories")
               ("ci" . "Monitor CI/CD health")
               ("docs" . "Update documentation as needed"))))))

;; ============================================================================
;; RUNBOOKS: Detailed runbooks for common scenarios
;; ============================================================================

(define runbooks
  '((chapel-upgrade
     (name . "Chapel Version Upgrade")
     (trigger . "New Chapel release")
     (steps . (("review" . "Review Chapel changelog for breaking changes")
               ("update-ci" . "Update Chapel version in ci.yml")
               ("test-local" . "Test locally with new version")
               ("pr" . "Create PR with version bump")
               ("verify" . "Verify CI passes with new version"))))

    (adapter-update
     (name . "MCP Adapter Update")
     (trigger . "poly-ssg-mcp hub changes")
     (steps . (("review" . "Review hub API changes")
               ("update" . "Update adapters/src/ParallaxAdapter.res")
               ("build" . "just adapter-build")
               ("test" . "Test hub connectivity")
               ("pr" . "Create PR with adapter updates"))))

    (performance-investigation
     (name . "Performance Investigation")
     (trigger . "Slow builds reported")
     (steps . (("baseline" . "Establish performance baseline")
               ("profile" . "Run Chapel profiler")
               ("analyze" . "Identify bottlenecks")
               ("optimize" . "Implement optimizations")
               ("benchmark" . "Verify improvements"))))))

;; ============================================================================
;; METRICS: Operational metrics and KPIs
;; ============================================================================

(define metrics
  '((build-time
     (name . "Build Time")
     (target . "< 5 seconds")
     (measure . "Time to compile Chapel source"))

    (test-coverage
     (name . "Test Coverage")
     (target . "> 80%")
     (measure . "Percentage of code covered by tests"))

    (ci-success-rate
     (name . "CI Success Rate")
     (target . "> 95%")
     (measure . "Percentage of CI runs that pass"))

    (mttr
     (name . "Mean Time to Recovery")
     (target . "< 4 hours")
     (measure . "Time from incident to resolution"))))
