# MLIR Debugger Landing Page

Professional landing page for the MLIR Debugger project - a dynamic symbolic debugger for AI compilers designed for agentic coding workflows and "Dark Factories".

## 🚀 Live Website

**Access the live website at:** https://www.niche-robotics.tech

## 📋 Features

- **Modern Responsive Design**: Built with clean HTML/CSS, Inter font, and responsive layouts
- **Interactive Architecture Diagram**: SVG visualization of the MLIR Debugger system architecture
- **Project Status Dashboard**: Real-time status indicators for different components
- **Technology Explanations**: Clear explanations of MLIR, Symbolic Execution, and DAP Protocol
- **Agentic Workflows Section**: Focus on AI coding assistants and automated software factories
- **Security Hardened**: Content-Security-Policy headers, TLS, and security best practices
- **Performance Optimized**: Gzip compression, asset caching, HTTP/2 support

## 🏗️ Architecture

The website showcases the MLIR Debugger's microservices architecture:

```
┌─────────────────────────────────────────────────────────┐
│                    Input Sources                         │
│  ┌─────────┐  ┌─────────┐  ┌─────────┐                 │
│  │ AI      │  │ IDEs &  │  │ CI/CD   │                 │
│  │ Agents  │  │ Editors │  │ Pipelines│                 │
│  └─────────┘  └─────────┘  └─────────┘                 │
└───────────────────────┬─────────────────────────────────┘
                        │
┌───────────────────────▼─────────────────────────────────┐
│              MLIR Debugger Core                         │
│  ┌─────────────────────────────────────────────┐       │
│  │ • DAP Protocol Server                       │       │
│  │ • Symbolic Execution Engine                 │       │
│  │ • Automated Test Generation                 │       │
│  └─────────────────────────────────────────────┘       │
└───────────────────────┬─────────────────────────────────┘
                        │
┌───────────────────────▼─────────────────────────────────┐
│              Backend Services                           │
│  ┌─────────┐  ┌─────────┐  ┌─────────┐                 │
│  │ MLIR    │  │ Z3      │  │ Trace   │                 │
│  │ Parser  │  │ Solver  │  │ Storage │                 │
│  └─────────┘  └─────────┘  └─────────┘                 │
└───────────────────────┬─────────────────────────────────┘
                        │
┌───────────────────────▼─────────────────────────────────┐
│                    Output                                │
│  ┌─────────────────────────────────────────────┐       │
│  │ • Debug Reports (JSON, HTML, Visualizations)│       │
│  │ • Test Coverage Analysis                    │       │
│  │ • Performance Metrics                       │       │
│  └─────────────────────────────────────────────┘       │
└─────────────────────────────────────────────────────────┘
```

## 🛠️ Technology Stack

- **Frontend**: HTML5, CSS3, SVG, JavaScript (vanilla)
- **Web Server**: nginx (alpine)
- **Container**: Docker
- **Orchestration**: Kubernetes
- **Registry**: Harbor (private container registry)
- **TLS**: Let's Encrypt via cert-manager
- **Ingress**: Traefik
- **DNS**: Custom domain (niche-robotics.tech)

## 📁 Project Structure

```
symbolic-mlir-debugger-website/
├── index.html              # Main landing page
├── architecture.svg        # Interactive system architecture diagram
├── nginx.conf             # nginx configuration with security headers
├── Dockerfile             # Container build instructions
├── README.md              # This file
├── AGENTS.md              # Project guidelines & emoji prohibition policy
├── .github/workflows/     # CI/CD pipelines
│   ├── validate.yml       # Validation workflow
│   └── ci.yml            # Full deployment workflow
└── kubernetes/           # Kubernetes deployment manifests
    ├── deployment.yaml    # Kubernetes deployment
    ├── service.yaml      # Service definition
    └── ingress.yaml      # Ingress with TLS configuration
```

## 🐳 Deployment

### Local Development

1. **Clone the repository**:
   ```bash
   git clone https://github.com/vtqveant/symbolic-mlir-debugger-website.git
   cd symbolic-mlir-debugger-website
   ```

2. **Run locally with nginx**:
   ```bash
   docker build -t mlir-debugger-website .
   docker run -p 8080:80 mlir-debugger-website
   ```
   Open http://localhost:8080

### Kubernetes Deployment

The website is deployed to a Kubernetes cluster with the following configuration:

1. **Build and push to Harbor**:
   ```bash
   docker build -t harbor.niche-robotics.tech/library/mlir-debugger-website:latest .
   docker push harbor.niche-robotics.tech/library/mlir-debugger-website:latest
   ```

2. **Deploy to Kubernetes**:
   ```bash
   kubectl apply -f kubernetes/
   ```

3. **TLS Certificate**:
   - Automatically provisioned by cert-manager
   - Uses Let's Encrypt production issuer
   - Auto-renewal configured

## 🔒 Security & Coding Standards

### Security Features
- **Content Security Policy**: Restricts resources to trusted sources
- **TLS 1.3**: Encrypted HTTPS connections
- **Security Headers**:
  - X-Frame-Options: SAMEORIGIN
  - X-Content-Type-Options: nosniff
  - X-XSS-Protection: 1; mode=block
  - Referrer-Policy: strict-origin-when-cross-origin
- **Container Security**:
  - Read-only filesystem where possible
  - Non-root user execution
  - Resource limits
  - Health checks

### Coding Standards (AGENTS.md)
- **Emoji Prohibition**: No emoji in source code files
- **Professional Text**: Use descriptive text instead of emoji
- **Validation**: GitHub Actions enforces coding standards
- **Accessibility**: Semantic HTML, proper ARIA labels
- **Maintainability**: Clean code structure, proper documentation

See [AGENTS.md](AGENTS.md) for complete project guidelines.

## 📊 Performance

- **Gzip Compression**: Reduces transfer size by ~70%
- **Asset Caching**: Static assets cached for 1 year
- **HTTP/2**: Multiplexed connections for faster loading
- **Minimal Dependencies**: No heavy frameworks or libraries
- **Optimized Images**: SVG for scalability

## 🎯 Target Audience

1. **AI Researchers**: Understanding symbolic debugging for MLIR
2. **Compiler Engineers**: Tools for MLIR compiler development
3. **AI Coding Assistants**: Structured debugging API integration
4. **DevOps Teams**: Kubernetes deployment patterns
5. **Academic Community**: Research tool for formal methods

## 🔄 Continuous Integration & Deployment

### GitHub Actions Workflows

The repository includes automated CI/CD pipelines:

#### 1. **Validation Pipeline** (`.github/workflows/validate.yml`)
- **Triggers**: On push to main/develop, pull requests, manual trigger
- **Validates**:
  - Project structure and required files
  - HTML structure and tag balancing
  - SVG file validity
  - Dockerfile and nginx configuration
  - Kubernetes manifests
  - Docker build and container test

#### 2. **Full CI/CD Pipeline** (`.github/workflows/ci.yml` - requires secrets)
- **Triggers**: On push to main branch
- **Automatically**:
  - Builds Docker image
  - Pushes to Harbor registry
  - Deploys to Kubernetes cluster
  - Sends Telegram notifications

### Setup for Automatic Deployment

To enable automatic deployment when PRs are merged to main:

1. **Add GitHub Secrets**:
   ```bash
   # Harbor credentials
   HARBOR_USERNAME="robot$library+automation"
   HARBOR_PASSWORD="your-harbor-password"
   
   # Kubernetes configuration
   KUBECONFIG="base64-encoded-kubeconfig"
   
   # Telegram notifications (optional)
   TELEGRAM_BOT_TOKEN="your-bot-token"
   TELEGRAM_CHAT_ID="your-chat-id"
   ```

2. **Workflow Behavior**:
   - **Pull Requests**: Run validation only
   - **Merge to Main**: Run validation → build → deploy
   - **Manual Trigger**: Available via GitHub UI

3. **Deployment Process**:
   ```mermaid
   graph LR
     A[PR Opened] --> B[Validation]
     B --> C{Validation Passed?}
     C -->|Yes| D[Ready for Review]
     C -->|No| E[Fix Issues]
     D --> F[Merge to Main]
     F --> G[Build Docker Image]
     G --> H[Push to Harbor]
     H --> I[Deploy to Kubernetes]
     I --> J[Verify Deployment]
     J --> K[Send Notification]
   ```

### Current Deployment Status

- ✅ **Validation**: Automated on all PRs
- ⚙️ **Auto-deployment**: Requires secret configuration
- ✅ **Manual deployment**: `kubectl apply -f kubernetes/`
- ✅ **TLS**: Automatic via cert-manager
- ✅ **Health checks**: Built into deployment

### Testing Locally

```bash
# Run validation checks
./scripts/validate.sh  # (to be created)

# Test Docker build
docker build -t mlir-debugger-website-test .
docker run -p 8080:80 mlir-debugger-website-test
# Open http://localhost:8080
```

## 📈 Project Status

| Component | Status | Version |
|-----------|--------|---------|
| Core Library | ✅ Production Ready | v1.0.0 |
| Symbolic Execution | ⚡ Beta Testing | v0.8.0 |
| Kubernetes Deployment | ✅ Operational | Active |
| AI Agent Integration | 🚧 In Development | Phase 2 |
| Website | ✅ Live | v1.0.0 |

## 🤝 Contributing

This website is part of the larger MLIR Debugger project. For contributions:

1. Fork the repository
2. Create a feature branch
3. Make changes and test locally
4. Submit a pull request

## 📄 License

Part of the MLIR Debugger project. See main repository for license details.

## 📞 Contact

- **Website**: https://www.niche-robotics.tech
- **GitHub**: https://github.com/vtqveant/symbolic-mlir-debugger
- **Research**: Theory of Attention, MLIR debugging tools

---

*Last Updated: 2026-02-21*  
*Deployed at: https://www.niche-robotics.tech*  
*Repository: https://github.com/vtqveant/symbolic-mlir-debugger-website*