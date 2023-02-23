Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F7A6A031D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Feb 2023 08:03:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 080628148E;
	Thu, 23 Feb 2023 07:03:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 080628148E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677135838;
	bh=aJE+VtS/LMl1K1otDXp5e/pQi54Nhj5h+tgrh6YrIkg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KUeOTcxHKp7+YRWq7bh2eObHzIcwfWdmq4ZnMMb/QQBkoJ0YARljZjFzxl+lTHHWs
	 Ti60dJkf8Nozmtrlg1Zr+lqfC2RVw21poqunmo2hYsmgQfZXtOniivS/2RXGj0A43u
	 tZDvHyABMYxkcHH/9ZqB1WyqDIR3xWzzkZ63XIGNvyDTD00KfTIkuU7nX5HS6/mXTp
	 eWUtWN5kIEJ8xQToGKvq990iRrhhh3/7mtjDuw2OCpRvMCichBkf/LSXhuPi3YNIBM
	 HiQBiy7AvTitO7WfOPts5VbQ1S72qAn7OaCXzWa+5E9HOJlYIJaCk4kiKtrh0l1E/c
	 5dtBEtzFWvFrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kPcO4blzpzZT; Thu, 23 Feb 2023 07:03:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD99981490;
	Thu, 23 Feb 2023 07:03:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD99981490
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8BABD1BF842
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 07:03:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 70C9B8148B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 07:03:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70C9B8148B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ED3bRZ7w9tZK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Feb 2023 07:03:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D8AB8146D
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D8AB8146D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 07:03:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360624606"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="360624606"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 23:03:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="796193429"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="796193429"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.129])
 by orsmga004.jf.intel.com with ESMTP; 22 Feb 2023 23:03:21 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 23 Feb 2023 09:03:17 +0200
Message-Id: <20230223070317.3258883-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677135830; x=1708671830;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=thzpsDGNcUxZ+piStdfWHdvEhkTNSB/KsIEko13gzcE=;
 b=EQ9TI1+dwJ2lGbuUkUoWKdZ2H/8tLnSoqpATMj5WH//xLW9GL371Zy8q
 4z1x6OAqTWkk2nFA0O1T3KKQsp4JqaGGiT1uRnqD3joXE9qtzAZ6sAIir
 rs5h4r311AvkMuCXKRSq6jbCLJY7xfCT0Ka3a0rNTL4UXHl9pyZlQ0olD
 YgUv8yhX2UiLrKq1ixzqubZ6MkGQnJrsMnkBDSV7f/w7rNV54stWPsclo
 xLGS/baSacSxs8BmQXYTN4kY1fyi8vL0YoeNrwPh7v2JXpFALuCXpVCxZ
 aS7JPi8miEY01PPqswUJ5sy/3Ho2yP+apazvltDC5du3cUiX2ckQ26gvR
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EQ9TI1+d
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove obsolete DMA
 coalescing code
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DMA coalescing is not applicable for i225 parts. This patch comes to tidy
up the driver code.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h |  3 ---
 drivers/net/ethernet/intel/igc/igc_i225.c    | 19 +++++--------------
 drivers/net/ethernet/intel/igc/igc_regs.h    |  1 -
 3 files changed, 5 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 9dec3563ce3a..44a507029946 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -662,9 +662,6 @@
  */
 #define IGC_TW_SYSTEM_100_MASK		0x0000FF00
 #define IGC_TW_SYSTEM_100_SHIFT		8
-#define IGC_DMACR_DMAC_EN		0x80000000 /* Enable DMA Coalescing */
-#define IGC_DMACR_DMACTHR_MASK		0x00FF0000
-#define IGC_DMACR_DMACTHR_SHIFT		16
 /* Reg val to set scale to 1024 nsec */
 #define IGC_LTRMINV_SCALE_1024		2
 /* Reg val to set scale to 32768 nsec */
diff --git a/drivers/net/ethernet/intel/igc/igc_i225.c b/drivers/net/ethernet/intel/igc/igc_i225.c
index 59d5c467ea6e..17546a035ab1 100644
--- a/drivers/net/ethernet/intel/igc/igc_i225.c
+++ b/drivers/net/ethernet/intel/igc/igc_i225.c
@@ -593,20 +593,11 @@ s32 igc_set_ltr_i225(struct igc_hw *hw, bool link)
 		size = rd32(IGC_RXPBS) &
 		       IGC_RXPBS_SIZE_I225_MASK;
 
-		/* Calculations vary based on DMAC settings. */
-		if (rd32(IGC_DMACR) & IGC_DMACR_DMAC_EN) {
-			size -= (rd32(IGC_DMACR) &
-				 IGC_DMACR_DMACTHR_MASK) >>
-				 IGC_DMACR_DMACTHR_SHIFT;
-			/* Convert size to bits. */
-			size *= 1024 * 8;
-		} else {
-			/* Convert size to bytes, subtract the MTU, and then
-			 * convert the size to bits.
-			 */
-			size *= 1024;
-			size *= 8;
-		}
+		/* Convert size to bytes, subtract the MTU, and then
+		 * convert the size to bits.
+		 */
+		size *= 1024;
+		size *= 8;
 
 		if (size < 0) {
 			hw_dbg("Invalid effective Rx buffer size %d\n",
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 01c86d36856d..dba5a5759b1c 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -292,7 +292,6 @@
 
 /* LTR registers */
 #define IGC_LTRC	0x01A0 /* Latency Tolerance Reporting Control */
-#define IGC_DMACR	0x02508 /* DMA Coalescing Control Register */
 #define IGC_LTRMINV	0x5BB0 /* LTR Minimum Value */
 #define IGC_LTRMAXV	0x5BB4 /* LTR Maximum Value */
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
