Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2516881D164
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 03:59:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A37DE42D2F;
	Sat, 23 Dec 2023 02:58:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A37DE42D2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300338;
	bh=VNZG5PopyPKKcAjZNfjfxF8oCm9MjaIKtZ2tcbmEmhg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Uj+hPMi+47nwNyeH+laT9r8CENbFDT/Hi9IEQLvQm8diDpcmTuH+aTFjREOEYjdSx
	 HepGeXKej3W1AldxoHsoLS+9AL45S8ctTE9D50sXTAiRvzFcPWQvd68gXaJRb3N1Iw
	 7MjisbKvcxkyd7yi6JIZmBGM9kbR3Kxhan/oMh4jxkUgW5dXjkt1IGVSdX6UBKuDgW
	 WHCoXxJFhax3kE8GkC98jM3x7M+2wILAM+iYD84C2kyUH9/xD+XReijUxXC7QwBzNG
	 Xn+iMmut/t12O0jzOL2bL/pOz3agjMT90MX0ClUbqaghtKpDixQcpbZdteZSlijYPN
	 lp92JmvdgiW1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p-RrEbzcaPzO; Sat, 23 Dec 2023 02:58:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6FFE40072;
	Sat, 23 Dec 2023 02:58:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6FFE40072
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0123A1BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CED2960AFB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CED2960AFB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MHx5xbwimYiN for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:58:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D43C260634
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D43C260634
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386610843"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386610843"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:58:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537475"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:58:35 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:29 +0100
Message-ID: <20231223025554.2316836-10-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300319; x=1734836319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CVCGYVKSl7Vfqncoy/Waq/QssSuuqYKEhaeBYUs9+Xs=;
 b=AYGmb5al0KIxoibuo6E6Zee8nx04wgXaIJ2cAaqVoDWsEf0LUbte6y2C
 xGw1PGjE3JAiBrB0NLIIIIW/9NGhP9vsQRUS+yTs1+waugOiFEr6ydwu2
 r+vG8JEata4hiajireR8TFRds/Ii3vyr9uWCtKZ2YYHMxGL7NstcKaNV0
 5Vl7cDkIqmJBYqW/wiLuCHfbBcscq5AZCrCfVj4xgQRpOzh5T++AJ8rB6
 4/WcQKa+/6m6rpJbqxsjRP6O6aXS/bGhF9TBPqSv2oZm52Aimi9ZEKC0K
 xPh5rqAHOvJJBSreM8nbB1AOgS32g0e9sRCxwgON0Fa5SzqTi6MR+GEIL
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AYGmb5al
Subject: [Intel-wired-lan] [PATCH RFC net-next 09/34] bpf,
 xdp: constify some bpf_prog * function arguments
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In lots of places, bpf_prog pointer is used only for tracing or other
stuff that doesn't modify the structure itself. Same for net_device.
Address at least some of them and add `const` attributes there. The
object code didn't change, but that may prevent unwanted data
modifications and also allow more helpers to have const arguments.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/linux/bpf.h       | 12 ++++++------
 include/linux/filter.h    |  9 +++++----
 include/linux/netdevice.h |  6 +++---
 kernel/bpf/devmap.c       |  8 ++++----
 net/core/dev.c            |  8 ++++----
 net/core/filter.c         | 25 ++++++++++++++-----------
 6 files changed, 36 insertions(+), 32 deletions(-)

diff --git a/include/linux/bpf.h b/include/linux/bpf.h
index 7a8d4c81a39a..53ccac0f0d64 100644
--- a/include/linux/bpf.h
+++ b/include/linux/bpf.h
@@ -2384,10 +2384,10 @@ int dev_map_enqueue(struct bpf_dtab_netdev *dst, struct xdp_frame *xdpf,
 int dev_map_enqueue_multi(struct xdp_frame *xdpf, struct net_device *dev_rx,
 			  struct bpf_map *map, bool exclude_ingress);
 int dev_map_generic_redirect(struct bpf_dtab_netdev *dst, struct sk_buff *skb,
-			     struct bpf_prog *xdp_prog);
+			     const struct bpf_prog *xdp_prog);
 int dev_map_redirect_multi(struct net_device *dev, struct sk_buff *skb,
-			   struct bpf_prog *xdp_prog, struct bpf_map *map,
-			   bool exclude_ingress);
+			   const struct bpf_prog *xdp_prog,
+			   struct bpf_map *map, bool exclude_ingress);
 
 void __cpu_map_flush(void);
 int cpu_map_enqueue(struct bpf_cpu_map_entry *rcpu, struct xdp_frame *xdpf,
@@ -2632,15 +2632,15 @@ struct sk_buff;
 
 static inline int dev_map_generic_redirect(struct bpf_dtab_netdev *dst,
 					   struct sk_buff *skb,
-					   struct bpf_prog *xdp_prog)
+					   const struct bpf_prog *xdp_prog)
 {
 	return 0;
 }
 
 static inline
 int dev_map_redirect_multi(struct net_device *dev, struct sk_buff *skb,
-			   struct bpf_prog *xdp_prog, struct bpf_map *map,
-			   bool exclude_ingress)
+			   const struct bpf_prog *xdp_prog,
+			   struct bpf_map *map, bool exclude_ingress)
 {
 	return 0;
 }
diff --git a/include/linux/filter.h b/include/linux/filter.h
index 68fb6c8142fe..34c9e2a4cc01 100644
--- a/include/linux/filter.h
+++ b/include/linux/filter.h
@@ -1015,17 +1015,18 @@ static inline int xdp_ok_fwd_dev(const struct net_device *fwd,
  * This does not appear to be a real limitation for existing software.
  */
 int xdp_do_generic_redirect(struct net_device *dev, struct sk_buff *skb,
-			    struct xdp_buff *xdp, struct bpf_prog *prog);
+			    struct xdp_buff *xdp, const struct bpf_prog *prog);
 int xdp_do_redirect(struct net_device *dev,
 		    struct xdp_buff *xdp,
-		    struct bpf_prog *prog);
+		    const struct bpf_prog *prog);
 int xdp_do_redirect_frame(struct net_device *dev,
 			  struct xdp_buff *xdp,
 			  struct xdp_frame *xdpf,
-			  struct bpf_prog *prog);
+			  const struct bpf_prog *prog);
 void xdp_do_flush(void);
 
-void bpf_warn_invalid_xdp_action(struct net_device *dev, struct bpf_prog *prog, u32 act);
+void bpf_warn_invalid_xdp_action(const struct net_device *dev,
+				 const struct bpf_prog *prog, u32 act);
 
 #ifdef CONFIG_INET
 struct sock *bpf_run_sk_reuseport(struct sock_reuseport *reuse, struct sock *sk,
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 75c7725e5e4f..7bb8324a4ebe 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -3956,9 +3956,9 @@ static inline void dev_consume_skb_any(struct sk_buff *skb)
 }
 
 u32 bpf_prog_run_generic_xdp(struct sk_buff *skb, struct xdp_buff *xdp,
-			     struct bpf_prog *xdp_prog);
-void generic_xdp_tx(struct sk_buff *skb, struct bpf_prog *xdp_prog);
-int do_xdp_generic(struct bpf_prog *xdp_prog, struct sk_buff *skb);
+			     const struct bpf_prog *xdp_prog);
+void generic_xdp_tx(struct sk_buff *skb, const struct bpf_prog *xdp_prog);
+int do_xdp_generic(const struct bpf_prog *xdp_prog, struct sk_buff *skb);
 int netif_rx(struct sk_buff *skb);
 int __netif_rx(struct sk_buff *skb);
 
diff --git a/kernel/bpf/devmap.c b/kernel/bpf/devmap.c
index a936c704d4e7..5ad73ef21da2 100644
--- a/kernel/bpf/devmap.c
+++ b/kernel/bpf/devmap.c
@@ -673,7 +673,7 @@ int dev_map_enqueue_multi(struct xdp_frame *xdpf, struct net_device *dev_rx,
 }
 
 int dev_map_generic_redirect(struct bpf_dtab_netdev *dst, struct sk_buff *skb,
-			     struct bpf_prog *xdp_prog)
+			     const struct bpf_prog *xdp_prog)
 {
 	int err;
 
@@ -696,7 +696,7 @@ int dev_map_generic_redirect(struct bpf_dtab_netdev *dst, struct sk_buff *skb,
 
 static int dev_map_redirect_clone(struct bpf_dtab_netdev *dst,
 				  struct sk_buff *skb,
-				  struct bpf_prog *xdp_prog)
+				  const struct bpf_prog *xdp_prog)
 {
 	struct sk_buff *nskb;
 	int err;
@@ -715,8 +715,8 @@ static int dev_map_redirect_clone(struct bpf_dtab_netdev *dst,
 }
 
 int dev_map_redirect_multi(struct net_device *dev, struct sk_buff *skb,
-			   struct bpf_prog *xdp_prog, struct bpf_map *map,
-			   bool exclude_ingress)
+			   const struct bpf_prog *xdp_prog,
+			   struct bpf_map *map, bool exclude_ingress)
 {
 	struct bpf_dtab *dtab = container_of(map, struct bpf_dtab, map);
 	struct bpf_dtab_netdev *dst, *last_dst = NULL;
diff --git a/net/core/dev.c b/net/core/dev.c
index f9d4b550ef4b..b2a9839dd18e 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -4833,7 +4833,7 @@ static struct netdev_rx_queue *netif_get_rxqueue(struct sk_buff *skb)
 }
 
 u32 bpf_prog_run_generic_xdp(struct sk_buff *skb, struct xdp_buff *xdp,
-			     struct bpf_prog *xdp_prog)
+			     const struct bpf_prog *xdp_prog)
 {
 	void *orig_data, *orig_data_end, *hard_start;
 	struct netdev_rx_queue *rxqueue;
@@ -4922,7 +4922,7 @@ u32 bpf_prog_run_generic_xdp(struct sk_buff *skb, struct xdp_buff *xdp,
 
 static u32 netif_receive_generic_xdp(struct sk_buff *skb,
 				     struct xdp_buff *xdp,
-				     struct bpf_prog *xdp_prog)
+				     const struct bpf_prog *xdp_prog)
 {
 	u32 act = XDP_DROP;
 
@@ -4979,7 +4979,7 @@ static u32 netif_receive_generic_xdp(struct sk_buff *skb,
  * and DDOS attacks will be more effective. In-driver-XDP use dedicated TX
  * queues, so they do not have this starvation issue.
  */
-void generic_xdp_tx(struct sk_buff *skb, struct bpf_prog *xdp_prog)
+void generic_xdp_tx(struct sk_buff *skb, const struct bpf_prog *xdp_prog)
 {
 	struct net_device *dev = skb->dev;
 	struct netdev_queue *txq;
@@ -5004,7 +5004,7 @@ void generic_xdp_tx(struct sk_buff *skb, struct bpf_prog *xdp_prog)
 
 static DEFINE_STATIC_KEY_FALSE(generic_xdp_needed_key);
 
-int do_xdp_generic(struct bpf_prog *xdp_prog, struct sk_buff *skb)
+int do_xdp_generic(const struct bpf_prog *xdp_prog, struct sk_buff *skb)
 {
 	if (xdp_prog) {
 		struct xdp_buff xdp;
diff --git a/net/core/filter.c b/net/core/filter.c
index 24061f29c9dd..4ace1edc4de1 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -4297,9 +4297,9 @@ u32 xdp_master_redirect(struct xdp_buff *xdp)
 EXPORT_SYMBOL_GPL(xdp_master_redirect);
 
 static inline int __xdp_do_redirect_xsk(struct bpf_redirect_info *ri,
-					struct net_device *dev,
+					const struct net_device *dev,
 					struct xdp_buff *xdp,
-					struct bpf_prog *xdp_prog)
+					const struct bpf_prog *xdp_prog)
 {
 	enum bpf_map_type map_type = ri->map_type;
 	void *fwd = ri->tgt_value;
@@ -4320,10 +4320,10 @@ static inline int __xdp_do_redirect_xsk(struct bpf_redirect_info *ri,
 	return err;
 }
 
-static __always_inline int __xdp_do_redirect_frame(struct bpf_redirect_info *ri,
-						   struct net_device *dev,
-						   struct xdp_frame *xdpf,
-						   struct bpf_prog *xdp_prog)
+static __always_inline int
+__xdp_do_redirect_frame(struct bpf_redirect_info *ri, struct net_device *dev,
+			struct xdp_frame *xdpf,
+			const struct bpf_prog *xdp_prog)
 {
 	enum bpf_map_type map_type = ri->map_type;
 	void *fwd = ri->tgt_value;
@@ -4381,7 +4381,7 @@ static __always_inline int __xdp_do_redirect_frame(struct bpf_redirect_info *ri,
 }
 
 int xdp_do_redirect(struct net_device *dev, struct xdp_buff *xdp,
-		    struct bpf_prog *xdp_prog)
+		    const struct bpf_prog *xdp_prog)
 {
 	struct bpf_redirect_info *ri = this_cpu_ptr(&bpf_redirect_info);
 	enum bpf_map_type map_type = ri->map_type;
@@ -4395,7 +4395,8 @@ int xdp_do_redirect(struct net_device *dev, struct xdp_buff *xdp,
 EXPORT_SYMBOL_GPL(xdp_do_redirect);
 
 int xdp_do_redirect_frame(struct net_device *dev, struct xdp_buff *xdp,
-			  struct xdp_frame *xdpf, struct bpf_prog *xdp_prog)
+			  struct xdp_frame *xdpf,
+			  const struct bpf_prog *xdp_prog)
 {
 	struct bpf_redirect_info *ri = this_cpu_ptr(&bpf_redirect_info);
 	enum bpf_map_type map_type = ri->map_type;
@@ -4410,7 +4411,7 @@ EXPORT_SYMBOL_GPL(xdp_do_redirect_frame);
 static int xdp_do_generic_redirect_map(struct net_device *dev,
 				       struct sk_buff *skb,
 				       struct xdp_buff *xdp,
-				       struct bpf_prog *xdp_prog,
+				       const struct bpf_prog *xdp_prog,
 				       void *fwd,
 				       enum bpf_map_type map_type, u32 map_id)
 {
@@ -4457,7 +4458,8 @@ static int xdp_do_generic_redirect_map(struct net_device *dev,
 }
 
 int xdp_do_generic_redirect(struct net_device *dev, struct sk_buff *skb,
-			    struct xdp_buff *xdp, struct bpf_prog *xdp_prog)
+			    struct xdp_buff *xdp,
+			    const struct bpf_prog *xdp_prog)
 {
 	struct bpf_redirect_info *ri = this_cpu_ptr(&bpf_redirect_info);
 	enum bpf_map_type map_type = ri->map_type;
@@ -8961,7 +8963,8 @@ static bool xdp_is_valid_access(int off, int size,
 	return __is_valid_xdp_access(off, size);
 }
 
-void bpf_warn_invalid_xdp_action(struct net_device *dev, struct bpf_prog *prog, u32 act)
+void bpf_warn_invalid_xdp_action(const struct net_device *dev,
+				 const struct bpf_prog *prog, u32 act)
 {
 	const u32 act_max = XDP_REDIRECT;
 
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
