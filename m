Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC041F5BA9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2020 20:59:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3DF8C87557;
	Wed, 10 Jun 2020 18:59:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id viAFA4rgXY_f; Wed, 10 Jun 2020 18:59:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FEFB87558;
	Wed, 10 Jun 2020 18:59:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30BD81BF282
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 18:59:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 15393250E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 18:59:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WPOAmbFMzVxH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2020 18:59:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by silver.osuosl.org (Postfix) with ESMTPS id D3BD625067
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 18:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591815578;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mZRjN4QhW5X6YfR7Z2yjjbULaODEXfUST0bMuVtU8r4=;
 b=duKND9EiQW+3K+BeJvwsWgbX4MmsfQ0S16hneSfxurRnxvhKs6Cyd63VEBk8L/HzooZwZ0
 iQQrvVP3RiAd0f6I23x+j2/AOPkXbRvSciU19J8hirQjURo+MCyNT7spN8s9+WoOj5iY3m
 HtA9OBst+bP6Nfxo+kDM7MgqqSbqVpg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-160-bS6LqGuBPL-24bCqkFVOQA-1; Wed, 10 Jun 2020 14:59:34 -0400
X-MC-Unique: bS6LqGuBPL-24bCqkFVOQA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75A13EC1A1;
 Wed, 10 Jun 2020 18:59:31 +0000 (UTC)
Received: from hp-dl360pgen8-07.khw2.lab.eng.bos.redhat.com
 (hp-dl360pgen8-07.khw2.lab.eng.bos.redhat.com [10.16.210.135])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 34ED710013D0;
 Wed, 10 Jun 2020 18:59:29 +0000 (UTC)
From: Jarod Wilson <jarod@redhat.com>
To: linux-kernel@vger.kernel.org
Date: Wed, 10 Jun 2020 14:59:07 -0400
Message-Id: <20200610185910.48668-2-jarod@redhat.com>
In-Reply-To: <20200610185910.48668-1-jarod@redhat.com>
References: <20200608210058.37352-1-jarod@redhat.com>
 <20200610185910.48668-1-jarod@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: [Intel-wired-lan] [PATCH net-next v2 1/4] xfrm: bail early on slave
 pass over skb
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
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Veaceslav Falico <vfalico@gmail.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>, Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is prep work for initial support of bonding hardware encryption
pass-through support. The bonding driver will fill in the slave_dev
pointer, and we use that to know not to skb_push() again on a given
skb that was already processed on the bond device.

CC: Jay Vosburgh <j.vosburgh@gmail.com>
CC: Veaceslav Falico <vfalico@gmail.com>
CC: Andy Gospodarek <andy@greyhouse.net>
CC: "David S. Miller" <davem@davemloft.net>
CC: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
CC: Jakub Kicinski <kuba@kernel.org>
CC: Steffen Klassert <steffen.klassert@secunet.com>
CC: Herbert Xu <herbert@gondor.apana.org.au>
CC: netdev@vger.kernel.org
CC: intel-wired-lan@lists.osuosl.org
Signed-off-by: Jarod Wilson <jarod@redhat.com>
---
 include/net/xfrm.h     |  1 +
 net/xfrm/xfrm_device.c | 34 +++++++++++++++++-----------------
 2 files changed, 18 insertions(+), 17 deletions(-)

diff --git a/include/net/xfrm.h b/include/net/xfrm.h
index 094fe682f5d7..e20b2b27ec48 100644
--- a/include/net/xfrm.h
+++ b/include/net/xfrm.h
@@ -127,6 +127,7 @@ struct xfrm_state_walk {
 
 struct xfrm_state_offload {
 	struct net_device	*dev;
+	struct net_device	*slave_dev;
 	unsigned long		offload_handle;
 	unsigned int		num_exthdrs;
 	u8			flags;
diff --git a/net/xfrm/xfrm_device.c b/net/xfrm/xfrm_device.c
index f50d1f97cf8e..b8918fc5248b 100644
--- a/net/xfrm/xfrm_device.c
+++ b/net/xfrm/xfrm_device.c
@@ -106,6 +106,7 @@ struct sk_buff *validate_xmit_xfrm(struct sk_buff *skb, netdev_features_t featur
 	struct sk_buff *skb2, *nskb, *pskb = NULL;
 	netdev_features_t esp_features = features;
 	struct xfrm_offload *xo = xfrm_offload(skb);
+	struct net_device *dev = skb->dev;
 	struct sec_path *sp;
 
 	if (!xo)
@@ -119,6 +120,10 @@ struct sk_buff *validate_xmit_xfrm(struct sk_buff *skb, netdev_features_t featur
 	if (xo->flags & XFRM_GRO || x->xso.flags & XFRM_OFFLOAD_INBOUND)
 		return skb;
 
+	/* This skb was already validated on the master dev */
+	if ((x->xso.dev != dev) && (x->xso.slave_dev == dev))
+		return skb;
+
 	local_irq_save(flags);
 	sd = this_cpu_ptr(&softnet_data);
 	err = !skb_queue_empty(&sd->xfrm_backlog);
@@ -129,25 +134,20 @@ struct sk_buff *validate_xmit_xfrm(struct sk_buff *skb, netdev_features_t featur
 		return skb;
 	}
 
-	if (skb_is_gso(skb)) {
-		struct net_device *dev = skb->dev;
-
-		if (unlikely(x->xso.dev != dev)) {
-			struct sk_buff *segs;
+	if (skb_is_gso(skb) && unlikely(x->xso.dev != dev)) {
+		struct sk_buff *segs;
 
-			/* Packet got rerouted, fixup features and segment it. */
-			esp_features = esp_features & ~(NETIF_F_HW_ESP
-							| NETIF_F_GSO_ESP);
+		/* Packet got rerouted, fixup features and segment it. */
+		esp_features = esp_features & ~(NETIF_F_HW_ESP | NETIF_F_GSO_ESP);
 
-			segs = skb_gso_segment(skb, esp_features);
-			if (IS_ERR(segs)) {
-				kfree_skb(skb);
-				atomic_long_inc(&dev->tx_dropped);
-				return NULL;
-			} else {
-				consume_skb(skb);
-				skb = segs;
-			}
+		segs = skb_gso_segment(skb, esp_features);
+		if (IS_ERR(segs)) {
+			kfree_skb(skb);
+			atomic_long_inc(&dev->tx_dropped);
+			return NULL;
+		} else {
+			consume_skb(skb);
+			skb = segs;
 		}
 	}
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
