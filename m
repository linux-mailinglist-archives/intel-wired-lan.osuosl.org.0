Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 426561CCC0E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 May 2020 17:52:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC2C18641E;
	Sun, 10 May 2020 15:52:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HZHx5RpLBb39; Sun, 10 May 2020 15:52:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9C997864AA;
	Sun, 10 May 2020 15:52:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D04EA1BF591
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 May 2020 15:52:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CC0D087F9F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 May 2020 15:52:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id spuITJeMbPRc for <intel-wired-lan@lists.osuosl.org>;
 Sun, 10 May 2020 15:52:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4B63587F92
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 May 2020 15:52:02 +0000 (UTC)
IronPort-SDR: L8ZTLOO5jF8T4YS8THCubMYr9ZfGSWkdIQjC6/H6NDUrO6iBNXMe4TyJNBztuu3pWl6yt69d08
 0Wsa7NN+6OvQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2020 08:52:01 -0700
IronPort-SDR: 2uKs9CrfvTQSS/vsOyjyoQ0Ho/ZA9MmfK6ZmFkJ157mE7czZmenYXhidj7k7j98XqROqvsT8zm
 H6fkIbpy38YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,376,1583222400"; d="scan'208";a="462850588"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga005.fm.intel.com with ESMTP; 10 May 2020 08:52:01 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 10 May 2020 18:52:00 +0300
Message-Id: <20200510155200.21068-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused flags
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

Transmit underrun, late and excess collision flags not in use.
This patch comes to clean up these flags.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index aa1d012b3e2a..80b664e64465 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -269,13 +269,9 @@
 #define IGC_TXD_CMD_DEXT	0x20000000 /* Desc extension (0 = legacy) */
 #define IGC_TXD_CMD_VLE		0x40000000 /* Add VLAN tag */
 #define IGC_TXD_STAT_DD		0x00000001 /* Descriptor Done */
-#define IGC_TXD_STAT_EC		0x00000002 /* Excess Collisions */
-#define IGC_TXD_STAT_LC		0x00000004 /* Late Collisions */
-#define IGC_TXD_STAT_TU		0x00000008 /* Transmit underrun */
 #define IGC_TXD_CMD_TCP		0x01000000 /* TCP packet */
 #define IGC_TXD_CMD_IP		0x02000000 /* IP packet */
 #define IGC_TXD_CMD_TSE		0x04000000 /* TCP Seg enable */
-#define IGC_TXD_STAT_TC		0x00000004 /* Tx Underrun */
 #define IGC_TXD_EXTCMD_TSTAMP	0x00000010 /* IEEE1588 Timestamp packet */
 
 /* IPSec Encrypt Enable */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
