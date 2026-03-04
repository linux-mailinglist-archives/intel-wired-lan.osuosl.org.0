Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DvsL3xfqGmduAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 17:36:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCDD204648
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 17:36:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2AB78135B;
	Wed,  4 Mar 2026 16:36:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id el1CtfjQl12p; Wed,  4 Mar 2026 16:36:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 514D581345
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772642167;
	bh=hNv/JCxyEfODysJznGOb9inHnBec7P5QUf7yBNavZxY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z8wlJQBfJUN+TwVxV8ss9ZNK/bdkwv6d6YqpJ1+rsqOdavUV357EwgdbJQtp0M9fM
	 LDF/nwHG6Emv9R9kkF65FA9Mv3QECzLrr1BlkQR56MCaZCDr2BES31NLO2bLEPoZHG
	 ZSo9npzwVe+XM+LFe+FatwdNQduWEx8MW6zwZNJKaUAs4z0NP1MGQddV+RoYMGk/ft
	 8vZpYyc7qW+ypo4rllP99wruMzs1y1teHUSicKsme0mvMCIpMgMG8p+wACGyd6T4aB
	 QVBa7TchmxxLuaSn4FApXyVPPGgnnoAZO/M1/u5QjGq8qHB9rIsFR/XafsECh94Uuw
	 YhQZl5HgxDx8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 514D581345;
	Wed,  4 Mar 2026 16:36:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D1BE1EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 16:36:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4F50E6086D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 16:36:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MyZhd4GWSfYP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 16:36:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9846C6086F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9846C6086F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9846C6086F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 16:36:04 +0000 (UTC)
X-CSE-ConnectionGUID: 49Yyw+P+QD6gNicPcLgOQA==
X-CSE-MsgGUID: 1QkSARx5SjOwpYa3MtgzNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="77580047"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="77580047"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 08:36:04 -0800
X-CSE-ConnectionGUID: CXspW5VzSoe+MV4hhdt45g==
X-CSE-MsgGUID: F+Spye3VRzyYF4xcsZtV8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="222895571"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa004.jf.intel.com with ESMTP; 04 Mar 2026 08:35:59 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id BD90E312CB;
 Wed,  4 Mar 2026 16:35:57 +0000 (GMT)
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
Date: Wed,  4 Mar 2026 17:03:36 +0100
Message-ID: <20260304160345.1340940-5-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260304160345.1340940-1-larysa.zaremba@intel.com>
References: <20260304160345.1340940-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772642165; x=1804178165;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oCACM2F8kkfEfXBuuh5iayPiq9mwGCDlUS6bp5gDtSo=;
 b=ULYjj+WMdvI172ztMLuPkdlGfuzgXi7/vxq2YG86hTFu1Vgz6DCHpfYA
 JrreLpF/JMAu9MOHZI9ecqPwggzvdKxW1/lfgDROD5XRHWfpkFqhgwvhZ
 j+lpM1rnfWmkFKah612w+P9N451ve4xRZjwVW/VFSwFazkVeUl6b8dqL5
 qVDh3QLGO5O9efwLv5n6oQH9J1IFyoiSiZVuv92L2jSuS74/wpQ0wO8ta
 gm6No0bo6wf3R8Bo3xOEGg/gIigELkwVS+GX2fh5A1W0kqhiM74Gjbdmn
 hEQvlUcOrUU22B4VK0gBRXraUBb5y2DEV5Tw6io02wpbHaNpRRdfIVuJn
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ULYjj+WM
Subject: [Intel-wired-lan] [PATCH iwl-next v3 04/10] ixgbevf: branch
 prediction and cleanup
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
X-Rspamd-Queue-Id: 5BCDD204648
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:larysa.zaremba@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:natalia.wochtman@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,intel.com:mid,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Add likely/unlikely markers for better branch prediction. While touching
some functions, cleanup the code a little bit.

This patch is not supposed to make any logic changes aside from making
total_rx_bytes and total_rx_packets more correlated.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 29 +++++++++----------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 5a270dd2c7aa..4619f2bea1ab 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -570,7 +570,7 @@ static void ixgbevf_alloc_rx_buffers(struct ixgbevf_ring *rx_ring,
 	u16 ntu = rx_ring->next_to_use;
 
 	/* nothing to do or no valid netdev defined */
-	if (!cleaned_count || !rx_ring->netdev)
+	if (unlikely(!cleaned_count || !rx_ring->netdev))
 		return;
 
 	rx_desc = IXGBEVF_RX_DESC(rx_ring, ntu);
@@ -586,7 +586,7 @@ static void ixgbevf_alloc_rx_buffers(struct ixgbevf_ring *rx_ring,
 
 		rx_desc++;
 		ntu++;
-		if (unlikely(ntu == rx_ring->count)) {
+		if (unlikely(ntu == fq.count)) {
 			rx_desc = IXGBEVF_RX_DESC(rx_ring, 0);
 			ntu = 0;
 		}
@@ -823,7 +823,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 
 		rx_desc = IXGBEVF_RX_DESC(rx_ring, rx_ring->next_to_clean);
 		size = le16_to_cpu(rx_desc->wb.upper.length);
-		if (!size)
+		if (unlikely(!size))
 			break;
 
 		/* This memory barrier is needed to keep us from reading
@@ -855,7 +855,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 		}
 
 		/* exit if we failed to retrieve a buffer */
-		if (!xdp_res && !skb) {
+		if (unlikely(!xdp_res && !skb)) {
 			rx_ring->rx_stats.alloc_rx_buff_failed++;
 			break;
 		}
@@ -867,21 +867,19 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 			continue;
 
 		/* verify the packet layout is correct */
-		if (xdp_res || ixgbevf_cleanup_headers(rx_ring, rx_desc, skb)) {
+		if (xdp_res ||
+		    unlikely(ixgbevf_cleanup_headers(rx_ring, rx_desc, skb))) {
 			skb = NULL;
 			continue;
 		}
 
-		/* probably a little skewed due to removing CRC */
-		total_rx_bytes += skb->len;
-
 		/* Workaround hardware that can't do proper VEPA multicast
 		 * source pruning.
 		 */
-		if ((skb->pkt_type == PACKET_BROADCAST ||
-		     skb->pkt_type == PACKET_MULTICAST) &&
-		    ether_addr_equal(rx_ring->netdev->dev_addr,
-				     eth_hdr(skb)->h_source)) {
+		if (unlikely((skb->pkt_type == PACKET_BROADCAST ||
+			      skb->pkt_type == PACKET_MULTICAST) &&
+			     ether_addr_equal(rx_ring->netdev->dev_addr,
+					      eth_hdr(skb)->h_source))) {
 			dev_kfree_skb_irq(skb);
 			continue;
 		}
@@ -889,13 +887,14 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 		/* populate checksum, VLAN, and protocol */
 		ixgbevf_process_skb_fields(rx_ring, rx_desc, skb);
 
+		/* probably a little skewed due to removing CRC */
+		total_rx_bytes += skb->len;
+		total_rx_packets++;
+
 		ixgbevf_rx_skb(q_vector, skb);
 
 		/* reset skb pointer */
 		skb = NULL;
-
-		/* update budget accounting */
-		total_rx_packets++;
 	}
 
 	/* place incomplete frames back on ring for completion */
-- 
2.52.0

