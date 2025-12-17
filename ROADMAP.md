# parallax-ssg Roadmap

> The DEFINITIVE Chapel static site generator

**Current Version:** 1.0.1
**Last Updated:** 2025-12-17
**Overall Completion:** 95%

---

## Current Status

| Component | Status | Completion |
|-----------|--------|------------|
| Chapel SSG Engine | Complete | 100% |
| MCP Adapter (ReScript) | Implemented | 85% |
| Hub Integration | Pending Testing | 0% |

---

## Completed Milestones

### v1.0.0 - Chapel Implementation (Dec 2025)
- [x] Core Chapel SSG engine (`src/parallel-press.chpl`)
- [x] Frontmatter parsing (YAML-like key:value)
- [x] Markdown to HTML conversion
- [x] Template engine with placeholder support
- [x] Parallel build system using Chapel's `forall` loops
- [x] Atomic counters for thread-safe operations
- [x] Test functions (markdown, frontmatter, full)
- [x] RSR-compliant repository structure
- [x] Security policy and security.txt
- [x] CI/CD with language enforcement

### v1.0.1 - MCP Adapter (Dec 2025)
- [x] ReScript MCP adapter implementation
- [x] Tool definitions (build, compile, version)
- [x] Connection state management
- [x] Command execution interface
- [x] Fixed filename references in CI and adapter

---

## Upcoming Milestones

### v1.1.0 - Hub Integration (Target: Q1 2026)
- [ ] Integration testing with poly-ssg-mcp hub
- [ ] End-to-end build pipeline verification
- [ ] Hub protocol compliance validation
- [ ] Error handling improvements

### v1.2.0 - Enhanced Features (Target: Q2 2026)
- [ ] Comprehensive Chapel test suite
- [ ] Extended Markdown support (tables, footnotes)
- [ ] Custom template directories
- [ ] Configuration file support (`.parallax.yml`)
- [ ] Watch mode for development
- [ ] Incremental builds

### v1.3.0 - Performance & Polish (Target: Q3 2026)
- [ ] Performance benchmarking suite
- [ ] Memory optimization for large sites
- [ ] Plugin architecture (Chapel-only)
- [ ] Asset pipeline (CSS/JS minification)
- [ ] Sitemap generation
- [ ] RSS/Atom feed generation

### v2.0.0 - Production Ready (Target: Q4 2026)
- [ ] Stable API guarantee
- [ ] Comprehensive documentation
- [ ] Multiple theme support
- [ ] i18n/l10n support
- [ ] Search index generation
- [ ] Deployment integrations

---

## Language Policy

**This project is written entirely in Chapel. No exceptions.**

| Allowed | Forbidden |
|---------|-----------|
| Chapel (SSG engine) | Python |
| ReScript (MCP adapter only) | JavaScript/TypeScript |
| | Ruby, Go, Java |
| | Any other language |

The MCP adapter in `adapters/` is the **only** place where non-Chapel code is permitted, and it uses ReScript for type-safe JavaScript interop with the poly-ssg-mcp hub.

---

## Related Projects

- [poly-ssg-mcp](https://github.com/hyperpolymath/poly-ssg-mcp) - Unified MCP hub for 28+ SSGs
- [rhodium-standard-repositories](https://github.com/hyperpolymath/rhodium-standard-repositories) - Repository standards

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines.

For security issues, see [SECURITY.md](SECURITY.md).
