Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE572CEC32
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 11:30:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2268687893;
	Fri,  4 Dec 2020 10:30:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JODjKHgpPdrX; Fri,  4 Dec 2020 10:30:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 522A087849;
	Fri,  4 Dec 2020 10:30:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF6801BF391
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 10:30:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AA54787C4C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 10:30:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zm6mKs7BUVvR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 10:30:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2891E87C48
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 10:30:07 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id q13so6966498lfr.10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 02:30:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=okK9R+EpQDmMtHiCvnMrxiTd1O0LGgdUU5QYwf1cWDY=;
 b=LK2No5YP826qKY0vcMrXrj5zqKZxlfTuNgxC7wwStUuQ7F97Npllq+4iwQ7BORmVJF
 nY1TM8WGi74JPaf65jEtFd+lSjxfQAfuFjDFmdLnKLFdcZEbXCCsAuR6qqni7jFhTUUR
 4G70rrxDlkP74lQ6zQ7Slma9DmOuCeXIGCM048Fo4CyNxfPh3/83PDO5bgFfZYv9uxZT
 hwBnSw2U3Bj/Rbjr/oISau22euJYVTt7w+b0uViDyA+mq81xYqAaufWeALvv7D1EadNF
 FP8TSm7/4lrHB2DT6SIoVQqWHTEXp075hq27GuaXmfR9nFKpa7a6HJ/6kZvnj6ibz7xF
 CmYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=okK9R+EpQDmMtHiCvnMrxiTd1O0LGgdUU5QYwf1cWDY=;
 b=m7zZpow6vzuiAYivNaFJPyivmQ+papC9jrJ9nZkAOyEFbtwmLoiEl/wygUKFyArVsQ
 D12xnRi/gxTH3Kv/0d8ZtRdlMJ1XAslMaFM1BIvwXKoiHso7kX66g9BGwDoG/cJPjbbm
 Rwv93uYcNhOWgoF+MXIU6VrZAHXVitY/Nfun2MwFfvub51IajbNzmKl/FaC43hQvohlF
 dXNdt/ttzr4GrpAf0O7rmB08KBItWpq6RUMtM5orQx9OIpPOOkxGRHbB+yuefEhcBwdP
 C33wVXi7h4Y8DCaDeWrYaasVizT5HOhCkO/G1d3SS9rdREQ73cTdh2apOCjnXw5F8uGa
 7pFg==
X-Gm-Message-State: AOAM5312NSwI/48zn8orz7kRykqRyXQrKApffP85BDS0H96ZUB9vG4DQ
 /ZqjMtEoJpGJau8a6QEfEW8=
X-Google-Smtp-Source: ABdhPJxkk+iECwG/S50v63B/0Tdh+L98gPLu8FcppDHXL5mUtgLV4biMQdvh0rY3kZCDcKhuPWgUHQ==
X-Received: by 2002:a05:6512:48e:: with SMTP id
 v14mr3190398lfq.255.1607077805141; 
 Fri, 04 Dec 2020 02:30:05 -0800 (PST)
Received: from localhost.localdomain (87-205-71-93.adsl.inetia.pl.
 [87.205.71.93])
 by smtp.gmail.com with ESMTPSA id d9sm62738lfj.228.2020.12.04.02.30.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Dec 2020 02:30:04 -0800 (PST)
From: alardam@gmail.com
X-Google-Original-From: marekx.majtyka@intel.com
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 andrii.nakryiko@gmail.com, kuba@kernel.org, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, davem@davemloft.net,
 john.fastabend@gmail.com, hawk@kernel.org, toke@redhat.com
Date: Fri,  4 Dec 2020 11:29:00 +0100
Message-Id: <20201204102901.109709-5-marekx.majtyka@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201204102901.109709-1-marekx.majtyka@intel.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 bpf 4/5] xsk: add check for full
 support of XDP in bind
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
Cc: maciejromanfijalkowski@gmail.com, Marek Majtyka <marekx.majtyka@intel.com>,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marek Majtyka <marekx.majtyka@intel.com>

Add check for full support of XDP in AF_XDP socket bind.

To be able to use an AF_XDP socket with zero-copy, there needs to be
support for both XDP_REDIRECT in the driver (XDP native mode) and the
driver needs to support zero-copy. The problem is that there are
drivers out there that only support XDP partially, so it is possible
to successfully load the XDP program in native mode, but it will still
not be able to support zero-copy as it does not have XDP_REDIRECT
support. We can now alleviate this problem by using the new XDP netdev
capability that signifies if full XDP support is indeed present. This
check can be triggered by a new bind flag called
XDP_CHECK_NATIVE_MODE.

To simplify usage, this check is triggered automatically from inside
libbpf library via turning on the new XDP_CHECK_NATIVE_MODE flag if and
only if the driver mode is selected for the socket. As a result, the
xsk_bind function decides if the native mode for a given interface makes
sense or not using xdp netdev feature flags. Eventually the xsk socket is
bound or an error is returned. Apart from this change and to catch all
invalid inputs in a single place, an additional check is set to forbid
sbk mode and zero copy settings at the same time as that combination makes
no sense.

Signed-off-by: Marek Majtyka <marekx.majtyka@intel.com>
---
 include/uapi/linux/if_xdp.h       |  1 +
 net/xdp/xsk.c                     |  4 ++--
 net/xdp/xsk_buff_pool.c           | 17 ++++++++++++++++-
 tools/include/uapi/linux/if_xdp.h |  1 +
 tools/lib/bpf/xsk.c               |  3 +++
 5 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/include/uapi/linux/if_xdp.h b/include/uapi/linux/if_xdp.h
index a78a8096f4ce..8f47754dacce 100644
--- a/include/uapi/linux/if_xdp.h
+++ b/include/uapi/linux/if_xdp.h
@@ -25,6 +25,7 @@
  * application.
  */
 #define XDP_USE_NEED_WAKEUP (1 << 3)
+#define XDP_CHECK_NATIVE_MODE (1 << 4)
 
 /* Flags for xsk_umem_config flags */
 #define XDP_UMEM_UNALIGNED_CHUNK_FLAG (1 << 0)
diff --git a/net/xdp/xsk.c b/net/xdp/xsk.c
index 7588e599a048..3b45754274bb 100644
--- a/net/xdp/xsk.c
+++ b/net/xdp/xsk.c
@@ -764,7 +764,7 @@ static int xsk_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
 
 	flags = sxdp->sxdp_flags;
 	if (flags & ~(XDP_SHARED_UMEM | XDP_COPY | XDP_ZEROCOPY |
-		      XDP_USE_NEED_WAKEUP))
+		      XDP_USE_NEED_WAKEUP | XDP_CHECK_NATIVE_MODE))
 		return -EINVAL;
 
 	rtnl_lock();
@@ -792,7 +792,7 @@ static int xsk_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
 		struct socket *sock;
 
 		if ((flags & XDP_COPY) || (flags & XDP_ZEROCOPY) ||
-		    (flags & XDP_USE_NEED_WAKEUP)) {
+		    (flags & XDP_USE_NEED_WAKEUP) || (flags & XDP_CHECK_NATIVE_MODE)) {
 			/* Cannot specify flags for shared sockets. */
 			err = -EINVAL;
 			goto out_unlock;
diff --git a/net/xdp/xsk_buff_pool.c b/net/xdp/xsk_buff_pool.c
index 7ff82e2b2b43..47e283ea1dca 100644
--- a/net/xdp/xsk_buff_pool.c
+++ b/net/xdp/xsk_buff_pool.c
@@ -123,7 +123,7 @@ static void xp_disable_drv_zc(struct xsk_buff_pool *pool)
 static int __xp_assign_dev(struct xsk_buff_pool *pool,
 			   struct net_device *netdev, u16 queue_id, u16 flags)
 {
-	bool force_zc, force_copy;
+	bool force_zc, force_copy, force_check;
 	struct netdev_bpf bpf;
 	int err = 0;
 
@@ -131,10 +131,24 @@ static int __xp_assign_dev(struct xsk_buff_pool *pool,
 
 	force_zc = flags & XDP_ZEROCOPY;
 	force_copy = flags & XDP_COPY;
+	force_check = flags & XDP_CHECK_NATIVE_MODE;
+
 
 	if (force_zc && force_copy)
 		return -EINVAL;
 
+	if (!(flags & XDP_SHARED_UMEM)) {
+		if (force_check) {
+			/* forbid driver mode without full XDP support */
+			if (!(XDP_F_REDIRECT & netdev->xdp_properties))
+				return -EOPNOTSUPP;
+		} else {
+			/* forbid skb mode and zero copy */
+			if (force_zc)
+				return -EINVAL;
+		}
+	}
+
 	if (xsk_get_pool_from_qid(netdev, queue_id))
 		return -EBUSY;
 
@@ -204,6 +218,7 @@ int xp_assign_dev_shared(struct xsk_buff_pool *pool, struct xdp_umem *umem,
 		return -EINVAL;
 
 	flags = umem->zc ? XDP_ZEROCOPY : XDP_COPY;
+	flags |= XDP_SHARED_UMEM;
 	if (pool->uses_need_wakeup)
 		flags |= XDP_USE_NEED_WAKEUP;
 
diff --git a/tools/include/uapi/linux/if_xdp.h b/tools/include/uapi/linux/if_xdp.h
index a78a8096f4ce..8f47754dacce 100644
--- a/tools/include/uapi/linux/if_xdp.h
+++ b/tools/include/uapi/linux/if_xdp.h
@@ -25,6 +25,7 @@
  * application.
  */
 #define XDP_USE_NEED_WAKEUP (1 << 3)
+#define XDP_CHECK_NATIVE_MODE (1 << 4)
 
 /* Flags for xsk_umem_config flags */
 #define XDP_UMEM_UNALIGNED_CHUNK_FLAG (1 << 0)
diff --git a/tools/lib/bpf/xsk.c b/tools/lib/bpf/xsk.c
index e3e41ceeb1bc..c309d2c87be3 100644
--- a/tools/lib/bpf/xsk.c
+++ b/tools/lib/bpf/xsk.c
@@ -18,6 +18,7 @@
 #include <linux/ethtool.h>
 #include <linux/filter.h>
 #include <linux/if_ether.h>
+#include <linux/if_link.h>
 #include <linux/if_packet.h>
 #include <linux/if_xdp.h>
 #include <linux/kernel.h>
@@ -901,6 +902,8 @@ int xsk_socket__create_shared(struct xsk_socket **xsk_ptr,
 		sxdp.sxdp_shared_umem_fd = umem->fd;
 	} else {
 		sxdp.sxdp_flags = xsk->config.bind_flags;
+		if (xsk->config.xdp_flags & XDP_FLAGS_DRV_MODE)
+			sxdp.sxdp_flags |= XDP_CHECK_NATIVE_MODE;
 	}
 
 	err = bind(xsk->fd, (struct sockaddr *)&sxdp, sizeof(sxdp));
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
