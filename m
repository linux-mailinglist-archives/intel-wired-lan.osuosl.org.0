Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF06651F21B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 May 2022 03:09:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4F50409DC;
	Mon,  9 May 2022 01:09:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RDTi2gN9SETm; Mon,  9 May 2022 01:09:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8A0A4049A;
	Mon,  9 May 2022 01:09:18 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D3C71BF387
 for <intel-wired-lan@osuosl.org>; Mon,  9 May 2022 01:09:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D7FE402FB
 for <intel-wired-lan@osuosl.org>; Mon,  9 May 2022 01:09:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id If4eErAGw-sk for <intel-wired-lan@osuosl.org>;
 Mon,  9 May 2022 01:09:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3271D402F8
 for <intel-wired-lan@osuosl.org>; Mon,  9 May 2022 01:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652058553; x=1683594553;
 h=from:to:cc:subject:date:message-id;
 bh=+oTIm1pxKpiWkqOUA3dMeiA5LerdeFwY/K4gMxGPygo=;
 b=dFBz9m7HX8etIzXAcRWrpkaz9mlhKBplf5ivXMYU1OEpcDCDU8MMTAmi
 d3I7MVvM6UfEaaA75nKsrcBbft69oF17EHoiZO5qLLvPlB6ZbzPdlpkB5
 XJULQNsendgqBv0WdQrI2Yj8Fk4qiF+o9P19x5yAFye0jWRQcndzE/4+p
 VFBWMIgFLELGyuivPSgCHOtks6R+emwFQkWF86GCv/YxE4c/sWncm5HU7
 lkI1a9cOqwOvkgE8pS0MdA9FrdSL+z7m6aonc3k1ji4sDm+rDJDk8lX/d
 k0EFmM4++CGpcjQwT20cnAO1t4cA4yb1wTcRUO9/JYsu+BfsbJkZjIw45 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="250940471"
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="250940471"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2022 18:09:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="518955320"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.114])
 by orsmga003.jf.intel.com with ESMTP; 08 May 2022 18:09:10 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon,  9 May 2022 09:08:47 +0800
Message-Id: <20220509010847.17492-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH] igc: Correct the launchtime offset
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
Cc: muhammad.husaini.zulkifli@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The launchtime offset can be corrected according to sections 7.5.2.6
and 12.3.2 of the datasheet.

Based on the preliminary data, this correction is roughly 1500ns.
In the future, proper measurements must be taken, and corrections must take
into account the various link speeds.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_regs.h |  1 +
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 14 ++++++++++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index e197a33d93a0..928d22b1ca22 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -231,6 +231,7 @@
 #define IGC_BASET_H		0x3318
 #define IGC_QBVCYCLET		0x331C
 #define IGC_QBVCYCLET_S		0x3320
+#define IGC_GTXOFFSET		0x3310
 
 #define IGC_STQT(_n)		(0x3324 + 0x4 * (_n))
 #define IGC_ENDQT(_n)		(0x3334 + 0x4 * (_n))
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 0fce22de2ab8..3d4d0ab011e3 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -84,12 +84,26 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	struct igc_hw *hw = &adapter->hw;
 	u32 tqavctrl, baset_l, baset_h;
 	u32 sec, nsec, cycle;
+	u16 tx_offset;
 	ktime_t base_time, systim;
 	int i;
 
 	cycle = adapter->cycle_time;
 	base_time = adapter->base_time;
 
+	switch (adapter->link_speed) {
+	/* TODO: This code use same transmit offset across all link speed as for now. */
+	case SPEED_10:
+	case SPEED_100:
+	case SPEED_1000:
+	case SPEED_2500:
+		tx_offset = 1500;
+		break;
+	default:
+		break;
+	}
+
+	wr32(IGC_GTXOFFSET, tx_offset);
 	wr32(IGC_TSAUXC, 0);
 	wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_TSN);
 	wr32(IGC_TXPBS, IGC_TXPBSIZE_TSN);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
