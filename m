Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9211EE35F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jun 2020 13:25:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4849187C55;
	Thu,  4 Jun 2020 11:25:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TMP6gWBSCUHq; Thu,  4 Jun 2020 11:25:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 79FAC87C5B;
	Thu,  4 Jun 2020 11:25:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C33F61BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 11:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BCC3688778
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 11:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I7mAGciUc3LU for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2020 11:25:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A11C788754
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 11:25:18 +0000 (UTC)
IronPort-SDR: hoYHrteZzZRRzBHSGTb6nHD5UyPVpi/zxrP7d3eYdgCoIyTf42h3Scdyeek+ZyDx6B132xeOiv
 bqqObMw5am3w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 04:25:17 -0700
IronPort-SDR: dFrgID1VTvNy8lbfcTChWAovM1qqXJI+v697cXiDMuXUdfhev1doFKxIQc06ZYSQwZ/2OEXWvH
 d7Z5iCsA612Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="471387948"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jun 2020 04:25:17 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Jun 2020 14:25:16 +0300
Message-Id: <20200604112516.44949-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add LPI counters
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add EEE TX LPI and EEE RX LPI counters. A EEE TX LPI event
occurs when the transmitter enters EEE (IEEE 802.3az) LPI
state. A EEE RX LPI event ocuurs when the receiver detect
link partner entry into EEE(IEEE 802.3az) LPI state.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_mac.c  | 2 ++
 drivers/net/ethernet/intel/igc/igc_regs.h | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index bc077f230f17..f3f7717b6233 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -307,6 +307,8 @@ void igc_clear_hw_cntrs_base(struct igc_hw *hw)
 	rd32(IGC_ICRXDMTC);
 
 	rd32(IGC_RPTHC);
+	rd32(IGC_TLPIC);
+	rd32(IGC_RLPIC);
 	rd32(IGC_HGPTC);
 	rd32(IGC_HGORCL);
 	rd32(IGC_HGORCH);
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index d53f49833db5..eb3e8e70501d 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -188,6 +188,8 @@
 #define IGC_ICTXQEC	0x04118  /* Interrupt Cause Tx Queue Empty Count */
 #define IGC_ICTXQMTC	0x0411C  /* Interrupt Cause Tx Queue Min Thresh Count */
 #define IGC_RPTHC	0x04104  /* Rx Packets To Host */
+#define IGC_TLPIC	0x04148  /* EEE Tx LPI Count */
+#define IGC_RLPIC	0x0414C  /* EEE Rx LPI Count */
 #define IGC_HGPTC	0x04118  /* Host Good Packets Tx Count */
 #define IGC_RXDMTC	0x04120  /* Rx Descriptor Minimum Threshold Count */
 #define IGC_HGORCL	0x04128  /* Host Good Octets Received Count Low */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
