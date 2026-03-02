Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLViOKW/pWknFgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 17:49:41 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D6D1DD394
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 17:49:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2770F60FBE;
	Mon,  2 Mar 2026 16:49:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xLMI_llWZ5Lr; Mon,  2 Mar 2026 16:49:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C77F6129A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772470179;
	bh=2ICFW1nzu2KNzC6BeuA8KssapsUQi7bO2Ic8enNzVqo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KXMjyudTJIqTdzcLv6fBfhwsWNMYmx/ZMMdzX5XoZJi0AqTb3WhNci+gMVo3LRXDp
	 ViMqQnrEYaa/uoEK0CsgDqsP8bPT1gKqgSc12EiY38PUmk/aJkJ51s8ciCHvF18KFe
	 z6y1UcSowMa/H4b1p89mg/AygYow+LamMW3xeaTf8MuGyduolFMyxT/wd9bR71Idtc
	 qDlUUpIsZyIL0sxAjP5vGoo22lgu/PehT7HMRL0nyKVRN+36ce6TpLN5iRSBtRNH+y
	 eIfkm1CyIf7zx7qd94Q1HDBjeZGJ+Pf7/R6IZO2EBtLvQMttjtL/QBucLfWEVNjppY
	 MBxrfNXHWO9aw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C77F6129A;
	Mon,  2 Mar 2026 16:49:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C7BFA1EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 16:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B9F0360FBA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 16:49:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FwT1lfF6Rmxx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 16:49:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1021E608A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1021E608A7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1021E608A7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 16:49:37 +0000 (UTC)
X-CSE-ConnectionGUID: 5SWWnMVkRFe2eHO6hKYDDw==
X-CSE-MsgGUID: NUlh+pyGQgaVNaoyV1EWNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="76087542"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="76087542"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 08:49:37 -0800
X-CSE-ConnectionGUID: l/C0r+qmQgmwdoq6Dku1zw==
X-CSE-MsgGUID: d7vQc8llQvq4cTwHyD4r6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="216946842"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa010.jf.intel.com with ESMTP; 02 Mar 2026 08:49:28 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 8441A312C7;
 Mon,  2 Mar 2026 16:49:25 +0000 (GMT)
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
Date: Mon,  2 Mar 2026 17:17:16 +0100
Message-ID: <20260302161723.858616-4-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260302161723.858616-1-larysa.zaremba@intel.com>
References: <20260302161723.858616-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772470178; x=1804006178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kc4vKfuI/ivt29/KpwroNogeTpVKMn5NqVdgQ7YSzr8=;
 b=YkpwiHuszuh1dUGH6+Ej+PCJ2vWBp4Mq8OjV8icnmdbqzqGi5UYajdky
 fbPydNI61fwwBcnvrYQmB5Y21A01ejka9584mJRBk47/7h3EIrwvMliaz
 37eJtqfSQxkFjbHdcltLxwJCluDT/pMCEE8EQWUCnIT1eI6z88bVCdq1B
 0UQSFY56Oto0L8uL4BQjn6fOW+d43UwB0PviZzUohT/J4gPntAHhSx0wO
 Wl0A4CqqqXzDkHJykwfVcMEaXLmzHOh6EXfHQoU3dM22oQzFjFgcLNEEP
 rK4EPFLC7v4u6PyJb0DcDFqKaF0N7f+MWWwvxa363KqQo35nBWHB80+Hn
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YkpwiHus
Subject: [Intel-wired-lan] [PATCH bpf v4 3/9] ice: fix rxq info registering
 in mbuf packets
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
X-Rspamd-Queue-Id: 78D6D1DD394
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[44];
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
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

XDP RxQ info contains frag_size, which depends on the MTU. This makes the
old way of registering RxQ info before calculating new buffer sizes
invalid. Currently, it leads to frag_size being outdated, making it
sometimes impossible to grow tailroom in a mbuf packet. E.g. fragments are
actually 3K+, but frag size is still as if MTU was 1500.

Always register new XDP RxQ info after reconfiguring memory pools.

Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c    | 26 ++++++--------------
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  1 +
 drivers/net/ethernet/intel/ice/ice_txrx.c    |  3 ++-
 drivers/net/ethernet/intel/ice/ice_xsk.c     |  3 +++
 4 files changed, 13 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index eb77dfa934aa..7a5468db6a67 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -663,23 +663,12 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 	int err;
 
 	if (ring->vsi->type == ICE_VSI_PF || ring->vsi->type == ICE_VSI_SF) {
-		if (!xdp_rxq_info_is_reg(&ring->xdp_rxq)) {
-			err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
-						 ring->q_index,
-						 ring->q_vector->napi.napi_id,
-						 ring->rx_buf_len);
-			if (err)
-				return err;
-		}
-
 		ice_rx_xsk_pool(ring);
 		err = ice_realloc_rx_xdp_bufs(ring, ring->xsk_pool);
 		if (err)
 			return err;
 
 		if (ring->xsk_pool) {
-			xdp_rxq_info_unreg(&ring->xdp_rxq);
-
 			rx_buf_len =
 				xsk_pool_get_rx_frame_size(ring->xsk_pool);
 			err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
@@ -702,14 +691,13 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 			if (err)
 				return err;
 
-			if (!xdp_rxq_info_is_reg(&ring->xdp_rxq)) {
-				err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
-							 ring->q_index,
-							 ring->q_vector->napi.napi_id,
-							 ring->rx_buf_len);
-				if (err)
-					goto err_destroy_fq;
-			}
+			err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
+						 ring->q_index,
+						 ring->q_vector->napi.napi_id,
+						 ring->rx_buf_len);
+			if (err)
+				goto err_destroy_fq;
+
 			xdp_rxq_info_attach_page_pool(&ring->xdp_rxq,
 						      ring->pp);
 		}
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 0ea64b330614..ca4fcd6b5117 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3338,6 +3338,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 		rx_rings[i].cached_phctime = pf->ptp.cached_phc_time;
 		rx_rings[i].desc = NULL;
 		rx_rings[i].xdp_buf = NULL;
+		rx_rings[i].xdp_rxq = (struct xdp_rxq_info){ };
 
 		/* this is to allow wr32 to have something to write to
 		 * during early allocation of Rx buffers
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index a5bbce68f76c..5fbff85aaa6e 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -560,7 +560,8 @@ void ice_clean_rx_ring(struct ice_rx_ring *rx_ring)
 			i = 0;
 	}
 
-	if (rx_ring->vsi->type == ICE_VSI_PF &&
+	if ((rx_ring->vsi->type == ICE_VSI_PF ||
+	     rx_ring->vsi->type == ICE_VSI_SF) &&
 	    xdp_rxq_info_is_reg(&rx_ring->xdp_rxq)) {
 		xdp_rxq_info_detach_mem_model(&rx_ring->xdp_rxq);
 		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index c673094663a3..0643017541c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -899,6 +899,9 @@ void ice_xsk_clean_rx_ring(struct ice_rx_ring *rx_ring)
 	u16 ntc = rx_ring->next_to_clean;
 	u16 ntu = rx_ring->next_to_use;
 
+	if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
+		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
+
 	while (ntc != ntu) {
 		struct xdp_buff *xdp = *ice_xdp_buf(rx_ring, ntc);
 
-- 
2.52.0

