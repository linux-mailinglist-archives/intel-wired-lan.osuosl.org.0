Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A301A5D07
	for <lists+intel-wired-lan@lfdr.de>; Sun, 12 Apr 2020 08:28:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 159DF85B00;
	Sun, 12 Apr 2020 06:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IV4PJGGg5gzU; Sun, 12 Apr 2020 06:28:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9915A86072;
	Sun, 12 Apr 2020 06:28:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 440E01BF5AC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Apr 2020 06:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3FDB984DCD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Apr 2020 06:28:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MrCfvHoSaSch for <intel-wired-lan@lists.osuosl.org>;
 Sun, 12 Apr 2020 06:28:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 393C8813FD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Apr 2020 06:28:31 +0000 (UTC)
IronPort-SDR: OYq0iuNDwjRearnsgfamj4jYPPkhgCI5qV2BYOeu7+Sla+KNmWYza0YrZ3aRtQHkFf7+A9V8u8
 UzDayRjNNrew==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2020 23:28:30 -0700
IronPort-SDR: jLoEklSLAlLe6f+khR1LJYZIRyXl/PlmI+6/sAMlujTAAucbC3JgIqgmO6cGQhuH2RxVUXofiq
 FYoSzrjnEr0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,373,1580803200"; d="scan'208";a="243274533"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga007.fm.intel.com with ESMTP; 11 Apr 2020 23:28:29 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 12 Apr 2020 09:28:29 +0300
Message-Id: <20200412062829.17781-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused IGC_ICS_DRSTA
 define
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

Device reset assert for interrupt cause register not in
use for i225 device.
This patch comes to clean up this define.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 1127ef81e374..37599c248263 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -244,7 +244,6 @@
 /* Interrupt Cause Set */
 #define IGC_ICS_LSC		IGC_ICR_LSC       /* Link Status Change */
 #define IGC_ICS_RXDMT0		IGC_ICR_RXDMT0    /* rx desc min. threshold */
-#define IGC_ICS_DRSTA		IGC_ICR_DRSTA     /* Device Reset Aserted */
 
 #define IGC_ICR_DOUTSYNC	0x10000000 /* NIC DMA out of sync */
 #define IGC_EITR_CNT_IGNR	0x80000000 /* Don't reset counters on write */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
