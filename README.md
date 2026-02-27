# EventFlow Website

Refactored website focusing on AI Agents, Dark Factories, and MLIR Debugger infrastructure.

## Live Website

**Access the live website at:** https://www.eventflow.ru

## Website Structure

### Main Pages

1. **Home** (`index.html`) - Overview of AI Agents & Dark Factories
2. **Agents & Dark Factories** (`agents-dark-factories.html`) - Extended analysis of automated software development
3. **MLIR Debugger & MCP Server** (`mlir-debugger.html`) - Technical analysis of debugging infrastructure

### Design Principles

- **Minimalist Design**: Clean, focused content without unnecessary diagrams
- **Separate CSS**: All styles in `styles.css` file
- **Responsive Layout**: Works on mobile and desktop devices
- **Accessible Navigation**: Simple, clear navigation between pages
- **No Broken Links**: All links lead to valid content

## Content Focus

### 1. Dark Factories
- Fully automated software development environments
- Human-in-the-loop operational models
- Implementation challenges and solutions
- Roadmap for autonomous development

### 2. AI Agents
- Specialized agents for different development tasks
- Agent orchestration and collaboration
- Context management and memory systems
- Integration with existing workflows

### 3. MLIR Debugger & MCP Server
- Symbolic execution for compiler debugging
- MCP protocol implementation for AI agent integration
- Kubernetes deployment architecture
- Security and monitoring infrastructure

## Deployment

The website is designed for Kubernetes deployment with:

- **Containerization**: Docker-based deployment
- **Kubernetes**: Production-grade orchestration
- **TLS/SSL**: Secure HTTPS access
- **High Availability**: Multiple replicas with load balancing

## Development

### Local Development
```bash
# Clone the repository
git clone https://github.com/vtqveant/symbolic-mlir-debugger-website

# Open in browser
open index.html
```

### File Structure
```
.
├── index.html                 # Main homepage
├── agents-dark-factories.html # Extended analysis page
├── mlir-debugger.html        # Technical analysis page
├── styles.css                # All CSS styles
├── README.md                 # This file
├── Dockerfile                # Container configuration
├── nginx.conf               # Web server configuration
└── kubernetes/              # Deployment manifests
```

## Kubernetes Deployment

### Prerequisites
- Kubernetes cluster
- Harbor registry access
- DNS configured for www.eventflow.ru

### Deployment Steps
1. Build Docker image: `docker build -t harbor.eventflow.ru/library/symbolic-mlir-debugger-website:latest .`
2. Push to registry: `docker push harbor.eventflow.ru/library/symbolic-mlir-debugger-website:latest`
3. Apply Kubernetes manifests: `kubectl apply -f kubernetes/`

## Security

- **Content Security Policy**: Restricted resource loading
- **TLS Encryption**: All traffic encrypted
- **Security Headers**: Modern security headers
- **Regular Updates**: Security patch management

## Maintenance

- **Content Updates**: Edit HTML files directly
- **Style Changes**: Modify `styles.css`
- **Deployment Updates**: Update Kubernetes manifests
- **Monitoring**: Kubernetes health checks and logging

## License

Proprietary research project.


## 📊 Repository Status (Last Updated: 2026-02-27)

### 📈 Current Metrics
- **Total Files**: 11
- **MLIR Files**: 0
- **Python Files**: 0
- **Build System**: unknown
- **CI/CD**: has 1 workflow(s)

### 🔑 Key Features
- Dynamic symbolic (concolic) debugger
- MLIR syntax validation
- MCP server integration
- Web interface available

### 📝 Recent Activity
- `b382d995` Merge pull request #9 from vtqveant/issue-8-modifications (Fri Feb 27)
- `e8a6b80b` Implement modifications for issue #8 (Wed Feb 25)
- `cf476f42` Merge pull request #7 from vtqveant/issue-6-fix-validation (Wed Feb 25)
- `87708c75` Fix validation for issue #6 (Wed Feb 25)
- `834849b6` Merge pull request #5 from vtqveant/issue-4-refactor-website (Wed Feb 25)

### 🚀 Quick Start
```bash
# Clone the repository
git clone https://github.com/vtqveant/symbolic-mlir-debugger-website.git
cd symbolic-mlir-debugger-website

# Deploy with Docker
docker build -t mlir-debugger-website .
docker run -p 8080:80 mlir-debugger-website

# Or deploy to Kubernetes
kubectl apply -f kubernetes/
```

---

*This status section is automatically updated every 12 hours by the README maintenance bot.*
*Last bot run: 2026-02-27 22:05:09 UTC*
