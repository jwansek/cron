# cron
Docker image for running cronjobs, with logging.

`docker build -t reg.reaweb.uk/cron . && docker push reg.reaweb.uk/cron`

## Example `Dockerfile`:

Dockerfile```
FROM reg.reaweb.uk/cron

RUN echo "0 21 * * sat,wed root python3 /app/autoBackup.py > /proc/1/fd/1 2>/proc/1/fd/2" > /etc/crontab
RUN echo "@monthly root python3 /app/autoScrub.py > /proc/1/fd/1 2>/proc/1/fd/2" >> /etc/crontab
```

