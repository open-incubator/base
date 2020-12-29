# Utils script

### Startp.sh

Description : Clone and run docker-compose up -d

Usage : 
```bash
./startp.sh [repositorygit link] [repository name]
```

Example : 
```bash
# From main directory
./utils/startp.sh https://github.com/open-incubator/open-incubator.github.io open-incubator.github.io
```

### Rebuildp.sh

Description : Rebuild image and restart service with docker-compose

Usage : 
```bash
./rebuildp.sh
```

Example : 
```bash
# From projects/open-incubator.github.io
../../utils/rebuildp.sh
```

### Restartp.sh

Description : Simply run docker-compose stop and docker-compose start

Usage : 
```bash
./restartp.sh
```

Example : 
```bash
# From projects/open-incubator.github.io
../../utils/restartp.sh
```
