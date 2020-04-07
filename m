Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6461A1726
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Apr 2020 23:07:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 50BDB867A5;
	Tue,  7 Apr 2020 21:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yQ0GFsUVWxk7; Tue,  7 Apr 2020 21:07:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5ED34868E4;
	Tue,  7 Apr 2020 21:07:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7DB8F1BF616
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 21:07:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7941921538
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 21:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bp7sTMeKKqaj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2020 21:07:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 8B0CC21556
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 21:07:21 +0000 (UTC)
IronPort-SDR: UHyr2aYnSm4vAvcRUE47EwDlfx2EEeQ+cndQ5ouBv/+P/V0PKMycgJee5v2iO33FZdNMvi8koS
 Q8eFwQw+jkPg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 14:07:19 -0700
IronPort-SDR: Lcdyw6KY193gCvWPmFd6V7TpeccZkjZ0yokkwkuk4TuKzoY9ED1L88JTumlOPJHahasxnZ+8jx
 YP9Nw/wxG3uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="452593242"
Received: from jyguan-mobl1.amr.corp.intel.com ([10.212.37.126])
 by fmsmga006.fm.intel.com with ESMTP; 07 Apr 2020 14:07:19 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Apr 2020 14:07:07 -0700
Message-Id: <20200407210711.24371-2-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200407210711.24371-1-andre.guedes@intel.com>
References: <20200407210711.24371-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/5] igc: Remove duplicated IGC_RXPBS macro
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

This patch remove the IGC_RXPBS macro defined in line 233 since it is
already defined in line 18 with the exactly same value.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_regs.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index a01d93bf5028..1cbd428adfbe 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -227,8 +227,6 @@
 
 #define IGC_FTQF(_n)	(0x059E0 + (4 * (_n)))  /* 5-tuple Queue Fltr */
 
-#define IGC_RXPBS	0x02404  /* Rx Packet Buffer Size - RW */
-
 /* Transmit Scheduling Registers */
 #define IGC_TQAVCTRL                   0x3570
 #define IGC_TXQCTL(_n)                 (0x3344 + 0x4 * (_n))
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
