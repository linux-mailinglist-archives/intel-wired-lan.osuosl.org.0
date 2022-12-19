Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 93880650EE6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 16:42:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD96040939;
	Mon, 19 Dec 2022 15:42:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD96040939
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671464572;
	bh=vQ1El3j+bWwFa9mMnfTVVmbISUsK3Wop4XqsOM4AV8I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WPEoJzkOgieaQOa/ybp77BoCw+jkm0D3e+TqJOH++lRubGFluZn4WK/SnHH2IHpmX
	 VZS21LbtH6WKvf8q6TBqfM8wrPs0RywNQ/+wd80TU5+Rbq827RHUYZDiJUyuDTcwNt
	 9WIJihy5FKH5nDNel7N04SayvFHuBgMOSolHOBMJY3o2T0iiZj66G/wkKT9BoEL7cM
	 kN97s0ikHc0xRdRdFdM2ryogbZsm0wobPH5q2VVVsO4Vhm7Q1oWdG5bK1RDWXJL3Wb
	 IiIWJ7fAkut7PbPpcK5jL2pB/Qia+GfQCB2meMa4UBy+IRe0GTDonhAM6U05wifv5W
	 J7GtDnHWcYSfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UHKQQUBEE5Bi; Mon, 19 Dec 2022 15:42:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41132410E1;
	Mon, 19 Dec 2022 15:42:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41132410E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E25C1BF317
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EDA7740567
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EDA7740567
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NnUZkXKsgaHA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 15:42:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6A644049F
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B6A644049F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:42 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id DE1CAB80EA6;
 Mon, 19 Dec 2022 15:42:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0148FC433EF;
 Mon, 19 Dec 2022 15:42:39 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Mon, 19 Dec 2022 16:41:34 +0100
Message-Id: <8522db2faf32eb9e37862cd5bd6ba98bec3fa2d8.1671462951.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <cover.1671462950.git.lorenzo@kernel.org>
References: <cover.1671462950.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1671464559;
 bh=/GvW1CBUtaSQShWzPvNHf0BP6LO6rDP67Uq5eKJRcw8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aD8H3WWbpD36LwAUsVy8GUnEZXJd70+H5AiURKCFAenW8xRZ50lmvGSCQKOWP7Y1R
 FN34kYUYYVXuiVThLcwt/tAvCTlGewF0XFFxCo+bbae3KOla4+YOulDcvu+ZwE/0d2
 VRlGyRamtEugVoWy7gvEPKnuDyFM9x97aN94CNC4B0brWP8I6aHDYirIO6IZZBD80d
 KgFWZGCLDCo3eazn/q9cUN4ZBczB8iCHxBrfOoSyiDffL5qZcOFRSbPpFmmtXmgo6U
 Zn1SxS0TIuPVUYpwDmZdtgPx5c3WbbcauXtjV/Xi+TtmUQtNekfy5AX+XQKKfQVGmA
 n1f3BmhrF0S1w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=aD8H3WWb
Subject: [Intel-wired-lan] [RFC bpf-next 5/8] xsk: add check for full
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, grygorii.strashko@ti.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marek Majtyka <alardam@gmail.com>

Add check for full support of XDP in AF_XDP socket bind.

To be able to use an AF_XDP socket with zero-copy, there needs to be
support for both XDP_REDIRECT in the driver (XDP native mode) and the
driver needs to support zero-copy. The problem is that there are drivers
out there that only support XDP partially, so it is possible to
successfully load the XDP program in native mode, but it will still not
be able to support zero-copy as it does not have XDP_REDIRECT support.
We can now alleviate this problem by using the new XDP netdev capability
that signifies if full XDP support is indeed present. This check can be
triggered by a new bind flag called XDP_CHECK_NATIVE_MODE.

To simplify usage, this check is triggered automatically from inside
libbpf library via turning on the new XDP_CHECK_NATIVE_MODE flag if and
only if the driver mode is selected for the socket. As a result, the
xsk_bind function decides if the native mode for a given interface makes
sense or not using xdp netdev feature flags. Eventually the xsk socket
is bound or an error is returned. Apart from this change and to catch
all invalid inputs in a single place, an additional check is set to
forbid skb mode and zero copy settings at the same time as that
combination makes no sense.

Signed-off-by: Marek Majtyka <alardam@gmail.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 include/uapi/linux/if_xdp.h       |  1 +
 net/xdp/xsk.c                     |  4 ++--
 net/xdp/xsk_buff_pool.c           | 17 ++++++++++++++++-
 tools/include/uapi/linux/if_xdp.h |  1 +
 tools/testing/selftests/bpf/xsk.c |  3 +++
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
index 9f0561b67c12..76e9a9e99559 100644
--- a/net/xdp/xsk.c
+++ b/net/xdp/xsk.c
@@ -889,7 +889,7 @@ static int xsk_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
 
 	flags = sxdp->sxdp_flags;
 	if (flags & ~(XDP_SHARED_UMEM | XDP_COPY | XDP_ZEROCOPY |
-		      XDP_USE_NEED_WAKEUP))
+		      XDP_USE_NEED_WAKEUP | XDP_CHECK_NATIVE_MODE))
 		return -EINVAL;
 
 	rtnl_lock();
@@ -917,7 +917,7 @@ static int xsk_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
 		struct socket *sock;
 
 		if ((flags & XDP_COPY) || (flags & XDP_ZEROCOPY) ||
-		    (flags & XDP_USE_NEED_WAKEUP)) {
+		    (flags & XDP_USE_NEED_WAKEUP) || (flags & XDP_CHECK_NATIVE_MODE)) {
 			/* Cannot specify flags for shared sockets. */
 			err = -EINVAL;
 			goto out_unlock;
diff --git a/net/xdp/xsk_buff_pool.c b/net/xdp/xsk_buff_pool.c
index 7afd12dd69cc..02f569893c02 100644
--- a/net/xdp/xsk_buff_pool.c
+++ b/net/xdp/xsk_buff_pool.c
@@ -143,7 +143,7 @@ static void xp_disable_drv_zc(struct xsk_buff_pool *pool)
 int xp_assign_dev(struct xsk_buff_pool *pool,
 		  struct net_device *netdev, u16 queue_id, u16 flags)
 {
-	bool force_zc, force_copy;
+	bool force_zc, force_copy, force_check;
 	struct netdev_bpf bpf;
 	int err = 0;
 
@@ -151,10 +151,24 @@ int xp_assign_dev(struct xsk_buff_pool *pool,
 
 	force_zc = flags & XDP_ZEROCOPY;
 	force_copy = flags & XDP_COPY;
+	force_check = flags & XDP_CHECK_NATIVE_MODE;
+
 
 	if (force_zc && force_copy)
 		return -EINVAL;
 
+	if (!(flags & XDP_SHARED_UMEM)) {
+		if (force_check) {
+			/* forbid driver mode without full XDP support */
+			if (!(XDP_F_REDIRECT & netdev->xdp_features))
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
 
@@ -222,6 +236,7 @@ int xp_assign_dev_shared(struct xsk_buff_pool *pool, struct xdp_sock *umem_xs,
 		return -EINVAL;
 
 	flags = umem->zc ? XDP_ZEROCOPY : XDP_COPY;
+	flags |= XDP_SHARED_UMEM;
 	if (umem_xs->pool->uses_need_wakeup)
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
diff --git a/tools/testing/selftests/bpf/xsk.c b/tools/testing/selftests/bpf/xsk.c
index 39d349509ba4..d6b9349000d2 100644
--- a/tools/testing/selftests/bpf/xsk.c
+++ b/tools/testing/selftests/bpf/xsk.c
@@ -18,6 +18,7 @@
 #include <linux/ethtool.h>
 #include <linux/filter.h>
 #include <linux/if_ether.h>
+#include <linux/if_link.h>
 #include <linux/if_packet.h>
 #include <linux/if_xdp.h>
 #include <linux/kernel.h>
@@ -1130,6 +1131,8 @@ int xsk_socket__create_shared(struct xsk_socket **xsk_ptr,
 		sxdp.sxdp_shared_umem_fd = umem->fd;
 	} else {
 		sxdp.sxdp_flags = xsk->config.bind_flags;
+		if (xsk->config.xdp_flags & XDP_FLAGS_DRV_MODE)
+			sxdp.sxdp_flags |= XDP_CHECK_NATIVE_MODE;
 	}
 
 	err = bind(xsk->fd, (struct sockaddr *)&sxdp, sizeof(sxdp));
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
