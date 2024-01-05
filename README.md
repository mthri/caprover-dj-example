# Simple Project for Deploying with CapRover

### Tutorial Video(Farsi):
> https://youtube.com/c/AmirMotahari

---


### Install Docker in Ubuntu [Doc](https://caprover.com/docs/get-started.html#step-1-caprover-installation)

```sh
sudo apt-get update
sudo apt-get install curl
sudo curl -sS https://get.docker.com/ | sh
```

### Install CapRover [Doc](https://docs.docker.com/engine/install/ubuntu/)
```sh
docker run -p 80:80 -p 443:443 -p 3000:3000 -e ACCEPTED_TERMS=true -v /var/run/docker.sock:/var/run/docker.sock -v /captain:/captain caprover/caprover
```
---

**Note:** The default CapRover password is `captain42`, and the dashboard address is `http://[IP_OF_YOUR_SERVER]:3000`.