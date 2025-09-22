<h1 align="center">🎟️ Picket</h1>

<p align="center">
  <img src="./docs/picket_logo.png" width="400" alt="Picket 로고" />
  
<h3 align="center">1팀 - Picketnologia</h3>

<br /><br />
  
## 👨‍💻 팀원 구성
<table align="center">
  <tr>
  
  ![팀원 이미지](./docs/super_middle_highlight.png)

  </tr>
  <tr>
    <td align="center">
      <b>최경민</b><br/>
    </td>
    <td align="center">
      <b>강설</b><br/>
    </td>
    <td align="center">
      <b>김원중</b><br/>
    </td>
    <td align="center">
      <b>이상우</b><br/>
    </td>
    <td align="center">
      <b>김광호</b><br/>
    </td>
  </tr>
</table>

<br /><br />

## 👩‍🎤 기술 스택  

<!-- 1행 -->
![VMware](https://img.shields.io/badge/VMWARE-575757?style=for-the-badge&logo=vmware&logoColor=white)
![Ubuntu](https://img.shields.io/badge/UBUNTU-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)

<!-- 2행 -->
![MariaDB](https://img.shields.io/badge/MARIADB-003545?style=for-the-badge&logo=mariadb&logoColor=white)

<!-- 3행 -->
![Prometheus](https://img.shields.io/badge/PROMETHEUS-E6522C?style=for-the-badge&logo=prometheus&logoColor=white)
![Grafana](https://img.shields.io/badge/GRAFANA-F46800?style=for-the-badge&logo=grafana&logoColor=white)

<!-- 4행 -->
![Git](https://img.shields.io/badge/GIT-F05032?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GITHUB-181717?style=for-the-badge&logo=github&logoColor=white)
![Discord](https://img.shields.io/badge/DISCORD-5865F2?style=for-the-badge&logo=discord&logoColor=white)

<br /><br />

## 🎫 CI/CD 파이프라인 흐름

#⚙️ 자동 빌드 및 테스트
Jenkins는 GitHub에 코드 푸시가 발생하면 소스코드를 자동으로 빌드합니다.
Jenkinsfile을 활용해 프로젝트 빌드와 테스트를 실행하며, 지속적인 통합을 지원합니다.

<!-- ← 여기 빈 줄 하나 추가 -->

<br /><br />

## 🛠️ 자동화 배포 방식
빌드가 성공하면 Dockerfile을 활용해 Docker 이미지를 생성하고, **Kubernetes (K8S)**를 통해 새로운 버전을 자동 배포합니다.

프론트엔드 - 카나리 배포 방식
카나리 배포 방식을 적용하여 클라이언트의 직접 테스트를 통해 안정적인 버전 업그레이드를 진행합니다.

❓ 카나리 배포 사용 이유
식당 예약과 상품 주문 기능을 제공하는 서비스의 특성상, 사용자 피드백을 적극 반영해 UI를 지속적으로 개선해야 한다.
Canary 배포 방식을 활용하면 새로운 버전을 일부 사용자에게만 먼저 제공하여, 실제 사용자 반응을 기반으로 새로운 버전의 만족도를 알 수 있다.
이를 통해 개선된 버전의 전면 배포 여부를 보다 신중하게 결정할 수 있다.


백엔드 - 블루/그린 배포 방식
블루/그린 배포 방식을 적용하여 새로운 버전(그린)으로 트래픽을 전환하며 무중단 배포를 실현하고, 기존 버전(블루)을 유지해 안정성을 보장합니다.

❓ 블루/그린 배포 사용 이유
백엔드는 DB, 인증, 결제 등 핵심 로직을 담당하기 때문에 안정성이 중요하다.
Blue/Green 방식을 사용하면 장애 발생 시 즉시 전환이 가능하기 때문에 다운타임 없이 복구가 가능하고, API가 대부분 프론트엔드에 의해 호출되기 때문에 버전이 완전히 변경되어도 사용자가 직접 UI로 체감하지 않는다.
실제 API를 전체 테스트한 후 안전하게 전환이 가능하기 때문에 Blue/Green 방식을 사용했다.

## 🎬 CI/CD 시나리오
1. 개발자가 GitHub에 코드 푸시
      ↓
2. Jenkins가 자동으로 GitHub 코드 감지
      ↓
3. Jenkins가 Docker 이미지 빌드
      ↓
4. Jenkins가 이미지 DockerHub에 푸시
      ↓
5. Jenkins가 Kubernetes에 배포 명령 (kubectl apply)
      ↓
6. Kubernetes가 최신 컨테이너로 서비스 교체

=>
코드를 GitHub에 올리면 Jenkins가 자동으로 Docker 이미지로 만들고, Kubernetes가 서비스에 반영

## 📽️ CI/CD 배포 결과
카나리 & 블루그린(동적 화면 GIF)
"# be17-4th-Picketnologia-Picket" 
