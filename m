Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AB84C6FF3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Feb 2022 15:48:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1CF3405C7;
	Mon, 28 Feb 2022 14:48:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tYCu1zJp4x7f; Mon, 28 Feb 2022 14:48:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0513440407;
	Mon, 28 Feb 2022 14:48:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FB5A1BF34E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:08:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1996560B10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:08:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZuoAmpvzCO3J for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Feb 2022 11:08:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DECE6600C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:08:54 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id p15so23995800ejc.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 03:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DGHuYFjchXbmgUIZ1SnPPgINXW2r1tGfV7LKxanZ5rw=;
 b=mx6+xil8F/OwTucWDkjx4s8oWe9qKYEvq+lRSteVfL7qHoHjMYzOaON1c2kL9OYiTX
 db1Mykp/ffS9il6Fqi76pAlN/G5rXNdswBXj/5Gig3gkxoatbBHPRDADsVd/P2bKgern
 FiNaHDXHNfiQkUQdDT0QxGTuel99Vo9xYQqWbNfVZEfqWt3+vAZeTOc1QbByn6ecNGa6
 S2BlhLxmBqy/aCRkfkMxvBR+4RMiFfh+//eOhtERGL+8TdWCfHba+zdrYCDUyKUpjEKv
 GoJF4WvvVQmT7fMcDismFLp5shdM79FKyOLpnEpulQji7R6fg8Aw9kXLsIi9eJ28dAK+
 e6Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DGHuYFjchXbmgUIZ1SnPPgINXW2r1tGfV7LKxanZ5rw=;
 b=pXmg/Ki+AdOKH88AJyjI2O6RkGnXlS/N0A9gHeBigLv8EttRk1sTiNB1pvb20i49hO
 0DZEFftA8D3UJ1M6LFXuDCNT/QliYYZdCm7J4mtnCm3YcYjKQZQxjF2k1qss4P9YZFZ+
 30a5okLnLKsKFv4Nd0HYVK5r5o4d1yUcEWA/0PSvdPBjOULz3C83LawhTexKPZGfn5XH
 9XBgTVHrLL3WxK4m099J+Cwmc17W9pMMOvkUTFzSjUhQ0bVcqGR5ikhGXcdt+4ewWC89
 AMRo0nhoi5a5Mj/UJEkakog1ZWrNSdmSArNLYr+1oZQ67IcauQE2sYvwz8Mf0NGblbuH
 i27Q==
X-Gm-Message-State: AOAM533/WuAAB0YsODJW+6H3oooHmpPqNWvhBFj1K3jS7ZnLNr3pDMTJ
 +UfiCpqlj7kMzXql27fRqm8=
X-Google-Smtp-Source: ABdhPJzNctGRxtGORumk8xJxhLEhhYPBXw3MCY4PM4mZEwTJgQgzAy87Z2fgE8nw5jOtXDmEFeeNlg==
X-Received: by 2002:a17:906:32d8:b0:6ce:d850:f79 with SMTP id
 k24-20020a17090632d800b006ced8500f79mr14260258ejk.414.1646046532887; 
 Mon, 28 Feb 2022 03:08:52 -0800 (PST)
Received: from localhost.localdomain (dhcp-077-250-038-153.chello.nl.
 [77.250.38.153]) by smtp.googlemail.com with ESMTPSA id
 z22-20020a17090655d600b006d229436793sm4209049ejp.223.2022.02.28.03.08.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 03:08:52 -0800 (PST)
From: Jakob Koschel <jakobkoschel@gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 28 Feb 2022 12:08:16 +0100
Message-Id: <20220228110822.491923-1-jakobkoschel@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Feb 2022 14:48:22 +0000
Subject: [Intel-wired-lan] [PATCH 0/6] Remove usage of list iterator past
 the loop body
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
Cc: alsa-devel@alsa-project.org, linux-aspeed@lists.ozlabs.org,
 linux-iio@vger.kernel.org, nouveau@lists.freedesktop.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, dri-devel@lists.freedesktop.org,
 Cristiano Giuffrida <c.giuffrida@vu.nl>, amd-gfx@lists.freedesktop.org,
 samba-technical@lists.samba.org, linux1394-devel@lists.sourceforge.net,
 drbd-dev@lists.linbit.com, linux-arch <linux-arch@vger.kernel.org>,
 linux-cifs@vger.kernel.org, kvm@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev, "Bos,
 H.J." <h.j.bos@vu.nl>, Jason Gunthorpe <jgg@ziepe.ca>,
 intel-wired-lan@lists.osuosl.org, kgdb-bugreport@lists.sourceforge.net,
 bcm-kernel-feedback-list@broadcom.com,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergman <arnd@arndb.de>,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Nathan Chancellor <nathan@kernel.org>, linux-fsdevel@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Jakob Koschel <jakobkoschel@gmail.com>, v9fs-developer@lists.sourceforge.net,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-sgx@vger.kernel.org,
 linux-block@vger.kernel.org, netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, tipc-discussion@lists.sourceforge.net,
 linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is the first patch removing several categories of use cases of
the list iterator variable past the loop.
This is follow up to the discussion in:
https://lore.kernel.org/all/20220217184829.1991035-1-jakobkoschel@gmail.com/

As concluded in:
https://lore.kernel.org/all/YhdfEIwI4EdtHdym@kroah.com/
the correct use should be using a separate variable after the loop
and using a 'tmp' variable as the list iterator.
The list iterator will not point to a valid structure after the loop
if no break/goto was hit. Invalid uses of the list iterator variable
can be avoided altogether by simply using a separate pointer to
iterate the list.

Linus and Greg agreed on the following pattern:

-	struct gr_request *req;
+	struct gr_request *req = NULL;
+	struct gr_request *tmp;
	struct gr_ep *ep;
	int ret = 0;

-	list_for_each_entry(req, &ep->queue, queue) {
-		if (&req->req == _req)
+	list_for_each_entry(tmp, &ep->queue, queue) {
+		if (&tmp->req == _req) {
+			req = tmp;
			break;
+		}
	}
-	if (&req->req != _req) {
+	if (!req) {
		ret = -EINVAL;
		goto out;
	}


With gnu89 the list iterator variable cannot yet be declared
within the for loop of the list iterator.
Moving to a more modern version of C would allow defining
the list iterator variable within the macro, limiting
the scope to the loop.
This avoids any incorrect usage past the loop altogether.

This are around 30% of the cases where the iterator
variable is used past the loop (identified with a slightly
modified version of use_after_iter.cocci).
I've decided to split it into at a few patches separated
by similar use cases.

Because the output of get_maintainer.pl was too big,
I included all the found lists and everyone from the
previous discussion.

Jakob Koschel (6):
  drivers: usb: remove usage of list iterator past the loop body
  treewide: remove using list iterator after loop body as a ptr
  treewide: fix incorrect use to determine if list is empty
  drivers: remove unnecessary use of list iterator variable
  treewide: remove dereference of list iterator after loop body
  treewide: remove check of list iterator against head past the loop
    body

 arch/arm/mach-mmp/sram.c                      |  9 ++--
 arch/arm/plat-pxa/ssp.c                       | 28 +++++-------
 arch/powerpc/sysdev/fsl_gtm.c                 |  4 +-
 arch/x86/kernel/cpu/sgx/encl.c                |  6 ++-
 drivers/block/drbd/drbd_req.c                 | 45 ++++++++++++-------
 drivers/counter/counter-chrdev.c              | 26 ++++++-----
 drivers/crypto/cavium/nitrox/nitrox_main.c    | 11 +++--
 drivers/dma/dw-edma/dw-edma-core.c            |  4 +-
 drivers/dma/ppc4xx/adma.c                     | 11 +++--
 drivers/firewire/core-transaction.c           | 32 +++++++------
 drivers/firewire/sbp2.c                       | 14 +++---
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c        | 19 +++++---
 drivers/gpu/drm/drm_memory.c                  | 15 ++++---
 drivers/gpu/drm/drm_mm.c                      | 17 ++++---
 drivers/gpu/drm/drm_vm.c                      | 13 +++---
 drivers/gpu/drm/gma500/oaktrail_lvds.c        |  9 ++--
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 14 +++---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 15 ++++---
 drivers/gpu/drm/i915/gt/intel_ring.c          | 15 ++++---
 .../gpu/drm/nouveau/nvkm/subdev/clk/base.c    | 11 +++--
 .../gpu/drm/nouveau/nvkm/subdev/fb/ramgk104.c | 13 +++---
 drivers/gpu/drm/scheduler/sched_main.c        | 14 +++---
 drivers/gpu/drm/ttm/ttm_bo.c                  | 19 ++++----
 drivers/gpu/drm/vmwgfx/vmwgfx_kms.c           | 22 +++++----
 drivers/infiniband/hw/hfi1/tid_rdma.c         | 16 ++++---
 drivers/infiniband/hw/mlx4/main.c             | 12 ++---
 drivers/media/dvb-frontends/mxl5xx.c          | 11 +++--
 drivers/media/pci/saa7134/saa7134-alsa.c      |  4 +-
 drivers/media/v4l2-core/v4l2-ctrls-api.c      | 31 +++++++------
 drivers/misc/mei/interrupt.c                  | 12 ++---
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  3 +-
 .../net/ethernet/qlogic/qede/qede_filter.c    | 11 +++--
 drivers/net/wireless/ath/ath6kl/htc_mbox.c    |  2 +-
 .../net/wireless/intel/ipw2x00/libipw_rx.c    | 15 ++++---
 drivers/perf/xgene_pmu.c                      | 13 +++---
 drivers/power/supply/cpcap-battery.c          | 11 +++--
 drivers/scsi/lpfc/lpfc_bsg.c                  | 16 ++++---
 drivers/scsi/scsi_transport_sas.c             | 17 ++++---
 drivers/scsi/wd719x.c                         | 12 +++--
 drivers/staging/rtl8192e/rtl819x_TSProc.c     | 17 +++----
 drivers/staging/rtl8192e/rtllib_rx.c          | 17 ++++---
 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 15 ++++---
 .../rtl8192u/ieee80211/rtl819x_TSProc.c       | 19 ++++----
 drivers/thermal/thermal_core.c                | 38 ++++++++++------
 drivers/usb/gadget/composite.c                |  9 ++--
 drivers/usb/gadget/configfs.c                 | 22 +++++----
 drivers/usb/gadget/udc/aspeed-vhub/epn.c      | 11 +++--
 drivers/usb/gadget/udc/at91_udc.c             | 26 ++++++-----
 drivers/usb/gadget/udc/atmel_usba_udc.c       | 11 +++--
 drivers/usb/gadget/udc/bdc/bdc_ep.c           | 11 +++--
 drivers/usb/gadget/udc/fsl_qe_udc.c           | 11 +++--
 drivers/usb/gadget/udc/fsl_udc_core.c         | 11 +++--
 drivers/usb/gadget/udc/goku_udc.c             | 11 +++--
 drivers/usb/gadget/udc/gr_udc.c               | 11 +++--
 drivers/usb/gadget/udc/lpc32xx_udc.c          | 11 +++--
 drivers/usb/gadget/udc/max3420_udc.c          | 11 +++--
 drivers/usb/gadget/udc/mv_u3d_core.c          | 11 +++--
 drivers/usb/gadget/udc/mv_udc_core.c          | 11 +++--
 drivers/usb/gadget/udc/net2272.c              | 12 ++---
 drivers/usb/gadget/udc/net2280.c              | 11 +++--
 drivers/usb/gadget/udc/omap_udc.c             | 11 +++--
 drivers/usb/gadget/udc/pxa25x_udc.c           | 11 +++--
 drivers/usb/gadget/udc/s3c-hsudc.c            | 11 +++--
 drivers/usb/gadget/udc/tegra-xudc.c           | 11 +++--
 drivers/usb/gadget/udc/udc-xilinx.c           | 11 +++--
 drivers/usb/mtu3/mtu3_gadget.c                | 11 +++--
 drivers/usb/musb/musb_gadget.c                | 11 +++--
 drivers/vfio/mdev/mdev_core.c                 | 11 +++--
 fs/cifs/smb2misc.c                            | 10 +++--
 fs/f2fs/segment.c                             |  9 ++--
 fs/proc/kcore.c                               | 13 +++---
 kernel/debug/kdb/kdb_main.c                   | 36 +++++++++------
 kernel/power/snapshot.c                       | 10 +++--
 kernel/trace/ftrace.c                         | 22 +++++----
 kernel/trace/trace_eprobe.c                   | 15 ++++---
 kernel/trace/trace_events.c                   | 11 ++---
 net/9p/trans_xen.c                            | 11 +++--
 net/ipv4/udp_tunnel_nic.c                     | 10 +++--
 net/tipc/name_table.c                         | 11 +++--
 net/tipc/socket.c                             | 11 +++--
 net/xfrm/xfrm_ipcomp.c                        | 11 +++--
 sound/soc/intel/catpt/pcm.c                   | 13 +++---
 sound/soc/sprd/sprd-mcdt.c                    | 13 +++---
 83 files changed, 708 insertions(+), 465 deletions(-)


base-commit: 7ee022567bf9e2e0b3cd92461a2f4986ecc99673
--
2.25.1
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
