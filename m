Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA45261D7A8
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Nov 2022 07:01:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0698E41A45;
	Sat,  5 Nov 2022 06:01:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0698E41A45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667628100;
	bh=MktYvY9//I5zH/p8U4DOtZn0LSSE0nxdGzKahzdjIGo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=v8dMoZxzy+hoIib6TrHGlXaUrb6CnNDpgiktCeApBKk6Xv5vFoyqI0tOXrNMeDT5R
	 cI7Vp73MTBJHYIw4hUWOccp8qrGY6LsvFPDU7yAQ02/M8ik/fAIveCxGiHRKBNvW3T
	 cqON6Pne4grQ0qzjUL8cQNHUUSMFsNFgdGc60IYCVpNPUTQnmwJbmrQ5MVzpImxmNa
	 THZhLXo/Gondf5miHIpMH9shPkQeGIIW0fb+HT8KfqNkW22VXcpGQ/O0DOod34iXrJ
	 XrtFHRqc1wwpQnMIgzq7opKa2uz4zKlHGzQU3Jos9Yr9q6N/+6FReV7AYxsP26bIyw
	 gue0jGjn13V7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MUhDnvDnrZOb; Sat,  5 Nov 2022 06:01:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA72141A4A;
	Sat,  5 Nov 2022 06:01:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA72141A4A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E3291BF57F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 06:01:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7547161162
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 06:01:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7547161162
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BPSa80tE3bnR for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Nov 2022 06:01:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D92DB60C23
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D92DB60C23
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Nov 2022 06:01:30 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6CB25B81CC0;
 Sat,  5 Nov 2022 06:01:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08B27C433C1;
 Sat,  5 Nov 2022 06:01:27 +0000 (UTC)
Received: from rostedt by gandalf.local.home with local (Exim 4.96)
 (envelope-from <rostedt@goodmis.org>) id 1orCFf-007Oer-03;
 Sat, 05 Nov 2022 02:01:55 -0400
Message-ID: <20221105060024.598488967@goodmis.org>
User-Agent: quilt/0.66
Date: Sat, 05 Nov 2022 02:00:24 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: linux-kernel@vger.kernel.org
Subject: [Intel-wired-lan] [PATCH v4a 00/38] timers: Use timer_shutdown*()
 before freeing timers
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

The last version of that patch set is here:

  https://lore.kernel.org/all/20221104054053.431922658@goodmis.org/

I'm calling this version 4a as it only has obvious changes were the timer that
is being shutdown is in the same function where it will be freed or released,
as this series should be "safe" for adding. I'll be calling the other patches
4b for the next merge window.

Patch 1 fixes an issue with sunrpc/xprt where it incorrectly uses
del_singleshot_timer_sync() for something that is not a oneshot timer. As this
will be converted to shutdown, this needs to be fixed first.

Patches 2-4 changes existing timer_shutdown() functions used locally in ARM and
some drivers to better namespace names.

Patch 5 implements the new timer_shutdown() and timer_shutdown_sync() functions
that disable re-arming the timer after they are called.

Patches 6-28 change all the locations where there's a kfree(), kfree_rcu(),
kmem_cache_free() and one call_rcu() call where the RCU function frees the
timer (the workqueue patch) in the same function as the del_timer{,_sync}() is
called on that timer, and there's no extra exit path between the del_timer and
freeing of the timer.

Patches 29-32 add timer_shutdown*() on on-stack timers that are about to be
released at the end of the function.

Patches 33-37 add timer_shutdown*() on module timers in the module exit code.

Patch 38 simply converts an open coded "shutdown" code into timer_shutdown(),
as a way timer_shutdown() disables the timer is by setting that timer function
to NULL.

Linus, I sorted the patches this way to let you see which you would think is
safe to go into this -rc. I honestly believe that they are all safe, but that's
just my own opinion.

This series is here:

  git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git
timers-start

Head SHA1: f58b516a65bac76f1bfa00126856d6c6c3d24a40


Steven Rostedt (Google) (38):
      SUNRPC/xprt: Use del_timer_sync() instead of del_singleshot_timer_sync()
      ARM: spear: Do not use timer namespace for timer_shutdown() function
      clocksource/drivers/arm_arch_timer: Do not use timer namespace for timer_shutdown() function
      clocksource/drivers/sp804: Do not use timer namespace for timer_shutdown() function
      timers: Add timer_shutdown_sync() and timer_shutdown() to be called before freeing timers
      timers: sh: Use timer_shutdown_sync() before freeing timer
      timers: block: Use timer_shutdown_sync() before freeing timer
      timers: ACPI: Use timer_shutdown_sync() before freeing timer
      timers: atm: Use timer_shutdown_sync() before freeing timer
      timers: Bluetooth: Use timer_shutdown_sync() before freeing timer
      timers: drm: Use timer_shutdown_sync() before freeing timer
      timers: HID: Use timer_shutdown_sync() before freeing timer
      timers: Input: Use timer_shutdown_sync() before freeing timer
      timers: mISDN: Use timer_shutdown_sync() before freeing timer
      timers: leds: Use timer_shutdown_sync() before freeing timer
      timers: media: Use timer_shutdown_sync() before freeing timer
      timers: net: Use timer_shutdown_sync() before freeing timer
      timers: usb: Use timer_shutdown_sync() before freeing timer
      timers: nfc: pn533: Use timer_shutdown_sync() before freeing timer
      timers: pcmcia: Use timer_shutdown_sync() before freeing timer
      timers: scsi: Use timer_shutdown_sync() and timer_shutdown() before freeing timer
      timers: tty: Use timer_shutdown_sync() before freeing timer
      timers: ext4: Use timer_shutdown_sync() before freeing timer
      timers: fs/nilfs2: Use timer_shutdown_sync() before freeing timer
      timers: ALSA: Use timer_shutdown_sync() before freeing timer
      timers: jbd2: Use timer_shutdown() before freeing timer
      timers: sched/psi: Use timer_shutdown_sync() before freeing timer
      timers: workqueue: Use timer_shutdown_sync() before freeing timer
      random: use timer_shutdown_sync() for on stack timers
      timers: dma-buf: Use timer_shutdown_sync() for on stack timers
      timers: drm: Use timer_shutdown_sync() for on stack timers
      timers: media: Use timer_shutdown_sync() for on stack timers
      timers: s390/cmm: Use timer_shutdown_sync() before a module is released
      timers: atm: Use timer_shutdown_sync() before a module is released
      timers: hangcheck: Use timer_shutdown_sync() before a module is released
      timers: ipmi: Use timer_shutdown_sync() before a module is released
      timers: Input: Use timer_shutdown_sync() before a module is released
      timers: PM: Use timer_shutdown_sync()

----
 .../RCU/Design/Requirements/Requirements.rst       |  2 +-
 Documentation/core-api/local_ops.rst               |  2 +-
 Documentation/kernel-hacking/locking.rst           |  5 ++
 arch/arm/mach-spear/time.c                         |  8 +--
 arch/s390/mm/cmm.c                                 |  4 +-
 arch/sh/drivers/push-switch.c                      |  2 +-
 block/blk-iocost.c                                 |  2 +-
 block/blk-iolatency.c                              |  2 +-
 block/blk-throttle.c                               |  2 +-
 block/kyber-iosched.c                              |  2 +-
 drivers/acpi/apei/ghes.c                           |  2 +-
 drivers/atm/idt77105.c                             |  4 +-
 drivers/atm/idt77252.c                             |  4 +-
 drivers/atm/iphase.c                               |  2 +-
 drivers/base/power/wakeup.c                        |  7 +--
 drivers/block/drbd/drbd_main.c                     |  2 +-
 drivers/block/loop.c                               |  2 +-
 drivers/block/sunvdc.c                             |  2 +-
 drivers/bluetooth/hci_bcsp.c                       |  2 +-
 drivers/bluetooth/hci_h5.c                         |  4 +-
 drivers/bluetooth/hci_qca.c                        |  4 +-
 drivers/char/hangcheck-timer.c                     |  4 +-
 drivers/char/ipmi/ipmi_msghandler.c                |  2 +-
 drivers/char/random.c                              |  2 +-
 drivers/clocksource/arm_arch_timer.c               | 12 ++--
 drivers/clocksource/timer-sp804.c                  |  6 +-
 drivers/dma-buf/st-dma-fence.c                     |  2 +-
 drivers/gpu/drm/gud/gud_pipe.c                     |  2 +-
 drivers/gpu/drm/i915/i915_sw_fence.c               |  2 +-
 drivers/hid/hid-wiimote-core.c                     |  2 +-
 drivers/input/keyboard/locomokbd.c                 |  2 +-
 drivers/input/keyboard/omap-keypad.c               |  2 +-
 drivers/input/mouse/alps.c                         |  2 +-
 drivers/input/serio/hil_mlc.c                      |  2 +-
 drivers/isdn/hardware/mISDN/hfcmulti.c             |  5 +-
 drivers/isdn/mISDN/l1oip_core.c                    |  4 +-
 drivers/isdn/mISDN/timerdev.c                      |  4 +-
 drivers/leds/trigger/ledtrig-pattern.c             |  2 +-
 drivers/leds/trigger/ledtrig-transient.c           |  2 +-
 drivers/media/pci/ivtv/ivtv-driver.c               |  2 +-
 drivers/media/usb/pvrusb2/pvrusb2-hdw.c            | 18 +++---
 drivers/media/usb/s2255/s2255drv.c                 |  4 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c        |  7 +--
 drivers/net/ethernet/marvell/sky2.c                |  2 +-
 drivers/net/ethernet/sun/sunvnet.c                 |  2 +-
 drivers/net/usb/sierra_net.c                       |  2 +-
 drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c   |  2 +-
 drivers/net/wireless/intersil/hostap/hostap_ap.c   |  2 +-
 drivers/net/wireless/marvell/mwifiex/main.c        |  2 +-
 drivers/net/wireless/microchip/wilc1000/hif.c      |  6 +-
 drivers/nfc/pn533/pn533.c                          |  2 +-
 drivers/nfc/pn533/uart.c                           |  2 +-
 drivers/pcmcia/bcm63xx_pcmcia.c                    |  2 +-
 drivers/pcmcia/electra_cf.c                        |  2 +-
 drivers/pcmcia/omap_cf.c                           |  2 +-
 drivers/pcmcia/pd6729.c                            |  4 +-
 drivers/pcmcia/yenta_socket.c                      |  4 +-
 drivers/scsi/qla2xxx/qla_edif.c                    |  4 +-
 drivers/staging/media/atomisp/i2c/atomisp-lm3554.c |  2 +-
 drivers/tty/n_gsm.c                                |  2 +-
 drivers/tty/sysrq.c                                |  2 +-
 drivers/usb/gadget/udc/m66592-udc.c                |  2 +-
 drivers/usb/serial/garmin_gps.c                    |  2 +-
 drivers/usb/serial/mos7840.c                       |  2 +-
 fs/ext4/super.c                                    |  2 +-
 fs/jbd2/journal.c                                  |  2 +
 fs/nilfs2/segment.c                                |  2 +-
 include/linux/timer.h                              | 64 +++++++++++++++++++---
 kernel/sched/psi.c                                 |  1 +
 kernel/time/timer.c                                | 64 ++++++++++++----------
 kernel/workqueue.c                                 |  4 +-
 net/802/garp.c                                     |  2 +-
 net/802/mrp.c                                      |  2 +-
 net/bridge/br_multicast.c                          |  6 +-
 net/bridge/br_multicast_eht.c                      |  4 +-
 net/core/gen_estimator.c                           |  2 +-
 net/core/neighbour.c                               |  2 +
 net/ipv4/inet_timewait_sock.c                      |  1 +
 net/ipv4/ipmr.c                                    |  2 +-
 net/ipv6/ip6mr.c                                   |  2 +-
 net/mac80211/mesh_pathtbl.c                        |  2 +-
 net/netfilter/ipset/ip_set_list_set.c              |  2 +-
 net/netfilter/ipvs/ip_vs_lblc.c                    |  2 +-
 net/netfilter/ipvs/ip_vs_lblcr.c                   |  2 +-
 net/netfilter/xt_LED.c                             |  2 +-
 net/rxrpc/conn_object.c                            |  2 +-
 net/sched/cls_flow.c                               |  2 +-
 net/sunrpc/svc.c                                   |  2 +-
 net/sunrpc/xprt.c                                  |  2 +-
 net/tipc/discover.c                                |  2 +-
 net/tipc/monitor.c                                 |  2 +-
 sound/i2c/other/ak4117.c                           |  2 +-
 sound/synth/emux/emux.c                            |  2 +-
 93 files changed, 227 insertions(+), 169 deletions(-)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
