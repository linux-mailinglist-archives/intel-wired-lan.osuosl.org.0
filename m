Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFZHKTBzlGkMEAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 14:54:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A47714CCBE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 14:54:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A988240AEB;
	Tue, 17 Feb 2026 13:54:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A-aFjMIo13yP; Tue, 17 Feb 2026 13:54:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A3A340ADE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771336494;
	bh=tnYL/i72AUR0FA5NMFOJ42Lz/1FUzkSvZavYBFcUb38=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EbQC52KwhELqNTMpFtWd0/1w5ywhx2rSf3S4wYzcMQ1bpYWxHG5pfvozu0u1VVJvL
	 Shx86I+48pU4E9plmrCPEqYf24JhdQMW52ZtvP5RgK8cKjgcICevUvrUr/lEUdE1hV
	 PjZrAbr1kPX6DW0Wk/PrpEigkbULBwyV/12sOCF6WsUmuxJIedJnjggnuFD4vmmG17
	 Aw1p+7YOmsjer1Gu74J5Rz3lAHfQ4swosBhP3O8vhOUII28byGsHkLzYVkSj4xKMWG
	 e1jyglGyrVz/k3IiwpxBxjvyDLCY3RvTEorht9x4SgmCXrJ8rJDh4A6+vX0CrbS3Tx
	 +g49TYSJSiOhw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A3A340ADE;
	Tue, 17 Feb 2026 13:54:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E070B206
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 13:54:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CE6BA80E66
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 13:54:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d0EaxKFWtmbE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Feb 2026 13:54:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BC8A980E5C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC8A980E5C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BC8A980E5C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 13:54:50 +0000 (UTC)
X-CSE-ConnectionGUID: zBxXCYNISY2Y/mdtxMKCrQ==
X-CSE-MsgGUID: BVfVQdWGTaGwjH2yl1Ifvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="72470460"
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; d="scan'208";a="72470460"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 05:54:50 -0800
X-CSE-ConnectionGUID: 6OsvV+O0RIieNkT8AAeg/w==
X-CSE-MsgGUID: ftAtZ2DTS7eQf25ElQGWkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; d="scan'208";a="213904652"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 17 Feb 2026 05:54:41 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 1C1C928795;
 Tue, 17 Feb 2026 13:54:38 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>,
 Clark Wang <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>,
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 "Bastien Curutchet (eBPF Foundation)" <bastien.curutchet@bootlin.com>,
 Tushar Vyavahare <tushar.vyavahare@intel.com>,
 Jason Xing <kernelxing@tencent.com>,
 =?UTF-8?q?Ricardo=20B=2E=20Marli=C3=A8re?= <rbm@suse.com>,
 Eelco Chaudron <echaudro@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Toke Hoiland-Jorgensen <toke@redhat.com>, imx@lists.linux.dev,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Dragos Tatulea <dtatulea@nvidia.com>
Date: Tue, 17 Feb 2026 14:24:43 +0100
Message-ID: <20260217132450.1936200-6-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260217132450.1936200-1-larysa.zaremba@intel.com>
References: <20260217132450.1936200-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771336491; x=1802872491;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xn1XKEnqEO3bO9oNkjypFpVlWOWknkEzwjahmIcNFWY=;
 b=k5K7CVessji0YG+sPV2AIAGGv7+WjnuhM9xzthE2mBNEFrVA/qCSU8/D
 vLaHg46aGfHec7UoaziQ3EL0Df18gKxPjrRlfGY9Sn0fmMU+r2xWBREBw
 z+bZ8zfsfNfnTnLaScER2yBFA1JThm3PWvGj/S3Ys2kRSZnTOTvt+PGSD
 fXuw64JLPuTRnZEtpHl70onXmQ3oEwCENadggyHVIrnbuwJ8V8CMU41fC
 E+WJ1rGCuy6pFJJaJhVnMzYW2Ivaw8zmNwZwEGjBbCzkna/ZMZYFzMUdf
 XX3Z/3YsYdLskgzfw+hevN/ndG7vsUfqFsJH1MDFk36Ci4aaHlIX8/j5V
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k5K7CVes
Subject: [Intel-wired-lan] [PATCH bpf v3 5/9] i40e: fix registering XDP RxQ
 info
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[44];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:bpf@vger.kernel.org,m:larysa.zaremba@intel.com,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktiono
 v@intel.com,m:dtatulea@nvidia.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,vger.kernel.org,lists.osuosl.org,nvidia.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 2A47714CCBE
X-Rspamd-Action: no action

Current way of handling XDP RxQ info in i40e has following problems:
* when xsk_buff_pool is detached, memory model is not unregistered before
  registering a new one, this leads to a dangling xsk_buff_pool in the
  memory model table
* frag_size is not updated when xsk_buff_pool is detached or when MTU is
  changed, this leads to growing tail always failing for multi-buffer
  packets.

Couple XDP RxQ info registering with buffer allocations and unregistering
with cleaning the ring.

Fixes: a045d2f2d03d ("i40e: set xdp_rxq_info::frag_size")
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 34 ++++++++++++---------
 drivers/net/ethernet/intel/i40e/i40e_txrx.c |  5 +--
 2 files changed, 22 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index d3bc3207054f..eaa5b65e6daf 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3577,18 +3577,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 	if (ring->vsi->type != I40E_VSI_MAIN)
 		goto skip;
 
-	if (!xdp_rxq_info_is_reg(&ring->xdp_rxq)) {
-		err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
-					 ring->queue_index,
-					 ring->q_vector->napi.napi_id,
-					 ring->rx_buf_len);
-		if (err)
-			return err;
-	}
-
 	ring->xsk_pool = i40e_xsk_pool(ring);
 	if (ring->xsk_pool) {
-		xdp_rxq_info_unreg(&ring->xdp_rxq);
 		ring->rx_buf_len = xsk_pool_get_rx_frame_size(ring->xsk_pool);
 		err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
 					 ring->queue_index,
@@ -3600,17 +3590,23 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 						 MEM_TYPE_XSK_BUFF_POOL,
 						 NULL);
 		if (err)
-			return err;
+			goto unreg_xdp;
 		dev_info(&vsi->back->pdev->dev,
 			 "Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring %d\n",
 			 ring->queue_index);
 
 	} else {
+		err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
+					 ring->queue_index,
+					 ring->q_vector->napi.napi_id,
+					 ring->rx_buf_len);
+		if (err)
+			return err;
 		err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
 						 MEM_TYPE_PAGE_SHARED,
 						 NULL);
 		if (err)
-			return err;
+			goto unreg_xdp;
 	}
 
 skip:
@@ -3648,7 +3644,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 		dev_info(&vsi->back->pdev->dev,
 			 "Failed to clear LAN Rx queue context on Rx ring %d (pf_q %d), error: %d\n",
 			 ring->queue_index, pf_q, err);
-		return -ENOMEM;
+		err = -ENOMEM;
+		goto unreg_xdp;
 	}
 
 	/* set the context in the HMC */
@@ -3657,7 +3654,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 		dev_info(&vsi->back->pdev->dev,
 			 "Failed to set LAN Rx queue context on Rx ring %d (pf_q %d), error: %d\n",
 			 ring->queue_index, pf_q, err);
-		return -ENOMEM;
+		err = -ENOMEM;
+		goto unreg_xdp;
 	}
 
 	/* configure Rx buffer alignment */
@@ -3665,7 +3663,8 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 		if (I40E_2K_TOO_SMALL_WITH_PADDING) {
 			dev_info(&vsi->back->pdev->dev,
 				 "2k Rx buffer is too small to fit standard MTU and skb_shared_info\n");
-			return -EOPNOTSUPP;
+			err = -EOPNOTSUPP;
+			goto unreg_xdp;
 		}
 		clear_ring_build_skb_enabled(ring);
 	} else {
@@ -3695,6 +3694,11 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 	}
 
 	return 0;
+unreg_xdp:
+	if (ring->vsi->type == I40E_VSI_MAIN)
+		xdp_rxq_info_unreg(&ring->xdp_rxq);
+
+	return err;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index cc0b9efc2637..816179c7e271 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1470,6 +1470,9 @@ void i40e_clean_rx_ring(struct i40e_ring *rx_ring)
 	if (!rx_ring->rx_bi)
 		return;
 
+	if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
+		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
+
 	if (rx_ring->xsk_pool) {
 		i40e_xsk_clean_rx_ring(rx_ring);
 		goto skip_free;
@@ -1527,8 +1530,6 @@ void i40e_clean_rx_ring(struct i40e_ring *rx_ring)
 void i40e_free_rx_resources(struct i40e_ring *rx_ring)
 {
 	i40e_clean_rx_ring(rx_ring);
-	if (rx_ring->vsi->type == I40E_VSI_MAIN)
-		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 	rx_ring->xdp_prog = NULL;
 	kfree(rx_ring->rx_bi);
 	rx_ring->rx_bi = NULL;
-- 
2.52.0

