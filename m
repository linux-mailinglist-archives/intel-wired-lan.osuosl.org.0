Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B077C1A5EF5
	for <lists+intel-wired-lan@lfdr.de>; Sun, 12 Apr 2020 16:22:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 61FF1863A4;
	Sun, 12 Apr 2020 14:22:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hReU6LeOF7jY; Sun, 12 Apr 2020 14:22:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8489786398;
	Sun, 12 Apr 2020 14:22:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5CF3D1BF336
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Apr 2020 14:22:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 55D7B863FD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Apr 2020 14:22:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J8Z-r-8BmqTZ for <intel-wired-lan@lists.osuosl.org>;
 Sun, 12 Apr 2020 14:22:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AC78D86372
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Apr 2020 14:22:00 +0000 (UTC)
IronPort-SDR: NWwfXdIRUJczX0jt7WBJ7UCoSAP8iDznPwPnvWrmaAr6wlzxJiqOjM0ri4zPsTgcC5XgPhNDh8
 lBC8eYIrWFAQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2020 07:21:59 -0700
IronPort-SDR: YFBT6dXb1/viNim76NOP+uV3GcVkgaiz+azyA5Fx1Xv9nVBW3SrVqpMQVLlSLmnJOjWfqCtT1Q
 IydYqFWP8O8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,374,1580803200"; d="scan'208";a="331617191"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by orsmga001.jf.intel.com with ESMTP; 12 Apr 2020 07:21:59 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 12 Apr 2020 17:21:58 +0300
Message-Id: <20200412142158.32900-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused registers
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

Tx data FIFO Head/Tail, Saved and Packet Count registers
not applicable for i225 LAN controller.
This patch comes to clean up these registers.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_dump.c | 4 ----
 drivers/net/ethernet/intel/igc/igc_regs.h | 5 -----
 2 files changed, 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_dump.c b/drivers/net/ethernet/intel/igc/igc_dump.c
index d6990d63c8bb..4f1f96c31aa3 100644
--- a/drivers/net/ethernet/intel/igc/igc_dump.c
+++ b/drivers/net/ethernet/intel/igc/igc_dump.c
@@ -35,10 +35,6 @@ static const struct igc_reg_info igc_reg_info_tbl[] = {
 	{IGC_TDH(0), "TDH"},
 	{IGC_TDT(0), "TDT"},
 	{IGC_TXDCTL(0), "TXDCTL"},
-	{IGC_TDFH, "TDFH"},
-	{IGC_TDFT, "TDFT"},
-	{IGC_TDFHS, "TDFHS"},
-	{IGC_TDFPC, "TDFPC"},
 
 	/* List Terminator */
 	{}
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 1cbd428adfbe..76ec08b082bb 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -17,11 +17,6 @@
 /* Internal Packet Buffer Size Registers */
 #define IGC_RXPBS		0x02404  /* Rx Packet Buffer Size - RW */
 #define IGC_TXPBS		0x03404  /* Tx Packet Buffer Size - RW */
-#define IGC_TDFH		0x03410  /* Tx Data FIFO Head - RW */
-#define IGC_TDFT		0x03418  /* Tx Data FIFO Tail - RW */
-#define IGC_TDFHS		0x03420  /* Tx Data FIFO Head Saved - RW */
-#define IGC_TDFTS		0x03428  /* Tx Data FIFO Tail Saved - RW */
-#define IGC_TDFPC		0x03430  /* Tx Data FIFO Packet Count - RW */
 
 /* NVM  Register Descriptions */
 #define IGC_EERD		0x12014  /* EEprom mode read - RW */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
