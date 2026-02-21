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

## 🔒 Security Features

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

## 🔄 Continuous Integration

The website is designed for automated deployment:

1. **GitHub Actions**: Automated testing and building
2. **Harbor Registry**: Secure container storage
3. **Kubernetes**: Automated rolling updates
4. **cert-manager**: Automatic TLS certificate renewal

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