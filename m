Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FBE68C26F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 17:04:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 680D460B2E;
	Mon,  6 Feb 2023 16:04:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 680D460B2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675699461;
	bh=4svVZ7DuWzdd9CtOcYGXPj62DBSGIRmkXaBWRDSgqtI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KWzmSLf64fORrRsG+kGqDMzAMwnLy8ULvhULnWIGhngJU82ktbsQnK0UlgIqSaJ6J
	 Zn1+xkekNhDmrMW77ulI7McJSzwKeXWygGdPsNAqMlP+fRnbD2rU/ibP2vNQrBAhP5
	 ti9eiJZ7D5hdjhmNV5ERKUDam2okFdyzz5funOklNhkdB6YFDsS+2IGGcfbsyeiNw/
	 YeAEEsRbHdLq+rOjrA7swi13AERbQMmZHTZN7VN75FGY/JPIKmfyiMKCbs43ImtWwT
	 QvIZde960T/gM3x+2IVSRLOQU47SYUZF+F+nWG2yJ44HYgkuacrAgxFwUVHaqGegU6
	 5IapwjOdMWfGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v7X_UTFlt9nq; Mon,  6 Feb 2023 16:04:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EDD960B23;
	Mon,  6 Feb 2023 16:04:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EDD960B23
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 127431BF3E0
 for <intel-wired-lan@osuosl.org>; Mon,  6 Feb 2023 16:04:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DEACC60B23
 for <intel-wired-lan@osuosl.org>; Mon,  6 Feb 2023 16:04:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEACC60B23
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3RstA6MRmEL0 for <intel-wired-lan@osuosl.org>;
 Mon,  6 Feb 2023 16:04:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADE51605A6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ADE51605A6
 for <intel-wired-lan@osuosl.org>; Mon,  6 Feb 2023 16:04:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="330530943"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="330530943"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 08:04:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="809181794"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="809181794"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 06 Feb 2023 08:04:08 -0800
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id F01E233E1E;
 Mon,  6 Feb 2023 16:04:07 +0000 (GMT)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: netdev@vger.kernel.org
Date: Mon,  6 Feb 2023 16:59:12 +0100
Message-Id: <20230206155912.2032457-1-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675699454; x=1707235454;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tsywCx2Puj3tEwthQozDScSn4JJ2oxvtOw+X9d6OgFw=;
 b=KINrW4b8e5XahOvOkdP/z8HcOw62+KHRKzZS0Ghg3i6lMCD5mmV5tdtU
 tGYSITAqgpE9k/MscjyeJtwLvjrZRf4gzb4b0uDFJZ0wiyxK75ZFk3cdh
 zQdGvioiNr5MFec8cFFb6mYvkqDcI++GxHjy/asNXhAOIBG4843J1tkGV
 fsq9p6qAS2bOG7mFTKHdDK0g/OH9JVzUOf68GNEZgoS8Wbs9I0omWuD11
 lHNeWfvrrXETSwlT3HMcoi/eMyhZ7yi8yK99RVRpbNmAUabMTDMyXMtMj
 Au3gTsBQ85OZTHVGmdEbury0VsL+cGIrYVOOKBlc9YaP9dHoYuBwrtHO0
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KINrW4b8
Subject: [Intel-wired-lan] [PATCH 1/1] ice: add support BIG TCP on IPv6
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This change enables sending BIG TCP packets on IPv6 in the ice driver using
generic ipv6_hopopt_jumbo_remove helper for stripping HBH header.

Tested:
netperf -t TCP_RR -H 2001:db8:0:f101::1  -- -r80000,80000 -O MIN_LATENCY,P90_LATENCY,P99_LATENCY,THROUGHPUT

Results varied from one setup to another, but in every case we got lower
latencies and increased transactions rate.

Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      | 2 ++
 drivers/net/ethernet/intel/ice/ice_main.c | 2 ++
 drivers/net/ethernet/intel/ice/ice_txrx.c | 3 +++
 3 files changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 3d26ff4122e0..c774fdd482cd 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -122,6 +122,8 @@
 
 #define ICE_MAX_MTU	(ICE_AQ_SET_MAC_FRAME_SIZE_MAX - ICE_ETH_PKT_HDR_PAD)
 
+#define ICE_MAX_TSO_SIZE 131072
+
 #define ICE_UP_TABLE_TRANSLATE(val, i) \
 		(((val) << ICE_AQ_VSI_UP_TABLE_UP##i##_S) & \
 		  ICE_AQ_VSI_UP_TABLE_UP##i##_M)
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 22b8ad058286..8c74a48ad0d3 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3421,6 +3421,8 @@ static void ice_set_netdev_features(struct net_device *netdev)
 	 * be changed at runtime
 	 */
 	netdev->hw_features |= NETIF_F_RXFCS;
+
+	netif_set_tso_max_size(netdev, ICE_MAX_TSO_SIZE);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index ccf09c957a1c..bef927afb766 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -2297,6 +2297,9 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 
 	ice_trace(xmit_frame_ring, tx_ring, skb);
 
+	if (unlikely(ipv6_hopopt_jumbo_remove(skb)))
+		goto out_drop;
+
 	count = ice_xmit_desc_count(skb);
 	if (ice_chk_linearize(skb, count)) {
 		if (__skb_linearize(skb))
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
