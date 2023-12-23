Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB8581D17D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 04:00:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A8C242DE7;
	Sat, 23 Dec 2023 03:00:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A8C242DE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300419;
	bh=hFyBouS7yMM28zA9zfuSVPaYI0zhcfBWB9iHoPpOez8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JtZTOnFokp+zzqzSxTCYjmmyM08tRFUpXTN2B9XbB1qQbMXMmFrGekKaw/J/044tH
	 kD2NxAhwgDXEHd+i1QKeyh+BJjErvoZdhTjVPjJIbQrII48LVTHMvIHo+MVesUfhRK
	 o6WIL1UJ02v5dS5Jr75QNvcTO9YwmCLfbzwn1NGRkgLajf2S6SfZ5Pjql9S0+mGBQr
	 S5D0wZK2vc2Gji1yntYAoUjZm0SFWqqdbDCOkq8rk2bnXSInqFPVnuiyT9Bujbi7wm
	 3d32PJhgcBgXMDzGRL/LN7VoijBWpdPRTT7hpKoQ+LhPxyk0uNb5UNF1uYYhAyXQra
	 YfzO//8UVe8Tw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VejA029N5qtj; Sat, 23 Dec 2023 03:00:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CECA6415EF;
	Sat, 23 Dec 2023 03:00:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CECA6415EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E99E1BF255
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2469B42D12
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2469B42D12
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K67pGjur_5Ez for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:59:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 71DED42D6D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71DED42D6D
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386611044"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386611044"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:59:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537644"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:59:42 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:46 +0100
Message-ID: <20231223025554.2316836-27-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300386; x=1734836386;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yxZYHXhn633FddOUdDcraFQxZakRgJVpB7yodhsBcbU=;
 b=dxWSx7yi1SeULGUBhFjT876DsNvVTOtyQQ0dAZrFGCzV8CIySEA+W1+v
 wHMA+yazUMdCFC4jxyMK9IdGbwyCzXglg3xQvNr6U5icLLTvlJoCV56Zm
 ncLvEAegztKXObmFAdup6YWfp/B+CkwxPX+w624azzvf6/Ez09rXEXjmH
 2n1vUumI9Y4lledZ8vRdvlCsZGMKnTemvArEt4prEjzBlY50DvbbnVBgH
 2J88DeMpAXXZK59Uk2jpMM85TjWuQsY/2x7SR7tFY6bC4VoeJd4GVLQzq
 EzOb3Iol/4GAX93zQ8uxpcVN5Idxt+9DWwSgJ0eLHSqi228iTld6Hn9EK
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dxWSx7yi
Subject: [Intel-wired-lan] [PATCH RFC net-next 26/34] xdp: add generic XSk
 xdp_buff -> skb conversion
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

Same as with converting &xdp_buff to skb on Rx, the code which allocates
a new skb and copies the XSk frame there is identical across the
drivers, so make it generic.
Note that this time skb_record_rx_queue() is called unconditionally, as
it's not intended to call this function with a non-registered RxQ info.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/xdp.h | 11 ++++++++++-
 net/core/xdp.c    | 41 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 51 insertions(+), 1 deletion(-)

diff --git a/include/net/xdp.h b/include/net/xdp.h
index 66854b755b58..23ada4bb0e69 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -273,7 +273,16 @@ void xdp_warn(const char *msg, const char *func, const int line);
 
 struct sk_buff *__xdp_build_skb_from_buff(struct sk_buff *skb,
 					  const struct xdp_buff *xdp);
-#define xdp_build_skb_from_buff(xdp) __xdp_build_skb_from_buff(NULL, xdp)
+struct sk_buff *xdp_build_skb_from_zc(struct napi_struct *napi,
+				      struct xdp_buff *xdp);
+
+static inline struct sk_buff *xdp_build_skb_from_buff(struct xdp_buff *xdp)
+{
+	if (xdp->rxq->mem.type == MEM_TYPE_XSK_BUFF_POOL)
+		return xdp_build_skb_from_zc(NULL, xdp);
+
+	return __xdp_build_skb_from_buff(NULL, xdp);
+}
 
 struct xdp_frame *xdp_convert_zc_to_xdp_frame(struct xdp_buff *xdp);
 struct sk_buff *__xdp_build_skb_from_frame(struct xdp_frame *xdpf,
diff --git a/net/core/xdp.c b/net/core/xdp.c
index 8ef1d735a7eb..2bdb1fb8a9b8 100644
--- a/net/core/xdp.c
+++ b/net/core/xdp.c
@@ -21,6 +21,8 @@
 #include <trace/events/xdp.h>
 #include <net/xdp_sock_drv.h>
 
+#include "dev.h"
+
 #define REG_STATE_NEW		0x0
 #define REG_STATE_REGISTERED	0x1
 #define REG_STATE_UNREGISTERED	0x2
@@ -647,6 +649,45 @@ struct sk_buff *__xdp_build_skb_from_buff(struct sk_buff *skb,
 }
 EXPORT_SYMBOL_GPL(__xdp_build_skb_from_buff);
 
+struct sk_buff *xdp_build_skb_from_zc(struct napi_struct *napi,
+				      struct xdp_buff *xdp)
+{
+	const struct xdp_rxq_info *rxq = xdp->rxq;
+	u32 totalsize, metasize;
+	struct sk_buff *skb;
+
+	if (!napi) {
+		napi = napi_by_id(rxq->napi_id);
+		if (unlikely(!napi))
+			return NULL;
+	}
+
+	totalsize = xdp->data_end - xdp->data_meta;
+
+	skb = __napi_alloc_skb(napi, totalsize, GFP_ATOMIC | __GFP_NOWARN);
+	if (unlikely(!skb))
+		return NULL;
+
+	net_prefetch(xdp->data_meta);
+
+	memcpy(__skb_put(skb, totalsize), xdp->data_meta,
+	       ALIGN(totalsize, sizeof(long)));
+
+	metasize = xdp->data - xdp->data_meta;
+	if (metasize) {
+		skb_metadata_set(skb, metasize);
+		__skb_pull(skb, metasize);
+	}
+
+	skb_record_rx_queue(skb, rxq->queue_index);
+	skb->protocol = eth_type_trans(skb, rxq->dev);
+
+	xsk_buff_free(xdp);
+
+	return skb;
+}
+EXPORT_SYMBOL_GPL(xdp_build_skb_from_zc);
+
 struct sk_buff *__xdp_build_skb_from_frame(struct xdp_frame *xdpf,
 					   struct sk_buff *skb,
 					   struct net_device *dev)
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
