Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C07B694385
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Feb 2023 11:55:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BDA8813F1;
	Mon, 13 Feb 2023 10:55:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BDA8813F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676285727;
	bh=XRLkj8bJ+iU1lTVTMWufqsT60+ttw1+VHh/s2cAq6K0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CRQQdo4PNB5768GYC7RZtqZawgO/jPs+LKHW2LjuBO3TMFTNFTFId+vTmA8cNf+lx
	 qYSN7aDNrDQLkxxAJt1aW1cDTx6KU5TSDtXLAKxkntn35sqW7nnmV79wAPRkhO1Tfd
	 J2fy4wLkjaR/oAu6/g92ADy0MGtGz66UJ/HkE1ZYR1DrNAVBSDXZUORUZ7e5Fd+Wcq
	 0gT2wlALC/wqdubHaoQX3UWCHgMQiZBA3AakUt+kmVIe3YAplKDLCCG4tlCrqD8skn
	 ImFQcqyC25HJPxio3c+4SJ9vmqwahzSSN0KWjb3oHiIZgDa00o9ubFlFtZrKPt0bIG
	 KJ4nx3VW/qJRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Orc3R-WfnXAH; Mon, 13 Feb 2023 10:55:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7049C813E3;
	Mon, 13 Feb 2023 10:55:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7049C813E3
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B5FCE1BF59D
 for <intel-wired-lan@osuosl.org>; Mon, 13 Feb 2023 10:55:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E767813E3
 for <intel-wired-lan@osuosl.org>; Mon, 13 Feb 2023 10:55:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E767813E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q9ShnK-o-uEN for <intel-wired-lan@osuosl.org>;
 Mon, 13 Feb 2023 10:55:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFACB80CE3
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BFACB80CE3
 for <intel-wired-lan@osuosl.org>; Mon, 13 Feb 2023 10:55:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="358272968"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="358272968"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 02:55:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="842723777"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="842723777"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orsmga005.jf.intel.com with ESMTP; 13 Feb 2023 02:55:18 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 13 Feb 2023 11:40:04 +0100
Message-Id: <20230213104003.30413-1-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676285720; x=1707821720;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B9qe7pjTaZrrGIFjxRLpKnR4sUOpVGcsqvodmxNzzQk=;
 b=agMg+WiDr4a3ZeGTepxER6rtOtk3+6syt3VmSEg8aDi/DjC5k3B1mMBM
 vUxD2HyAfwu+x2d1bB/Phokbq6M8zg2uz0ffPDSzh7aOs++zKtN7xg3jO
 VwgkQL4iXnv10LPzpGY+vc8zwecKwIMkYsaI/hqnZvwUyKnD+kM6PCeWj
 oqh0Bf2cE0EZWq4Q8tl5ZFEGeiZoSOqrTnYpX9ZxY5AnLUBf3lGT4CBZD
 IzluhdSQb/eYn/lbKSgcC2VmsCICg69gxoF95nFPrOcCySDcpPHtfjkpw
 0ryRZcy5I1MoYSGJeuo5PpJQdldv4DySZgypIvWLSjyuTUu/x1F38u0Gi
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=agMg+WiD
Subject: [Intel-wired-lan] [PATCH net] ice: Fix missing cleanup routine in
 the case of partial memory allocation
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add missing memory free in the case of partial memory allocation
in the loop in ice_realloc_zc_buf function.

Fixes: 7e753eb675f0 ("ice: Fix DMA mappings leak")
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 7105de6fb344..0b025a36e6f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -377,8 +377,16 @@ int ice_realloc_zc_buf(struct ice_vsi *vsi, bool zc)
 	for_each_set_bit(q, vsi->af_xdp_zc_qps,
 			 max_t(int, vsi->alloc_txq, vsi->alloc_rxq)) {
 		rx_ring = vsi->rx_rings[q];
-		if (ice_realloc_rx_xdp_bufs(rx_ring, zc))
+		if (ice_realloc_rx_xdp_bufs(rx_ring, zc)) {
+			unsigned long qid = q;
+
+			for_each_set_bit(q, vsi->af_xdp_zc_qps, qid) {
+				rx_ring = vsi->rx_rings[q];
+				zc ? kfree(rx_ring->xdp_buf) :
+				     kfree(rx_ring->rx_buf);
+			}
 			return -ENOMEM;
+		}
 	}
 
 	return 0;
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
