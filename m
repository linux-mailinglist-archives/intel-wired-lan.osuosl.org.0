Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FC861F888
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Nov 2022 17:11:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E3244012F;
	Mon,  7 Nov 2022 16:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E3244012F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667837474;
	bh=0pWbIfnOqnPpESh/ZwUFaui9e48fIE7pbNrq85SyuY4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ud94+yfwdcPnHoOTQtIxj/AhbzA3NPTQY8ueGsmOLG3pwFsuL1uc6nFU/u1Sz6jD9
	 aEbXWoac2gzOs+bVNS2o+RBFGvH8nJ7SB7MkFPyQFSw96z/I7OCnysfo62NM7//yIb
	 +x5EOFfZ7il4TtQRZi1nnYG8kY3v4mxfeerVl3IYmggAtpmgd+u11Htd8DeHzRUiEn
	 Hek8AYZJIhTslVXioO+jrdEvRvC7DYv080smphRLTaOImd79fCnvm9JXmf6OrEy5o+
	 x3xjpaPFMIUGIW4DfGyGmiGqDT79+LL37/svxborBDJw6vtSEWLzqCQtVWBwT8uCWM
	 EN0XXhKv0egbw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OVY0n2RJ-2vc; Mon,  7 Nov 2022 16:11:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11340400D3;
	Mon,  7 Nov 2022 16:11:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11340400D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 443B01BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 16:11:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27FB8400D3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 16:11:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27FB8400D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W41h6krARNdy for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Nov 2022 16:11:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7999940012
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7999940012
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 16:11:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="396746894"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="396746894"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 08:11:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="699527773"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="699527773"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 07 Nov 2022 08:11:01 -0800
Received: from giewont.igk.intel.com (giewont.igk.intel.com [10.211.8.15])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2A7GAvec020487; Mon, 7 Nov 2022 16:10:57 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Nov 2022 17:10:38 +0100
Message-Id: <20221107161038.7097-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667837464; x=1699373464;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ET1VYzYqlW62b9pPCV0WLmsfITh9wLhe+pRtn8yqC9M=;
 b=N08AqAKU1ro56CuI8Q3tZ1M6DQY06aAq10tx0LXWsKNGNINilTi1emCa
 2E7PKykKKsCLuJiUwKcuT0wOmnjlzF/q9ZuWHaUxcwRVnMeXnGQQQZf+W
 Ms1x0g4eCjG2eKc515A0BuATOpIzI2Qfg985UJpV2umomd9W8NRPwbJHp
 GfYEpgP/S4Y6qPkIDHDSFcHPUnTdzmlJu2J25b9cJzI5siPkAverN0Fs+
 sNlUDGEZgYMVzRTbaCcGpCVg9rPiTbTT24ceRegRXFtZ32VBaqYGV/U32
 YGG4mxFxvmGHL9Aa7Wx7WYOglsFIzHShTyW3skMxIMUolcOVOTBZ6zOq5
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N08AqAKU
Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix configuring
 VIRTCHNL_OP_CONFIG_VSI_QUEUES with unbalanced queues
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
Cc: maxime.coquelin@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently the VIRTCHNL_OP_CONFIG_VSI_QUEUES command may fail if there are
less RX queues than TX queues requested.

To fix it, only configure RXDID if RX queue exists.

Fixes: e753df8fbca5 ("ice: Add support Flex RXD")
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 37 +++++++++----------
 1 file changed, 17 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index c1fa94381f4e..d27ddce5d1c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1621,9 +1621,6 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 	for (i = 0; i < qci->num_queue_pairs; i++) {
-		struct ice_hw *hw;
-		u32 rxdid;
-		u16 pf_q;
 		qpi = &qci->qpair[i];
 		if (qpi->txq.vsi_id != qci->vsi_id ||
 		    qpi->rxq.vsi_id != qci->vsi_id ||
@@ -1664,6 +1661,7 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 		/* copy Rx queue info from VF into VSI */
 		if (qpi->rxq.ring_len > 0) {
 			u16 max_frame_size = ice_vc_get_max_frame_size(vf);
+			u32 rxdid;
 
 			vsi->rx_rings[i]->dma = qpi->rxq.dma_ring_addr;
 			vsi->rx_rings[i]->count = qpi->rxq.ring_len;
@@ -1691,26 +1689,25 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 					 vf->vf_id, i);
 				goto error_param;
 			}
-		}
 
-		/* VF Rx queue RXDID configuration */
-		pf_q = vsi->rxq_map[qpi->rxq.queue_id];
-		rxdid = qpi->rxq.rxdid;
-		hw = &vsi->back->hw;
+			/* If Rx flex desc is supported, select RXDID for Rx
+			 * queues. Otherwise, use legacy 32byte descriptor
+			 * format. Legacy 16byte descriptor is not supported.
+			 * If this RXDID is selected, return error.
+			 */
+			if (vf->driver_caps &
+			    VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC) {
+				rxdid = qpi->rxq.rxdid;
+				if (!(BIT(rxdid) & pf->supported_rxdids))
+					goto error_param;
+			} else {
+				rxdid = ICE_RXDID_LEGACY_1;
+			}
 
-		/* If Rx flex desc is supported, select RXDID for Rx queues.
-		 * Otherwise, use legacy 32byte descriptor format.
-		 * Legacy 16byte descriptor is not supported. If this RXDID
-		 * is selected, return error.
-		 */
-		if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC) {
-			if (!(BIT(rxdid) & pf->supported_rxdids))
-				goto error_param;
-		} else {
-			rxdid = ICE_RXDID_LEGACY_1;
+			ice_write_qrxflxp_cntxt(&vsi->back->hw,
+						vsi->rxq_map[q_idx],
+						rxdid, 0x03, false);
 		}
-
-		ice_write_qrxflxp_cntxt(hw, pf_q, rxdid, 0x03, false);
 	}
 
 	/* send the response to the VF */
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
