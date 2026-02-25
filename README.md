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