Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCtuKYBfqGmduAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 17:36:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C688204656
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 17:36:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3ACC81345;
	Wed,  4 Mar 2026 16:36:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PlIKjkwBq7bW; Wed,  4 Mar 2026 16:36:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 379C281353
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772642171;
	bh=Eeci4/NjcuJO1xnb51AOgg4Su0a2a2qP5jo787MASMs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YF7VkpKbaYsiPmpmBKFD1/vd6glQpf2SP9C7ZR+cS3zu5OrN4RBvfHNYCorvH/acT
	 ZKMUFsfhCmYClWA/re8zfN5kvgghQpnBdr/r8lbLqbdtBsXghaFwGKRMuvK1gK/Nud
	 NcekwCGE5vL42LwEGhXFl+CTBKAWsZNT+DURu7s+dbD4+T1S53VdR9eKjsGVIuHk+M
	 Jg3vxZ2ic3QhTQaIeSJxHvhpJdpBTwIlcSCJJQfOduQr+Vl1FbBADJuoynS0Honi9D
	 52hVKtQdEKJWLekPN+OwTARkCicb7YPP2sv8hAtXqmcn2a/CvxzgdeJVRdvv67Gcc1
	 3iTcQmlghWwSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 379C281353;
	Wed,  4 Mar 2026 16:36:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CB7701EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 16:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B1F8860870
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 16:36:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uBtmeQy_L1jx for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 16:36:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B2EB66086D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2EB66086D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B2EB66086D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 16:36:07 +0000 (UTC)
X-CSE-ConnectionGUID: t5Ir4OkuS+SMwxYpXgFbtA==
X-CSE-MsgGUID: 1Q8KFMkMRgKlMpBGWeSjHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="72906374"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="72906374"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 08:36:06 -0800
X-CSE-ConnectionGUID: e9NrnV7lSoS+nIqr1WzVkQ==
X-CSE-MsgGUID: L56cQVvBTNGKibBzxCCTSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="241404952"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 04 Mar 2026 08:36:01 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 8B336312C7;
 Wed,  4 Mar 2026 16:35:59 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Natalia Wochtman <natalia.wochtman@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Wed,  4 Mar 2026 17:03:37 +0100
Message-ID: <20260304160345.1340940-6-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260304160345.1340940-1-larysa.zaremba@intel.com>
References: <20260304160345.1340940-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772642168; x=1804178168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pyIxAVU4+7JwM6Zbitl8fZ5LMUpwvLy2X0rNevCd3u4=;
 b=K4qs3NQZxMiBKP5pyyVKZae+kyi1YB+4oouMLEnKxftJrdjWuQ5010hE
 EWYAWWsq+Fax/fD6uMSrMBLA+cpe+XC5FOk7W1M+AHF0GxAE/clDatwj1
 GrqycXEWeqYdXT+HYUqasik3aPRWOqgn1P1LPaWbWdz6MZRCnG3UeNffS
 cSZmDv+QgSf7zbnOU81FjGZp9xxedBPdQ5wtj6RwR5sijlun4+4FeKQtP
 OKmyPHzUk+0iLQlq1umiI6d/QBot4BsgwioEqOeP9B7Lqx58XYHD7E2Ra
 H4TfGMYH9sepffhK6J50UZ3ohSwqdQvxlaYEMLjSRHiUPbTF2LFW42JNj
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K4qs3NQZ
Subject: [Intel-wired-lan] [PATCH iwl-next v3 05/10] ixgbevf: support XDP
 multi-buffer on Rx path
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
X-Rspamd-Queue-Id: 4C688204656
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:larysa.zaremba@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:natalia.wochtman@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,intel.com:mid,intel.com:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Implement XDP support for received fragmented packets, this requires using
some helpers from libeth_xdp.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h  |  3 +-
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 90 +++++++------------
 2 files changed, 32 insertions(+), 61 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
index ebf771f0caa4..2626af039361 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
@@ -11,6 +11,7 @@
 #include <linux/netdevice.h>
 #include <linux/if_vlan.h>
 #include <linux/u64_stats_sync.h>
+#include <net/libeth/types.h>
 #include <net/xdp.h>
 
 #include "vf.h"
@@ -105,7 +106,6 @@ struct ixgbevf_ring {
 	struct xdp_rxq_info xdp_rxq;
 	u64 hw_csum_rx_error;
 	u8 __iomem *tail;
-	struct sk_buff *skb;
 
 	/* holds the special value that gets the hardware register offset
 	 * associated with this ring, which is different for DCB and RSS modes
@@ -113,6 +113,7 @@ struct ixgbevf_ring {
 	u16 reg_idx;
 	int queue_index; /* needed for multiqueue queue management */
 	u32 rx_buf_len;
+	struct libeth_xdp_buff_stash xdp_stash;
 } ____cacheline_internodealigned_in_smp;
 
 /* How many Rx Buffers do we bundle into one write to the hardware ? */
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 4619f2bea1ab..27cab542d3bb 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -84,6 +84,7 @@ MODULE_DEVICE_TABLE(pci, ixgbevf_pci_tbl);
 
 MODULE_DESCRIPTION("Intel(R) 10 Gigabit Virtual Function Network Driver");
 MODULE_IMPORT_NS("LIBETH");
+MODULE_IMPORT_NS("LIBETH_XDP");
 MODULE_LICENSE("GPL v2");
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
@@ -647,26 +648,6 @@ static bool ixgbevf_cleanup_headers(struct ixgbevf_ring *rx_ring,
 	return false;
 }
 
-/**
- * ixgbevf_add_rx_frag - Add contents of Rx buffer to sk_buff
- * @rx_ring: rx descriptor ring to transact packets on
- * @rx_buffer: buffer containing page to add
- * @skb: sk_buff to place the data into
- * @size: size of buffer to be added
- *
- * This function will add the data contained in rx_buffer->page to the skb.
- **/
-static void ixgbevf_add_rx_frag(const struct libeth_fqe *rx_buffer,
-				struct sk_buff *skb,
-				unsigned int size)
-{
-	u32 hr = netmem_get_pp(rx_buffer->netmem)->p.offset;
-
-	skb_add_rx_frag_netmem(skb, skb_shinfo(skb)->nr_frags,
-			       rx_buffer->netmem, rx_buffer->offset + hr,
-			       size, rx_buffer->truesize);
-}
-
 static inline void ixgbevf_irq_enable_queues(struct ixgbevf_adapter *adapter,
 					     u32 qmask)
 {
@@ -803,16 +784,16 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
 	struct ixgbevf_adapter *adapter = q_vector->adapter;
 	u16 cleaned_count = ixgbevf_desc_unused(rx_ring);
-	struct sk_buff *skb = rx_ring->skb;
 	LIBETH_XDP_ONSTACK_BUFF(xdp);
 	bool xdp_xmit = false;
 	int xdp_res = 0;
 
-	xdp->base.rxq = &rx_ring->xdp_rxq;
+	libeth_xdp_init_buff(xdp, &rx_ring->xdp_stash, &rx_ring->xdp_rxq);
 
 	while (likely(total_rx_packets < budget)) {
 		union ixgbe_adv_rx_desc *rx_desc;
 		struct libeth_fqe *rx_buffer;
+		struct sk_buff *skb;
 		unsigned int size;
 
 		/* return some buffers to hardware, one at a time is too slow */
@@ -833,42 +814,34 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 		rmb();
 
 		rx_buffer = &rx_ring->rx_fqes[rx_ring->next_to_clean];
-		libeth_rx_sync_for_cpu(rx_buffer, size);
+		libeth_xdp_process_buff(xdp, rx_buffer, size);
 
-		/* retrieve a buffer from the ring */
-		if (!skb) {
-			libeth_xdp_prepare_buff(xdp, rx_buffer, size);
-			prefetch(xdp->data);
-			xdp_res = ixgbevf_run_xdp(adapter, rx_ring, xdp);
-		}
+		cleaned_count++;
+		/* fetch next buffer in frame if non-eop */
+		if (ixgbevf_is_non_eop(rx_ring, rx_desc))
+			continue;
 
+		xdp_res = ixgbevf_run_xdp(adapter, rx_ring, xdp);
 		if (xdp_res) {
 			if (xdp_res == IXGBEVF_XDP_TX)
 				xdp_xmit = true;
 
 			total_rx_packets++;
-			total_rx_bytes += size;
-		} else if (skb) {
-			ixgbevf_add_rx_frag(rx_buffer, skb, size);
-		} else {
-			skb = xdp_build_skb_from_buff(&xdp->base);
+			total_rx_bytes += xdp_get_buff_len(&xdp->base);
+			continue;
 		}
 
+		skb = xdp_build_skb_from_buff(&xdp->base);
+		xdp->data = NULL;
+
 		/* exit if we failed to retrieve a buffer */
-		if (unlikely(!xdp_res && !skb)) {
+		if (unlikely(!skb)) {
 			rx_ring->rx_stats.alloc_rx_buff_failed++;
 			break;
 		}
 
-		cleaned_count++;
-
-		/* fetch next buffer in frame if non-eop */
-		if (ixgbevf_is_non_eop(rx_ring, rx_desc))
-			continue;
-
 		/* verify the packet layout is correct */
-		if (xdp_res ||
-		    unlikely(ixgbevf_cleanup_headers(rx_ring, rx_desc, skb))) {
+		if (unlikely(ixgbevf_cleanup_headers(rx_ring, rx_desc, skb))) {
 			skb = NULL;
 			continue;
 		}
@@ -892,13 +865,10 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 		total_rx_packets++;
 
 		ixgbevf_rx_skb(q_vector, skb);
-
-		/* reset skb pointer */
-		skb = NULL;
 	}
 
 	/* place incomplete frames back on ring for completion */
-	rx_ring->skb = skb;
+	libeth_xdp_save_buff(&rx_ring->xdp_stash, xdp);
 
 	if (xdp_xmit) {
 		struct ixgbevf_ring *xdp_ring =
@@ -2018,10 +1988,7 @@ void ixgbevf_up(struct ixgbevf_adapter *adapter)
 static void ixgbevf_clean_rx_ring(struct ixgbevf_ring *rx_ring)
 {
 	/* Free Rx ring sk_buff */
-	if (rx_ring->skb) {
-		dev_kfree_skb(rx_ring->skb);
-		rx_ring->skb = NULL;
-	}
+	libeth_xdp_return_stash(&rx_ring->xdp_stash);
 
 	/* Free all the Rx ring pages */
 	for (u32 i = rx_ring->next_to_clean; i != rx_ring->next_to_use; ) {
@@ -4103,16 +4070,19 @@ ixgbevf_features_check(struct sk_buff *skb, struct net_device *dev,
 	return features;
 }
 
-static int ixgbevf_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
+static int ixgbevf_xdp_setup(struct net_device *dev, struct bpf_prog *prog,
+			     struct netlink_ext_ack *extack)
 {
-	int i, frame_size = dev->mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
+	u32 frame_size = READ_ONCE(dev->mtu) + LIBETH_RX_LL_LEN;
 	struct ixgbevf_adapter *adapter = netdev_priv(dev);
 	struct bpf_prog *old_prog;
+	bool requires_mbuf;
 
-	/* verify ixgbevf ring attributes are sufficient for XDP */
-	for (i = 0; i < adapter->num_rx_queues; i++) {
-		if (frame_size > IXGBEVF_RXBUFFER_3072)
-			return -EINVAL;
+	requires_mbuf = frame_size > IXGBEVF_RX_PAGE_LEN(LIBETH_XDP_HEADROOM);
+	if (prog && !prog->aux->xdp_has_frags && requires_mbuf) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Configured MTU requires non-linear frames and XDP prog does not support frags");
+		return -EOPNOTSUPP;
 	}
 
 	old_prog = xchg(&adapter->xdp_prog, prog);
@@ -4132,7 +4102,7 @@ static int ixgbevf_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
 		if (netif_running(dev))
 			ixgbevf_open(dev);
 	} else {
-		for (i = 0; i < adapter->num_rx_queues; i++)
+		for (int i = 0; i < adapter->num_rx_queues; i++)
 			xchg(&adapter->rx_ring[i]->xdp_prog, adapter->xdp_prog);
 	}
 
@@ -4146,7 +4116,7 @@ static int ixgbevf_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 {
 	switch (xdp->command) {
 	case XDP_SETUP_PROG:
-		return ixgbevf_xdp_setup(dev, xdp->prog);
+		return ixgbevf_xdp_setup(dev, xdp->prog, xdp->extack);
 	default:
 		return -EINVAL;
 	}
@@ -4298,7 +4268,7 @@ static int ixgbevf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 			    NETIF_F_HW_VLAN_CTAG_TX;
 
 	netdev->priv_flags |= IFF_UNICAST_FLT;
-	netdev->xdp_features = NETDEV_XDP_ACT_BASIC;
+	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_RX_SG;
 
 	/* MTU range: 68 - 1504 or 9710 */
 	netdev->min_mtu = ETH_MIN_MTU;
-- 
2.52.0

