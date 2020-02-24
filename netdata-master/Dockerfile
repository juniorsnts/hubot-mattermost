FROM netdata/netdata

COPY health_alarm_notify.conf /usr/lib/netdata/conf.d/health_alarm_notify.conf
RUN chown -R netdata:netdata /usr/lib/netdata/conf.d/health_alarm_notify.conf
RUN chmod +x /usr/lib/netdata/conf.d/health_alarm_notify.conf
# COPY stream.conf /usr/lib/netdata/conf.d/stream.conf
