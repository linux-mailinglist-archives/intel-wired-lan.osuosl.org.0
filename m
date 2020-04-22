Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B058C1B4097
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2020 12:46:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 460FA85E09;
	Wed, 22 Apr 2020 10:46:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6n4HUuMc7dy9; Wed, 22 Apr 2020 10:46:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86B6D8626E;
	Wed, 22 Apr 2020 10:46:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3DFA71BF335
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2020 10:46:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0427581D32
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2020 10:46:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kg6RxobVg6uw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Apr 2020 10:46:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4BC7B880C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2020 10:46:49 +0000 (UTC)
IronPort-SDR: MyZKUQ9uATj6Io7tPSqqixYN1FVpzmiwXYqETNbLgAxqWOMdwTvFeBKBWLbMtPW8v/nW0dbEMW
 4m22C7wEW/fg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 03:46:48 -0700
IronPort-SDR: 237PYXolIuCeDOaSq0tXvylyGTR7YPCiPOa0Yu0WfQLAlMd1H+c1C7RIgMYcy0SH2CvVXmRXLp
 ZH20tEzT8RTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,414,1580803200"; d="scan'208";a="456461682"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga005.fm.intel.com with ESMTP; 22 Apr 2020 03:46:48 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Apr 2020 13:46:47 +0300
Message-Id: <20200422104647.27290-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove per queue good
 transmited counter register
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

Per queue good transmitted packet counter not applicable for i225 device.
This patch comes to clean up this register.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_regs.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 79bd104363ed..7f999cfc9b39 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -124,9 +124,6 @@
 #define IGC_MMDAC		13 /* MMD Access Control */
 #define IGC_MMDAAD		14 /* MMD Access Address/Data */
 
-/* Good transmitted packets counter registers */
-#define IGC_PQGPTC(_n)		(0x010014 + (0x100 * (_n)))
-
 /* Statistics Register Descriptions */
 #define IGC_CRCERRS	0x04000  /* CRC Error Count - R/clr */
 #define IGC_ALGNERRC	0x04004  /* Alignment Error Count - R/clr */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
