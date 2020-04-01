Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9590A19A79B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Apr 2020 10:43:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5492F89934;
	Wed,  1 Apr 2020 08:43:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U6jnqoMHOMu4; Wed,  1 Apr 2020 08:43:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E5DB89932;
	Wed,  1 Apr 2020 08:43:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A0D71BF391
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2020 08:43:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6315B26291
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2020 08:43:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KshsoMXKvkJj for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2020 08:43:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 9FAF626261
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2020 08:43:22 +0000 (UTC)
IronPort-SDR: UuG0hr3rjIM/1rmvi73Vn4PZlxauERYKqnfQono5CFnm3VLlpUaQnGUUIxyvKL/g/NaXqZpAs5
 QEBE5A8j6cYw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 01:43:21 -0700
IronPort-SDR: Efzp98Q4xwZl6pWJx6ytZdMRiUNMEOeH1c0kU+zMA8ydBoEWMUZDMGX5rwq5o/FhZ1sDFL9Tqp
 a1mFKS/LBMVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,331,1580803200"; d="scan'208";a="449028350"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga005.fm.intel.com with ESMTP; 01 Apr 2020 01:43:21 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  1 Apr 2020 11:43:20 +0300
Message-Id: <20200401084320.26165-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove PCIe Control register
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

GCR (PCIe Control) register not in use and should be removed
This patch clean up this register

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_regs.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 96dee3c1a5f7..0d227c6e79d2 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -37,9 +37,6 @@
 #define IGC_FCRTV		0x02460  /* FC Refresh Timer Value - RW */
 #define IGC_FCSTS		0x02464  /* FC Status - RO */
 
-/* PCIe Register Description */
-#define IGC_GCR			0x05B00  /* PCIe control- RW */
-
 /* Semaphore registers */
 #define IGC_SW_FW_SYNC		0x05B5C  /* SW-FW Synchronization - RW */
 #define IGC_SWSM		0x05B50  /* SW Semaphore */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
