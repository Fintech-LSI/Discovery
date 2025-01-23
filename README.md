# 🌐 Discovery Service

A **Spring Cloud Netflix Eureka Discovery Server** powering service registration and discovery for our fintech microservices ecosystem. 🚀

## Overview

The **Discovery Service** is a critical infrastructure component that:
- 🔍 Enables dynamic service registration
- 🔄 Provides real-time service health tracking
- 🌈 Supports load balancing and service routing
- ⚡ Centralizes service instance management

## Architecture

![Service Discovery Architecture](https://miro.medium.com/v2/resize:fit:1400/0*4jCsgSrEB-zgFZY8.png)

The diagram illustrates how services dynamically register and discover each other through the Eureka Discovery Server.

## Project Structure

```
src/main/java/com/fintech/discovery/
├── DiscoveryApplication.java
└── resources/
    ├── application.yml
```

## Tech Stack

- **Framework**: Spring Cloud Netflix Eureka
- **Build Tool**: Maven
- **Java Version**: 17+
- **Server Port**: 8761

## Features

- 📡 Automatic service registration
- 🩺 Health check mechanisms
- 🔒 Secure service discovery
- 📊 Real-time service status monitoring

## Configuration

```yaml
server:
  port: 8761

eureka:
  instance:
    hostname: discovery-service
    prefer-ip-address: true
  client:
    registerWithEureka: false
    fetchRegistry: false
    serviceUrl:
      defaultZone: http://localhost:8761/eureka/

management:
  endpoints:
    web:
      exposure:
        include: "*"
  endpoint:
    health:
      show-details: always
```

## Getting Started

1. **Prerequisites**
    - Java 17+
    - Maven
    - Spring Boot

2. **Local Development**
   ```bash
   # Build the project
   mvn clean package

   # Run Discovery Service
   mvn spring-boot:run
   ```

3. **Access Eureka Dashboard**
   Open `http://localhost:8761` in your browser to view registered services.

## Monitoring Endpoints

- `/actuator/health`: Service health status
- `/eureka/`: Eureka dashboard
- `/actuator/metrics`: Detailed metrics

## Best Practices

1. Ensure all microservices include Eureka Client dependency
2. Configure `eureka.client.serviceUrl.defaultZone` in each service
3. Use `@EnableDiscoveryClient` annotation

## Troubleshooting

- **Service Not Registering**
    - Check network connectivity
    - Verify Eureka Client configuration
    - Confirm port availability

## 👥 Team

| Avatar                                                                                                  | Name | Role | GitHub |
|---------------------------------------------------------------------------------------------------------|------|------|--------|
| <img src="https://github.com/zachary013.png" width="50" height="50" style="border-radius: 50%"/>        | Zakariae Azarkan | DevOps Engineer | [@zachary013](https://github.com/zachary013) |
| <img src="https://github.com/goalaphx.png" width="50" height="50" style="border-radius: 50%"/>          | El Mahdi Id Lahcen | Frontend Developer | [@goalaphx](https://github.com/goalaphx) |
| <img src="https://github.com/hodaifa-ech.png" width="50" height="50" style="border-radius: 50%"/>       | Hodaifa | Cloud Architect | [@hodaifa-ech](https://github.com/hodaifa-ech) |
| <img src="https://github.com/khalilh2002.png" width="50" height="50" style="border-radius: 50%"/>       | Khalil El Houssine | Backend Developer | [@khalilh2002](https://github.com/khalilh2002) |
| <img src="https://github.com/Medamine-Bahassou.png" width="50" height="50" style="border-radius: 50%"/> | Mohamed Amine BAHASSOU | ML Engineer | [@Medamine-Bahassou](https://github.com/Medamine-Bahassou) |

## Contributing

1. Fork the repository
2. Create feature branch
3. Commit changes
4. Push to branch
5. Open Pull Request

## License

MIT License - see [LICENSE](LICENSE) for details.