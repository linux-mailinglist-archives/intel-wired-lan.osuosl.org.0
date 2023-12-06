Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D39F8063E7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 02:02:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED2F961442;
	Wed,  6 Dec 2023 01:02:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED2F961442
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701824550;
	bh=xpX4xAtFwBz7uvS5cs3gEDu8vXcMVbSnokoSZwUpi3s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6eLuiEytYQjq+4pfpF3K3woGPjn2/oOUlM0iThvhCwww1h4Ttcvfja24mCGQqR4EQ
	 1jkkIYUU+kimekChtDFlWEA+gTt6JEZoGsVCIZDpKyb/BP+mMRvrZw9a9W/KgflLd/
	 44LUWdwprNyq/deShZ30zPpJM2RAxe6l/o+4fs+iULtgR4De+zybTuLllfBZduKuvT
	 MRqVuJz42WdIvGkCkWmDwiRjlPdHMOCzJ/FD1Chw6D64Hzx9xuuvqBnEvCWzcFyXYR
	 JZ3unHEY3ODKiUbB9p2lG7vAGB/OHj15j+IpaejbGpINMiMQX8iObRu9ezoy5JAPDh
	 Ocszt8yroCN+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nJJot8kpoonq; Wed,  6 Dec 2023 01:02:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90C8D6141A;
	Wed,  6 Dec 2023 01:02:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90C8D6141A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 85DB81BF97D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 092CC82C5E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 092CC82C5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AnzgchlUjz5m for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 01:01:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BD4A8229D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BD4A8229D
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="12700325"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="12700325"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="841655283"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="841655283"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:35 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Dec 2023 17:01:11 -0800
Message-Id: <20231206010114.2259388-13-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701824497; x=1733360497;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r8lWu9gNBkUsZSd6it0SarezI/ivZlZxd38l3b9PCII=;
 b=oHvDsVV3p430j2vATchFAvzaCAsYZ+gnTAQAV8786po1iXHkxM0/i73x
 hvFqcYhZtKV4mrxoFu3r+1taqY4iEp6SzVFIJO8uhpUvvS0TA9YMZ5tqA
 PVJRgIGl8rm2HK49BeQFIyocolPlwt1cGC5ffzoT4kJVHbdeE2QxTU22u
 rNfdP1HBBPvEjfHkDMii1kFDPU5mUtj7Cc86ZxMxrfeNfKQRsexbpsVfl
 w3I8ET9fwclW7OUNFbbxaWCqU6t6MGaWJ7wDajp/tyQF/9onYd278cIFy
 DfN/cf54nBE+5k3uUyEdRYcphqRSxm695DgCOfC4WJX1wMLfNOsF3r46d
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oHvDsVV3
Subject: [Intel-wired-lan] [PATCH iwl-next v2 12/15] iavf: field get
 conversion
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
Cc: przemyslaw.kitszel@intel.com, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Julia Lawall <Julia.Lawall@inria.fr>, aleksander.lobakin@intel.com,
 marcin.szycik@linux.intel.com, horms@kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactor the iavf driver to use FIELD_GET() for mask and shift reads,
which reduces lines of code and adds clarity of intent.

This code was generated by the following coccinelle/spatch script and
then manually repaired in a later patch.

@get@
constant shift,mask;
type T;
expression a;
@@
-((T)((a) & mask) >> shift)
+FIELD_GET(mask, a)

and applied via:
spatch --sp-file field_prep.cocci --in-place --dir \
 drivers/net/ethernet/intel/

Cc: Julia Lawall <Julia.Lawall@inria.fr>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  3 +--
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 20 +++++++------------
 2 files changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 11150bdc63d0..90d8f1fcc3aa 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1020,8 +1020,7 @@ iavf_parse_rx_flow_user_data(struct ethtool_rx_flow_spec *fsp,
 #define IAVF_USERDEF_FLEX_MAX_OFFS_VAL 504
 		flex = &fltr->flex_words[cnt++];
 		flex->word = value & IAVF_USERDEF_FLEX_WORD_M;
-		flex->offset = (value & IAVF_USERDEF_FLEX_OFFS_M) >>
-			     IAVF_USERDEF_FLEX_OFFS_S;
+		flex->offset = FIELD_GET(IAVF_USERDEF_FLEX_OFFS_M, value);
 		if (flex->offset > IAVF_USERDEF_FLEX_MAX_OFFS_VAL)
 			return -EINVAL;
 	}
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index fb7edba9c2f8..b71484c87a84 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -989,11 +989,9 @@ static void iavf_rx_checksum(struct iavf_vsi *vsi,
 	u64 qword;
 
 	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
-	ptype = (qword & IAVF_RXD_QW1_PTYPE_MASK) >> IAVF_RXD_QW1_PTYPE_SHIFT;
-	rx_error = (qword & IAVF_RXD_QW1_ERROR_MASK) >>
-		   IAVF_RXD_QW1_ERROR_SHIFT;
-	rx_status = (qword & IAVF_RXD_QW1_STATUS_MASK) >>
-		    IAVF_RXD_QW1_STATUS_SHIFT;
+	ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
+	rx_error = FIELD_GET(IAVF_RXD_QW1_ERROR_MASK, qword);
+	rx_status = FIELD_GET(IAVF_RXD_QW1_STATUS_MASK, qword);
 	decoded = decode_rx_desc_ptype(ptype);
 
 	skb->ip_summed = CHECKSUM_NONE;
@@ -1534,8 +1532,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		if (!iavf_test_staterr(rx_desc, IAVF_RXD_DD))
 			break;
 
-		size = (qword & IAVF_RXD_QW1_LENGTH_PBUF_MASK) >>
-		       IAVF_RXD_QW1_LENGTH_PBUF_SHIFT;
+		size = FIELD_GET(IAVF_RXD_QW1_LENGTH_PBUF_MASK, qword);
 
 		iavf_trace(clean_rx_irq, rx_ring, rx_desc, skb);
 		rx_buffer = iavf_get_rx_buffer(rx_ring, size);
@@ -1582,8 +1579,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
 		total_rx_bytes += skb->len;
 
 		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
-		rx_ptype = (qword & IAVF_RXD_QW1_PTYPE_MASK) >>
-			   IAVF_RXD_QW1_PTYPE_SHIFT;
+		rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
 
 		/* populate checksum, VLAN, and protocol */
 		iavf_process_skb_fields(rx_ring, rx_desc, skb, rx_ptype);
@@ -2291,8 +2287,7 @@ static void iavf_tx_map(struct iavf_ring *tx_ring, struct sk_buff *skb,
 
 	if (tx_flags & IAVF_TX_FLAGS_HW_VLAN) {
 		td_cmd |= IAVF_TX_DESC_CMD_IL2TAG1;
-		td_tag = (tx_flags & IAVF_TX_FLAGS_VLAN_MASK) >>
-			 IAVF_TX_FLAGS_VLAN_SHIFT;
+		td_tag = FIELD_GET(IAVF_TX_FLAGS_VLAN_MASK, tx_flags);
 	}
 
 	first->tx_flags = tx_flags;
@@ -2468,8 +2463,7 @@ static netdev_tx_t iavf_xmit_frame_ring(struct sk_buff *skb,
 	if (tx_flags & IAVF_TX_FLAGS_HW_OUTER_SINGLE_VLAN) {
 		cd_type_cmd_tso_mss |= IAVF_TX_CTX_DESC_IL2TAG2 <<
 			IAVF_TXD_CTX_QW1_CMD_SHIFT;
-		cd_l2tag2 = (tx_flags & IAVF_TX_FLAGS_VLAN_MASK) >>
-			IAVF_TX_FLAGS_VLAN_SHIFT;
+		cd_l2tag2 = FIELD_GET(IAVF_TX_FLAGS_VLAN_MASK, tx_flags);
 	}
 
 	/* obtain protocol of skb */
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
