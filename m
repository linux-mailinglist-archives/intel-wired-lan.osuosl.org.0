Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBUjMqE/1mkFCwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 13:44:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADA03BB6B8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 13:44:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1B20822FE;
	Wed,  8 Apr 2026 11:44:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rnhoz6LMZzJr; Wed,  8 Apr 2026 11:44:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53FD7822FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775648670;
	bh=f7q0qRSRszARAN4LccnaXW/nt7S9HdGvFiuMTOZO9xM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1TaHsd6UHOHFC0GZVMJyYx8YGej4sfFohHW5KLH2uIQruVtqETFfZlQfSdLsRHL0D
	 pIG95WR6/IIKPvyh6cZSBU8XMpz83vEv6LpukFUjXtZVy6IruXY6h6nTbF5rCG49dV
	 m/BMxYsS2u/xJeK6/RZYmWt4RTuJbpsM/1kNqOMIlANYEABsQRNcbUJr/h4qYnVMfh
	 x7zECs1YqcGJH+JT7v6HHLXk5SFvf0uc99ZB8401enmyw8hkWuwr/H3nJeJROgBCr3
	 PsMEdIaq32h6yv0iG4l+1iRM20KrvscuaRvaL2g3+wvd8kFb4F3TBEdif1NRU5/Tvx
	 itLG/3QAOGjZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53FD7822FF;
	Wed,  8 Apr 2026 11:44:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3914E237
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 11:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F3FF82299
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 11:44:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id shFfMfFrV7fc for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 11:44:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 13D3082178
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13D3082178
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 13D3082178
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 11:44:27 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-494-P6M8fJ2NMHqDWmenjB8qug-1; Wed,
 08 Apr 2026 07:44:22 -0400
X-MC-Unique: P6M8fJ2NMHqDWmenjB8qug-1
X-Mimecast-MFC-AGG-ID: P6M8fJ2NMHqDWmenjB8qug_1775648660
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 7812019560A1; Wed,  8 Apr 2026 11:44:20 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.44.32.173])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 2A01E1800361; Wed,  8 Apr 2026 11:44:15 +0000 (UTC)
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
Date: Wed,  8 Apr 2026 13:43:46 +0200
Message-ID: <c70f2e9d8cbc4af419356ed022bc60a8c9cfc7d2.1775648513.git.pabeni@redhat.com>
In-Reply-To: <cover.1775648513.git.pabeni@redhat.com>
References: <cover.1775648513.git.pabeni@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: 0g8ThZwiVH71QaZOa3G3qQB3h727bx_mnaCE5EcsP28_1775648660
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1775648667;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f7q0qRSRszARAN4LccnaXW/nt7S9HdGvFiuMTOZO9xM=;
 b=WJkTE3ek66i3ONE4Kfl8sWhx/9sPTa+BJhNQ6Ta6lkm6dRRrEKtNogyGbGDL42fv36RhwR
 xClfIy/C6FXxD+bnMHFK4Z+MQ23g1UywLAF5EejNiM4x1CUPluBG5dq8AIFw3OqpkWEa4D
 xM7xbbxk4Fiobqrn3Qc4oBwjoJ8Ip4A=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WJkTE3ek
Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] i40e: keep track of per
 queue gso counters.
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
X-Spamd-Result: default: False [3.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pabeni@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.998];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 0ADA03BB6B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Track the number of GSO and wire packets transmitted and expose the
counters via the queue stats.

Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h             |  2 ++
 drivers/net/ethernet/intel/i40e/i40e_main.c        | 13 ++++++++++++-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c        |  8 +++++++-
 drivers/net/ethernet/intel/i40e/i40e_txrx.h        |  2 ++
 drivers/net/ethernet/intel/i40e/i40e_txrx_common.h |  6 +++++-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c         |  2 +-
 6 files changed, 29 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index fe642c464e9c..4a88c7d69f61 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -845,6 +845,8 @@ struct i40e_vsi {
 	u64 tx_stopped_base;
 	u64 tx_bytes;
 	u64 tx_packets;
+	u64 tx_gso_packets;
+	u64 tx_gso_wire_packets;
 	u64 rx_buf_failed;
 	u64 rx_page_failed;
 	u64 rx_page_reuse;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 0d0b3619ec56..7c2af738ccc5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -11695,6 +11695,8 @@ static void i40e_vsi_aggregate_tx_counters(struct i40e_vsi *vsi,
 
 	vsi->tx_bytes += tx_ring->stats.bytes;
 	vsi->tx_packets += tx_ring->stats.packets;
+	vsi->tx_gso_packets += tx_ring->tx_stats.tx_gso_packets;
+	vsi->tx_gso_wire_packets += tx_ring->tx_stats.tx_gso_wire_packets;
 }
 
 static void i40e_vsi_aggregate_rx_counters(struct i40e_vsi *vsi,
@@ -13684,6 +13686,8 @@ static void i40e_zero_tx_ring_stats(struct netdev_queue_stats_tx *tx)
 {
 	tx->bytes = 0;
 	tx->packets = 0;
+	tx->hw_gso_packets = 0;
+	tx->hw_gso_wire_packets = 0;
 	tx->stop = 0;
 	tx->wake = 0;
 	tx->hw_drops = 0;
@@ -13692,17 +13696,21 @@ static void i40e_zero_tx_ring_stats(struct netdev_queue_stats_tx *tx)
 static void i40e_add_tx_ring_stats(struct i40e_ring *tx_ring,
 				   struct netdev_queue_stats_tx *tx)
 {
-	u64 bytes, packets;
+	u64 bytes, packets, gso_packets, gso_wire_packets;
 	unsigned int start;
 
 	do {
 		start = u64_stats_fetch_begin(&tx_ring->syncp);
 		bytes = tx_ring->stats.bytes;
 		packets = tx_ring->stats.packets;
+		gso_packets = tx_ring->tx_stats.tx_gso_packets;
+		gso_wire_packets = tx_ring->tx_stats.tx_gso_wire_packets;
 	} while (u64_stats_fetch_retry(&tx_ring->syncp, start));
 
 	tx->bytes += bytes;
 	tx->packets += packets;
+	tx->hw_gso_packets += gso_packets;
+	tx->hw_gso_wire_packets += gso_wire_packets;
 
 	tx->stop += tx_ring->tx_stats.tx_stopped;
 	tx->wake += tx_ring->tx_stats.restart_queue;
@@ -13743,6 +13751,9 @@ static void i40e_get_base_stats(struct net_device *dev,
 
 	tx->bytes = vsi->tx_bytes;
 	tx->packets = vsi->tx_packets;
+	tx->hw_gso_packets = vsi->tx_gso_packets;
+	tx->hw_gso_wire_packets = vsi->tx_gso_wire_packets;
+
 	tx->wake = vsi->tx_restart_base;
 	tx->stop = vsi->tx_stopped_base;
 	tx->hw_drops = vsi->tx_busy_base;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 894f2d06d39d..ec61cc43ae39 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -928,6 +928,7 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
 			      struct i40e_ring *tx_ring, int napi_budget,
 			      unsigned int *tx_cleaned)
 {
+	unsigned int total_gso_packets = 0, total_gso_wire_packets = 0;
 	int i = tx_ring->next_to_clean;
 	struct i40e_tx_buffer *tx_buf;
 	struct i40e_tx_desc *tx_head;
@@ -959,6 +960,10 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
 		/* update the statistics for this packet */
 		total_bytes += tx_buf->bytecount;
 		total_packets += tx_buf->gso_segs;
+		if (tx_buf->gso_segs > 1) {
+			total_gso_packets++;
+			total_gso_wire_packets += tx_buf->gso_segs;
+		}
 
 		/* free the skb/XDP data */
 		if (ring_is_xdp(tx_ring))
@@ -1018,7 +1023,8 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
 
 	i += tx_ring->count;
 	tx_ring->next_to_clean = i;
-	i40e_update_tx_stats(tx_ring, total_packets, total_bytes);
+	i40e_update_tx_stats(tx_ring, total_packets, total_bytes,
+			     total_gso_packets, total_gso_wire_packets);
 	i40e_arm_wb(tx_ring, vsi, budget);
 
 	if (ring_is_xdp(tx_ring))
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index 1e5fd63d47f4..15c608378467 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -295,6 +295,8 @@ struct i40e_tx_queue_stats {
 	u64 tx_linearize;
 	u64 tx_force_wb;
 	u64 tx_stopped;
+	u64 tx_gso_packets;
+	u64 tx_gso_wire_packets;
 	int prev_pkt_ctr;
 };
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx_common.h b/drivers/net/ethernet/intel/i40e/i40e_txrx_common.h
index e26807fd2123..24220594ff1a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx_common.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx_common.h
@@ -45,11 +45,15 @@ static inline __le64 build_ctob(u32 td_cmd, u32 td_offset, unsigned int size,
  **/
 static inline void i40e_update_tx_stats(struct i40e_ring *tx_ring,
 					unsigned int total_packets,
-					unsigned int total_bytes)
+					unsigned int total_bytes,
+					unsigned int total_gso,
+					unsigned int total_gso_wire)
 {
 	u64_stats_update_begin(&tx_ring->syncp);
 	tx_ring->stats.bytes += total_bytes;
 	tx_ring->stats.packets += total_packets;
+	tx_ring->tx_stats.tx_gso_packets += total_gso;
+	tx_ring->tx_stats.tx_gso_wire_packets += total_gso_wire;
 	u64_stats_update_end(&tx_ring->syncp);
 	tx_ring->q_vector->tx.total_bytes += total_bytes;
 	tx_ring->q_vector->tx.total_packets += total_packets;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 9f47388eaba5..c2a465416a33 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -599,7 +599,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
 	i40e_set_rs_bit(xdp_ring);
 	i40e_xdp_ring_update_tail(xdp_ring);
 
-	i40e_update_tx_stats(xdp_ring, nb_pkts, total_bytes);
+	i40e_update_tx_stats(xdp_ring, nb_pkts, total_bytes, 0, 0);
 
 	return nb_pkts < budget;
 }
-- 
2.53.0

