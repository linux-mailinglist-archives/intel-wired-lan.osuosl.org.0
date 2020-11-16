Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A039C2B3FD8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Nov 2020 10:35:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 963EB86731;
	Mon, 16 Nov 2020 09:35:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qNxuvkGCNSTF; Mon, 16 Nov 2020 09:35:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 782248671E;
	Mon, 16 Nov 2020 09:35:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B27B1BF470
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 09:35:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3078A85C19
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 09:35:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6KL58MlSkV-R for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Nov 2020 09:35:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E65E084AAD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 09:35:19 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id 11so19387734ljf.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 01:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2VYsHDkEtXhvGJF/LEvo7CUCE7h8wXtuPkmjNp3cbdQ=;
 b=TTaM8tw7A8IMkmIx3/v5UFetBijSnludtH0u+gJ//DkgAAralma1mlrsk+20Die7A9
 4bt5h9k4UStoLngAZZ/f97SCGRnYbAwZiJhxTXR/mIDnp+Ts6tScTzcTmwW0Z9jxgSF2
 9aCNnQfSGtUdMixpD+CcsUv0CzqFVirTHvqE4LTgRJfl3beTeR0J2urW4oNH2TU/s0wI
 r1QkR8cR7Lj+VDTHyDKk+RzaNxr1BkobuI7Q5B20+0N+0OQe/ILeAwfEiLtuv7H8vBJL
 WBkPnEEai7Vq6q29iJWzGzVgmg4S5apNvq6kTL/7YenLGosp0noiQ7e0i/f+TQ8YpcgD
 PnmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2VYsHDkEtXhvGJF/LEvo7CUCE7h8wXtuPkmjNp3cbdQ=;
 b=HHCeCzlID8TC22pWDyUYjWX35OWwF310U3KaMAn64Dk/TBdhaS1z/wbF3bS0V3Bc1p
 GgaYEIkbMx0/l3J/rxH69UJlj7B7VK3iJ17E8xzP7//aBLAEw6u19KjrsudXA/1vJszV
 ZD+Pd0s5rDxooNbHCJkt0hrBGGHfCveP5sEiOk6+DVDV+I96ZSRB1TtK7vogsYoypN+q
 JyMYVtXKEMlC5ns4YmQNvO7OR/Kq+2qdIe2ruKltiPKy4GI343LOyMI9jDvBm2vAhPXL
 IigmUvJtPMdn/t5mmCiDViDHm5APGvj4NcqdlHJYc2NC1VhsCcGVgkGZR75LmyOq0UI7
 qziA==
X-Gm-Message-State: AOAM5334ao5vPGISvU+mRQxBuiZVMOJL2LRNCuxrNLXmXujSrs2z+s3f
 +Uuc1F8GvqHMGxymCY1oro8=
X-Google-Smtp-Source: ABdhPJzsKM/DellFePfB2VFYSH7lxGLEfJsoHHTb68fxyrXgLEt6otDaDkoPAdKi4cY1awp6Ea65QA==
X-Received: by 2002:a2e:b4c2:: with SMTP id r2mr6096274ljm.216.1605519318181; 
 Mon, 16 Nov 2020 01:35:18 -0800 (PST)
Received: from localhost.localdomain (87-205-71-93.adsl.inetia.pl.
 [87.205.71.93])
 by smtp.gmail.com with ESMTPSA id t26sm2667986lfp.296.2020.11.16.01.35.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 01:35:17 -0800 (PST)
From: alardam@gmail.com
X-Google-Original-From: marekx.majtyka@intel.com
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 andrii.nakryiko@gmail.com, kuba@kernel.org, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, davem@davemloft.net,
 john.fastabend@gmail.com, hawk@kernel.org, toke@redhat.com
Date: Mon, 16 Nov 2020 10:34:48 +0100
Message-Id: <20201116093452.7541-5-marekx.majtyka@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201116093452.7541-1-marekx.majtyka@intel.com>
References: <20201116093452.7541-1-marekx.majtyka@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 4/8] xsk: add check for full support of
 XDP in bind
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
index cfbec3989a76..a9c386083377 100644
--- a/net/xdp/xsk.c
+++ b/net/xdp/xsk.c
@@ -658,7 +658,7 @@ static int xsk_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
 
 	flags = sxdp->sxdp_flags;
 	if (flags & ~(XDP_SHARED_UMEM | XDP_COPY | XDP_ZEROCOPY |
-		      XDP_USE_NEED_WAKEUP))
+		      XDP_USE_NEED_WAKEUP | XDP_CHECK_NATIVE_MODE))
 		return -EINVAL;
 
 	rtnl_lock();
@@ -686,7 +686,7 @@ static int xsk_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
 		struct socket *sock;
 
 		if ((flags & XDP_COPY) || (flags & XDP_ZEROCOPY) ||
-		    (flags & XDP_USE_NEED_WAKEUP)) {
+		    (flags & XDP_USE_NEED_WAKEUP) || (flags & XDP_CHECK_NATIVE_MODE)) {
 			/* Cannot specify flags for shared sockets. */
 			err = -EINVAL;
 			goto out_unlock;
diff --git a/net/xdp/xsk_buff_pool.c b/net/xdp/xsk_buff_pool.c
index 76922696ad3c..231d88ddd978 100644
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
+			if (!(NETIF_F_XDP & netdev->features))
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
 
@@ -206,6 +220,7 @@ int xp_assign_dev_shared(struct xsk_buff_pool *pool, struct xdp_umem *umem,
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
index 9bc537d0b92d..7951f7ea6db3 100644
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
@@ -827,6 +828,8 @@ int xsk_socket__create_shared(struct xsk_socket **xsk_ptr,
 		sxdp.sxdp_shared_umem_fd = umem->fd;
 	} else {
 		sxdp.sxdp_flags = xsk->config.bind_flags;
+		if (xsk->config.xdp_flags & XDP_FLAGS_DRV_MODE)
+			sxdp.sxdp_flags |= XDP_CHECK_NATIVE_MODE;
 	}
 
 	err = bind(xsk->fd, (struct sockaddr *)&sxdp, sizeof(sxdp));
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
