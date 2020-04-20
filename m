Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 301851B078C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2020 13:39:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6276C8357B;
	Mon, 20 Apr 2020 11:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3MoepRA+gkay; Mon, 20 Apr 2020 11:38:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE6BA83C53;
	Mon, 20 Apr 2020 11:38:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E4E301BF429
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2020 11:38:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DF5718357B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2020 11:38:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iT9rnNe9TfdQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Apr 2020 11:38:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0C6818346C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2020 11:38:55 +0000 (UTC)
IronPort-SDR: rRtBlvfTVg3daO+2TELDSU8QKmBl0/oPLMMT+XlsBQNkvaIea2X/LuJgDDoAZbChkLWnJgPLOo
 rDTW9XC82iOQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 04:38:55 -0700
IronPort-SDR: TgLwhj2oFIlUO/m4fmn1eR05GKG7FrDVH4MQEYp4RpQsuDTf6jPNKZqc2fAqY3fKbZWFYqyOmT
 Yn+M2/AyrPzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="290058133"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga002.fm.intel.com with ESMTP; 20 Apr 2020 04:38:54 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 20 Apr 2020 14:38:53 +0300
Message-Id: <20200420113853.35732-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove obsolete circuit
 breaker registers
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

Part of circuit breaker registers is obsolete
and not applicable for i225 device.
This patch comes to clean up these registers.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_mac.c  | 4 ----
 drivers/net/ethernet/intel/igc/igc_regs.h | 7 -------
 2 files changed, 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index 2cd52b5c203d..018548c7e51c 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -307,12 +307,8 @@ void igc_clear_hw_cntrs_base(struct igc_hw *hw)
 	rd32(IGC_ICTXQMTC);
 	rd32(IGC_ICRXDMTC);
 
-	rd32(IGC_CBTMPC);
-	rd32(IGC_HTDPMC);
-	rd32(IGC_CBRMPC);
 	rd32(IGC_RPTHC);
 	rd32(IGC_HGPTC);
-	rd32(IGC_HTCBDPC);
 	rd32(IGC_HGORCL);
 	rd32(IGC_HGORCH);
 	rd32(IGC_HGOTCL);
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 76ec08b082bb..f2989946d9dc 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -68,13 +68,6 @@
 #define IGC_ICRXDMTC		0x04120  /* Rx Descriptor Min Threshold Count */
 #define IGC_ICRXOC		0x04124  /* Receiver Overrun Count */
 
-#define IGC_CBTMPC		0x0402C  /* Circuit Breaker TX Packet Count */
-#define IGC_HTDPMC		0x0403C  /* Host Transmit Discarded Packets */
-#define IGC_CBRMPC		0x040FC  /* Circuit Breaker RX Packet Count */
-#define IGC_RPTHC		0x04104  /* Rx Packets To Host */
-#define IGC_HGPTC		0x04118  /* Host Good Packets TX Count */
-#define IGC_HTCBDPC		0x04124  /* Host TX Circ.Breaker Drop Count */
-
 /* MSI-X Table Register Descriptions */
 #define IGC_PBACL		0x05B68  /* MSIx PBA Clear - R/W 1 to clear */
 
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
