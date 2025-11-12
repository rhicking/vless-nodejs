# VLESS WebSocket server & Shell API Actuator

This project is based on Node.js + WebSocket Lightweight implementation of the protocol VLESS proxy server，Support through Web API implement Shell Screenplay，Suitable for scenarios involving self-built agents and remote script execution.

## ✨ Features

- ✅ support VLESS protocol，Compatible with mainstream proxy clients
- 🌐 via WebSocket + TLS Achieve encrypted transmission
- 🔐 Supports UUID authentication mechanism
- 🖥 Provide Web API interface，Remote execution of shell scripts
- 📎 Simple and easy to use, with flexible environment variable configuration

## 📦 Environment variable configuration

| variable name      | illustrate                                                | default value                                 |
| ----------- | --------------------------------------------------- | -------------------------------------- |
| `UUID`      | VLESS authentication key                                    | `10889da6-14ea-4cc8-97fa-6c0bc410f121` |
| `DOMAIN`    | Accessed domain（For client configuration）                        | `example.com`                          |
| `PORT`      | Port number for service startup                                    | `3000`                                 |
| `REMARKS`   |  Node notes                                           | `vless-nodejs`                         |
| `WEB_SHELL` | Enable Web Shell?（**on** : Enable，**off** : Disable） | `off`                                  |

## ⚡️ Rapid deployment

```bash
wget https://raw.githubusercontent.com/rhicking/vless-nodejs/refs/heads/main/app.js
wget https://raw.githubusercontent.com/rhicking/vless-nodejs/refs/heads/main/package.json
npm install
PORT=3000 UUID=your-uuid DOMAIN=your-domain.com WEB_SHELL=on node app.js
```

⚠️ Notice：Please keep your belongings safe UUID

## 📡 View node information

Open your browser to access：

```
http://your-domain.com:3000/your-uuid
```

## 🔧 Shell script remote execution

You can execute script commands in the following ways：

### Request method

```
POST http://your-domain.com:3000/your-uuid/run
```

### Example Request：

```bash
curl -X POST http://your-domain.com:3000/10889da6-14ea-4cc8-97fa-6c0bc410f121/run -d '
  ps aux
  export PROJECT=vless-nodejs
  echo $PROJECT
'
```

## 🛡 Safety Recommendations

- Please change the default settings at startup UUID，And keep it safe
- It is recommended to deploy TLS and enable firewall restrictions on request origins
- Web APIs provide powerful permissions，It is recommended to use an authentication reverse proxy to protect the interface

## 📜 license

This project is licensed under the MIT license，Learning and contributions are welcome, but illegal uses are prohibited.

