Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLtNO5w/1mkFCwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 13:44:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0E13BB6B0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 13:44:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5953740F01;
	Wed,  8 Apr 2026 11:44:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uucGfFLqzSsT; Wed,  8 Apr 2026 11:44:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA4F040EF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775648666;
	bh=NvUt9aU1Ztdwrr0UI5JNClG/hHu+7WShFgS8wrqKml0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J9J5Ve/QdslmumeRyiXS9+syUdKtQfK4R0qmg15NPaidpMkdtpr3qb2vNoOQXt2vC
	 oCe5YnwbuNQ3PQoKO33bej0zMSoGNdOMMi8OrkMncACh33p6hVKErMWyzW4N7btWZB
	 eYGm77w5Evrn5hHYyqycveD4Qhg4ehWBrhBCr1YMypvBcqHrTi+peD1I1CAQNS4+Gv
	 k/vkrB2iGzy2+Zp87BlTlenlLJBt4lOVNAcX1bq7/b+a9v8f9LGPGyi9Cqt6KvxQgS
	 GZreqHbZA5nkJjfkLl4/sfQjMakHOM9aTWkFXA1c3MgGQ3nYV3tgMIv9OuAM2TtbQ6
	 PDFsGhqq12beg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA4F040EF6;
	Wed,  8 Apr 2026 11:44:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 181B1237
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 11:44:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0A74340E9E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 11:44:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZBDP9i1p-v63 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 11:44:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E4B7540E4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4B7540E4B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E4B7540E4B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 11:44:23 +0000 (UTC)
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-168-UudbUPSyM8yz-NV0sAcXTA-1; Wed,
 08 Apr 2026 07:44:18 -0400
X-MC-Unique: UudbUPSyM8yz-NV0sAcXTA-1
X-Mimecast-MFC-AGG-ID: UudbUPSyM8yz-NV0sAcXTA_1775648656
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id A2F3A1800610; Wed,  8 Apr 2026 11:44:15 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.44.32.173])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 4A7FA1800361; Wed,  8 Apr 2026 11:44:11 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, netdev@vger.kernel.org
Date: Wed,  8 Apr 2026 13:43:45 +0200
Message-ID: <0815f1eb4b60faa653ea703e420395b724d05216.1775648513.git.pabeni@redhat.com>
In-Reply-To: <cover.1775648513.git.pabeni@redhat.com>
References: <cover.1775648513.git.pabeni@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: 7v-xwW7LgP6TkADT83RPuFVhwUlN3HkUj3uponTtggg_1775648656
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1775648662;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NvUt9aU1Ztdwrr0UI5JNClG/hHu+7WShFgS8wrqKml0=;
 b=B/iXBZS/dEZMC0vIygiL2sThZboDgt8uPe31QP7hpgfgjkBIyJV646ffifaZVyz9dkrj4n
 lcPrJbn5ZWzPe91LAnwSaGcLc2bnCAJLoV54dwZVfl59Z8+YNYI/HXF+C6TRUes0LYymoR
 kqExTQ0K1ZTNY7hz6VWbYUIvMyhKEtA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=B/iXBZS/
Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] i40e: implement basic
 per-queue stats
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pabeni@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.998];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: BB0E13BB6B0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Only expose the counters currently available (bytes, packets); add
account for base stats to deal with ring clear.

Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      |   7 ++
 drivers/net/ethernet/intel/i40e/i40e_main.c | 133 ++++++++++++++++++++
 2 files changed, 140 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index dcb50c2e1aa2..fe642c464e9c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -836,16 +836,23 @@ struct i40e_vsi {
 	struct i40e_eth_stats eth_stats;
 	struct i40e_eth_stats eth_stats_offsets;
 	u64 tx_restart;
+	u64 tx_restart_base;
 	u64 tx_busy;
+	u64 tx_busy_base;
 	u64 tx_linearize;
 	u64 tx_force_wb;
 	u64 tx_stopped;
+	u64 tx_stopped_base;
+	u64 tx_bytes;
+	u64 tx_packets;
 	u64 rx_buf_failed;
 	u64 rx_page_failed;
 	u64 rx_page_reuse;
 	u64 rx_page_alloc;
 	u64 rx_page_waive;
 	u64 rx_page_busy;
+	u64 rx_bytes;
+	u64 rx_packets;
 
 	/* These are containers of ring pointers, allocated at run-time */
 	struct i40e_ring **rx_rings;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 926d001b2150..0d0b3619ec56 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -7,6 +7,7 @@
 #include <linux/if_bridge.h>
 #include <linux/if_macvlan.h>
 #include <linux/module.h>
+#include <net/netdev_queues.h>
 #include <net/pkt_cls.h>
 #include <net/xdp_sock_drv.h>
 
@@ -11686,6 +11687,26 @@ static int i40e_vsi_clear(struct i40e_vsi *vsi)
 	return 0;
 }
 
+static void i40e_vsi_aggregate_tx_counters(struct i40e_vsi *vsi,
+					   struct i40e_ring *tx_ring)
+{
+	if (!tx_ring)
+		return;
+
+	vsi->tx_bytes += tx_ring->stats.bytes;
+	vsi->tx_packets += tx_ring->stats.packets;
+}
+
+static void i40e_vsi_aggregate_rx_counters(struct i40e_vsi *vsi,
+					   struct i40e_ring *rx_ring)
+{
+	if (!rx_ring)
+		return;
+
+	vsi->rx_bytes += rx_ring->stats.bytes;
+	vsi->rx_packets += rx_ring->stats.packets;
+}
+
 /**
  * i40e_vsi_clear_rings - Deallocates the Rx and Tx rings for the provided VSI
  * @vsi: the VSI being cleaned
@@ -11696,6 +11717,13 @@ static void i40e_vsi_clear_rings(struct i40e_vsi *vsi)
 
 	if (vsi->tx_rings && vsi->tx_rings[0]) {
 		for (i = 0; i < vsi->alloc_queue_pairs; i++) {
+			struct i40e_ring *xdp_ring = vsi->xdp_rings ?
+						     vsi->xdp_rings[i] : NULL;
+
+			i40e_vsi_aggregate_tx_counters(vsi, vsi->tx_rings[i]);
+			i40e_vsi_aggregate_tx_counters(vsi, xdp_ring);
+			i40e_vsi_aggregate_rx_counters(vsi, vsi->rx_rings[i]);
+
 			kfree_rcu(vsi->tx_rings[i], rcu);
 			WRITE_ONCE(vsi->tx_rings[i], NULL);
 			WRITE_ONCE(vsi->rx_rings[i], NULL);
@@ -13625,6 +13653,110 @@ static const struct net_device_ops i40e_netdev_ops = {
 	.ndo_hwtstamp_set	= i40e_ptp_hwtstamp_set,
 };
 
+static void i40e_get_queue_stats_rx(struct net_device *dev, int idx,
+				    struct netdev_queue_stats_rx *rx)
+{
+	struct i40e_netdev_priv *np = netdev_priv(dev);
+	struct i40e_vsi *vsi = np->vsi;
+	struct i40e_ring *rx_ring;
+	unsigned int start;
+	u64 bytes, packets;
+
+	rcu_read_lock();
+	rx_ring = READ_ONCE(vsi->rx_rings[idx]);
+	if (!rx_ring)
+		goto unlock;
+
+	do {
+		start = u64_stats_fetch_begin(&rx_ring->syncp);
+		bytes = rx_ring->stats.bytes;
+		packets = rx_ring->stats.packets;
+	} while (u64_stats_fetch_retry(&rx_ring->syncp, start));
+
+	rx->bytes = bytes;
+	rx->packets = packets;
+
+unlock:
+	rcu_read_unlock();
+}
+
+static void i40e_zero_tx_ring_stats(struct netdev_queue_stats_tx *tx)
+{
+	tx->bytes = 0;
+	tx->packets = 0;
+	tx->stop = 0;
+	tx->wake = 0;
+	tx->hw_drops = 0;
+}
+
+static void i40e_add_tx_ring_stats(struct i40e_ring *tx_ring,
+				   struct netdev_queue_stats_tx *tx)
+{
+	u64 bytes, packets;
+	unsigned int start;
+
+	do {
+		start = u64_stats_fetch_begin(&tx_ring->syncp);
+		bytes = tx_ring->stats.bytes;
+		packets = tx_ring->stats.packets;
+	} while (u64_stats_fetch_retry(&tx_ring->syncp, start));
+
+	tx->bytes += bytes;
+	tx->packets += packets;
+
+	tx->stop += tx_ring->tx_stats.tx_stopped;
+	tx->wake += tx_ring->tx_stats.restart_queue;
+	tx->hw_drops += tx_ring->tx_stats.tx_busy;
+}
+
+static void i40e_get_queue_stats_tx(struct net_device *dev, int idx,
+				    struct netdev_queue_stats_tx *tx)
+{
+	struct i40e_netdev_priv *np = netdev_priv(dev);
+	struct i40e_vsi *vsi = np->vsi;
+	struct i40e_ring *tx_ring;
+
+	rcu_read_lock();
+	tx_ring = READ_ONCE(vsi->tx_rings[idx]);
+	if (!tx_ring)
+		goto out;
+
+	i40e_zero_tx_ring_stats(tx);
+	i40e_add_tx_ring_stats(tx_ring, tx);
+
+	if (i40e_enabled_xdp_vsi(vsi)) {
+		tx_ring = READ_ONCE(vsi->xdp_rings[idx]);
+		if (tx_ring)
+			i40e_add_tx_ring_stats(tx_ring, tx);
+	}
+
+out:
+	rcu_read_unlock();
+}
+
+static void i40e_get_base_stats(struct net_device *dev,
+				struct netdev_queue_stats_rx *rx,
+				struct netdev_queue_stats_tx *tx)
+{
+	struct i40e_netdev_priv *np = netdev_priv(dev);
+	struct i40e_vsi *vsi = np->vsi;
+
+	tx->bytes = vsi->tx_bytes;
+	tx->packets = vsi->tx_packets;
+	tx->wake = vsi->tx_restart_base;
+	tx->stop = vsi->tx_stopped_base;
+	tx->hw_drops = vsi->tx_busy_base;
+
+	rx->bytes = vsi->rx_bytes;
+	rx->packets = vsi->rx_packets;
+}
+
+static const struct netdev_stat_ops i40e_stat_ops = {
+	.get_queue_stats_rx	= i40e_get_queue_stats_rx,
+	.get_queue_stats_tx	= i40e_get_queue_stats_tx,
+	.get_base_stats		= i40e_get_base_stats,
+};
+
 /**
  * i40e_config_netdev - Setup the netdev flags
  * @vsi: the VSI being configured
@@ -13787,6 +13919,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
 	/* Setup netdev TC information */
 	i40e_vsi_config_netdev_tc(vsi, vsi->tc_config.enabled_tc);
 
+	netdev->stat_ops = &i40e_stat_ops;
 	netdev->netdev_ops = &i40e_netdev_ops;
 	netdev->watchdog_timeo = 5 * HZ;
 	i40e_set_ethtool_ops(netdev);
-- 
2.53.0

