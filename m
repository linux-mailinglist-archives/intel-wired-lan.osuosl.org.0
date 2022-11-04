Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE0761903B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 06:49:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B621261038;
	Fri,  4 Nov 2022 05:48:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B621261038
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667540938;
	bh=m21GDT9iT+55F9k7XlqmXnHuPqzO7dNn/wWMxZPqXdc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VExBpYidQO3uum+duJ/Mu/FH3nFeSG7m7AOB/vt/QpajA9uFL9aOJ157Gywdo5h3y
	 yciHWhxLHi6rmLj9IPCZ2Gz6tu/quvkTBcXe2+FuDbp7/mUIJtu/8+S/vnJ88zMhNo
	 2OcEkH4e7T0+ydgRfPoimBQGSci5nrRezIx5XT7ZVUYvedFy0+e/maaNvL3cbskUqV
	 x5dtIPS7Zp1uLWTQCgnB3U6evJ8aGOdZYap61Ak7GYuDxRPC7MgSvoezVuuvVFjw2/
	 F/Qrupfw62b81BjbLT5MVTzRL0mvtjMGcKipKHz5sNfFe6foSy+e4Kt3w8uc2m8op9
	 fa49fHznJFjTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FRlZdyB6d-t8; Fri,  4 Nov 2022 05:48:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8366461043;
	Fri,  4 Nov 2022 05:48:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8366461043
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5EFC91BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 05:48:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DAC94186B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 05:48:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DAC94186B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vLa-mmQNsn2O for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 05:48:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2376E4186A
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2376E4186A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 05:48:48 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 32B4AB82BE6;
 Fri,  4 Nov 2022 05:48:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4911C433D6;
 Fri,  4 Nov 2022 05:48:45 +0000 (UTC)
Received: from rostedt by gandalf.local.home with local (Exim 4.96)
 (envelope-from <rostedt@goodmis.org>) id 1oqpZo-0070xm-08;
 Fri, 04 Nov 2022 01:49:12 -0400
Message-ID: <20221104054053.431922658@goodmis.org>
User-Agent: quilt/0.66
Date: Fri, 04 Nov 2022 01:40:53 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: linux-kernel@vger.kernel.org
Subject: [Intel-wired-lan] [RFC][PATCH v3 00/33] timers: Use
 timer_shutdown*() before freeing timers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-leds@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, linux-afs@lists.infradead.org,
 lvs-devel@vger.kernel.org, linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, rcu@vger.kernel.org, cgroups@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Anna-Maria Gleixner <anna-maria@linutronix.de>, linux-edac@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-parisc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Back in April, I posted an RFC patch set to help mitigate a common issue
where a timer gets armed just before it is freed, and when the timer
goes off, it crashes in the timer code without any evidence of who the
culprit was. I got side tracked and never finished up on that patch set.
Since this type of crash is still our #1 crash we are seeing in the field,
it has become a priority again to finish it.

This is v3 of that patch set. Thomas Gleixner posted an untested version
that makes timer->function NULL as the flag that it is shutdown. I took that
code, tested it (fixed it up), added more comments, and changed the
name to timer_shutdown_sync(). I also converted it to use WARN_ON_ONCE()
instead of just WARN_ON() as Linus asked for.

I then created a trivial coccinelle script to find where del_timer*()
is called before being freed, and converted them all to timer_shutdown*()
(There was a couple that still used del_timer() instead of del_timer_sync()).

I also updated DEBUG_OBJECTS_TIMERS to check from where the timer is ever
armed, to calling of timer_shutdown_sync(), and it will trigger if a timer
is freed in between. The current way is to only check if the timer is armed,
but that means it only triggers if the race condition is hit, and with
experience, it's not run on enough machines to catch all of them. By triggering
it from the time the timer is armed to the time it is shutdown, it catches
all potential cases even if the race condition is not hit.

I went though the result of the cocinelle script, and updated the locations.
Some locations were caught by DEBUG_OBJECTS_TIMERS as the coccinelle script
only checked for timers being freed in the same function as the del_timer*().

Ideally, I would have the first patch go into this rc cycle, which is mostly
non functional as it will allow the other patches to come in via the respective
subsystems in the next merge window.

Changes since v2: https://lore.kernel.org/all/20221027150525.753064657@goodmis.org/

 - Talking with Thomas Gleixner, he wanted a better name space and to remove
   the "del_" portion of the API.

 - Since there's now a shutdown interface that does not synchronize, to keep
   it closer to del_timer() and del_timer_sync(), the API is now:

    timer_shutdown() - same as del_timer() but deactivates the timer.

    timer_shutdown_sync() - same as del_timer_sync() but deactivates the timer.

 - Added a few more locations that got converted.

  git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git
trace/timers

Head SHA1: 25106f0bb7968b3e8c746a7853f44b51840746c3


Steven Rostedt (Google) (33):
      timers: Add timer_shutdown_sync() and timer_shutdown() to be called before freeing timers
      timers: s390/cmm: Use timer_shutdown_sync() before freeing timer
      timers: sh: Use timer_shutdown_sync() before freeing timer
      timers: block: Use timer_shutdown_sync() before freeing timer
      timers: ACPI: Use timer_shutdown_sync() before freeing timer
      timers: atm: Use timer_shutdown_sync() before freeing timer
      timers: PM: Use timer_shutdown_sync()
      timers: Bluetooth: Use timer_shutdown_sync() before freeing timer
      timers: hangcheck: Use timer_shutdown_sync() before freeing timer
      timers: ipmi: Use timer_shutdown_sync() before freeing timer
      random: use timer_shutdown_sync() before freeing timer
      timers: dma-buf: Use timer_shutdown_sync() before freeing timer
      timers: drm: Use timer_shutdown_sync() before freeing timer
      timers: HID: Use timer_shutdown_sync() before freeing timer
      timers: Input: Use timer_shutdown_sync() before freeing timer
      timers: mISDN: Use timer_shutdown_sync() before freeing timer
      timers: leds: Use timer_shutdown_sync() before freeing timer
      timers: media: Use timer_shutdown_sync() before freeing timer
      timers: net: Use timer_shutdown_sync() before freeing timer
      timers: usb: Use timer_shutdown_sync() before freeing timer
      timers: cgroup: Use timer_shutdown_sync() before freeing timer
      timers: workqueue: Use timer_shutdown_sync() before freeing timer
      timers: nfc: pn533: Use timer_shutdown_sync() before freeing timer
      timers: pcmcia: Use timer_shutdown_sync() before freeing timer
      timers: scsi: Use timer_shutdown_sync() and timer_shutdown() before freeing timer
      timers: tty: Use timer_shutdown_sync() before freeing timer
      timers: ext4: Use timer_shutdown_sync() before freeing timer
      timers: fs/nilfs2: Use timer_shutdown_sync() before freeing timer
      timers: ALSA: Use timer_shutdown_sync() before freeing timer
      timers: jbd2: Use timer_shutdown() before freeing timer
      timers: sched/psi: Use timer_shutdown_sync() before freeing timer
      timers: x86/mce: Use __init_timer() for resetting timers
      timers: Expand DEBUG_OBJECTS_TIMER to check if it ever was used

----
 .../RCU/Design/Requirements/Requirements.rst       |   2 +-
 Documentation/core-api/local_ops.rst               |   2 +-
 Documentation/kernel-hacking/locking.rst           |   5 +
 arch/s390/mm/cmm.c                                 |   4 +-
 arch/sh/drivers/push-switch.c                      |   2 +-
 arch/x86/kernel/cpu/mce/core.c                     |  14 ++-
 block/blk-iocost.c                                 |   2 +-
 block/blk-iolatency.c                              |   2 +-
 block/blk-stat.c                                   |   2 +-
 block/blk-throttle.c                               |   2 +-
 block/kyber-iosched.c                              |   2 +-
 drivers/acpi/apei/ghes.c                           |   2 +-
 drivers/atm/idt77105.c                             |   4 +-
 drivers/atm/idt77252.c                             |   4 +-
 drivers/atm/iphase.c                               |   2 +-
 drivers/base/power/wakeup.c                        |   7 +-
 drivers/block/drbd/drbd_main.c                     |   2 +-
 drivers/block/loop.c                               |   2 +-
 drivers/block/sunvdc.c                             |   2 +-
 drivers/bluetooth/hci_bcsp.c                       |   2 +-
 drivers/bluetooth/hci_h5.c                         |   2 +-
 drivers/bluetooth/hci_qca.c                        |   4 +-
 drivers/char/hangcheck-timer.c                     |   4 +-
 drivers/char/ipmi/ipmi_msghandler.c                |   2 +-
 drivers/char/ipmi/ipmi_ssif.c                      |   4 +-
 drivers/char/random.c                              |   2 +-
 drivers/dma-buf/st-dma-fence.c                     |   2 +-
 drivers/gpu/drm/gud/gud_pipe.c                     |   2 +-
 drivers/gpu/drm/i915/i915_sw_fence.c               |   2 +-
 drivers/hid/hid-wiimote-core.c                     |   2 +-
 drivers/input/keyboard/locomokbd.c                 |   2 +-
 drivers/input/keyboard/omap-keypad.c               |   2 +-
 drivers/input/mouse/alps.c                         |   2 +-
 drivers/input/serio/hil_mlc.c                      |   2 +-
 drivers/input/serio/hp_sdc.c                       |   2 +-
 drivers/isdn/hardware/mISDN/hfcmulti.c             |   6 +-
 drivers/isdn/mISDN/l1oip_core.c                    |   4 +-
 drivers/isdn/mISDN/timerdev.c                      |   4 +-
 drivers/leds/trigger/ledtrig-activity.c            |   2 +-
 drivers/leds/trigger/ledtrig-heartbeat.c           |   2 +-
 drivers/leds/trigger/ledtrig-pattern.c             |   2 +-
 drivers/leds/trigger/ledtrig-transient.c           |   2 +-
 drivers/media/pci/ivtv/ivtv-driver.c               |   2 +-
 drivers/media/usb/pvrusb2/pvrusb2-hdw.c            |  18 ++--
 drivers/media/usb/s2255/s2255drv.c                 |   4 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c        |   6 +-
 drivers/net/ethernet/marvell/sky2.c                |   2 +-
 drivers/net/ethernet/sun/sunvnet.c                 |   2 +-
 drivers/net/usb/sierra_net.c                       |   2 +-
 drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c   |   2 +-
 drivers/net/wireless/intersil/hostap/hostap_ap.c   |   2 +-
 drivers/net/wireless/marvell/mwifiex/main.c        |   2 +-
 drivers/net/wireless/microchip/wilc1000/hif.c      |   8 +-
 drivers/nfc/pn533/pn533.c                          |   2 +-
 drivers/nfc/pn533/uart.c                           |   2 +-
 drivers/pcmcia/bcm63xx_pcmcia.c                    |   2 +-
 drivers/pcmcia/electra_cf.c                        |   2 +-
 drivers/pcmcia/omap_cf.c                           |   2 +-
 drivers/pcmcia/pd6729.c                            |   4 +-
 drivers/pcmcia/yenta_socket.c                      |   4 +-
 drivers/scsi/qla2xxx/qla_edif.c                    |   4 +-
 drivers/scsi/scsi_lib.c                            |   1 +
 drivers/staging/media/atomisp/i2c/atomisp-lm3554.c |   2 +-
 drivers/tty/n_gsm.c                                |   2 +-
 drivers/tty/sysrq.c                                |   2 +-
 drivers/usb/gadget/udc/m66592-udc.c                |   2 +-
 drivers/usb/serial/garmin_gps.c                    |   2 +-
 drivers/usb/serial/mos7840.c                       |   2 +-
 fs/ext4/super.c                                    |   2 +-
 fs/jbd2/journal.c                                  |   2 +
 fs/nilfs2/segment.c                                |   2 +-
 include/linux/timer.h                              | 100 +++++++++++++++++--
 include/linux/workqueue.h                          |   4 +-
 kernel/cgroup/cgroup.c                             |   2 +-
 kernel/sched/psi.c                                 |   1 +
 kernel/time/timer.c                                | 106 ++++++++++++++-------
 kernel/workqueue.c                                 |   4 +-
 net/802/garp.c                                     |   2 +-
 net/802/mrp.c                                      |   2 +-
 net/bridge/br_multicast.c                          |   6 +-
 net/bridge/br_multicast_eht.c                      |   4 +-
 net/core/gen_estimator.c                           |   2 +-
 net/core/neighbour.c                               |   2 +
 net/ipv4/inet_connection_sock.c                    |   2 +-
 net/ipv4/inet_timewait_sock.c                      |   3 +-
 net/ipv4/ipmr.c                                    |   2 +-
 net/ipv6/ip6mr.c                                   |   2 +-
 net/mac80211/mesh_pathtbl.c                        |   2 +-
 net/netfilter/ipset/ip_set_list_set.c              |   2 +-
 net/netfilter/ipvs/ip_vs_lblc.c                    |   2 +-
 net/netfilter/ipvs/ip_vs_lblcr.c                   |   2 +-
 net/netfilter/xt_LED.c                             |   2 +-
 net/rxrpc/conn_object.c                            |   2 +-
 net/sched/cls_flow.c                               |   2 +-
 net/sunrpc/svc.c                                   |   2 +-
 net/sunrpc/xprt.c                                  |   2 +-
 net/tipc/discover.c                                |   2 +-
 net/tipc/monitor.c                                 |   2 +-
 sound/i2c/other/ak4117.c                           |   2 +-
 sound/synth/emux/emux.c                            |   2 +-
 100 files changed, 310 insertions(+), 175 deletions(-)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
