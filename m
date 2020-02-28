Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD1D17877F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Mar 2020 02:11:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EF02B83448;
	Wed,  4 Mar 2020 01:11:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pFoUnV2e771X; Wed,  4 Mar 2020 01:11:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5B4C4850A3;
	Wed,  4 Mar 2020 01:11:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 32DEB1BF34A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2020 01:11:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2F0D820552
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2020 01:11:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s+GJJFb53vzk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2020 01:11:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id D420620526
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2020 01:11:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 17:11:45 -0800
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="233839070"
Received: from aguedesl-mac01.jf.intel.com (HELO localhost) ([10.24.12.166])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 17:11:44 -0800
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 28 Feb 2020 00:19:57 -0800
Message-Id: <20200228081957.61782-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] igc: Fix overwrites when dumping registers
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

This patch fixes some register overwriting when dumping registers via
ethtool.

We have a total of 16 RAL registers, starting at offset 139. So RAH
offset should be 139 + 16 = 155, not 145. As result some RAL registers
are overwritten. Likewise, RAH registers are also overwritten by TDBAL,
TDBAH, TDLEN, and TDH registers.

To fix this bug while preserving the ABI, this patch re-writes RAL and
RAH registers at the end of 'regs_buff' and bumps regs->version. It also
removes some pointless comments in the middle of igc_set_regs().

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 69f50b8e2af3..7e4ad4e9f8ad 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -153,7 +153,7 @@ static void igc_get_regs(struct net_device *netdev,
 
 	memset(p, 0, IGC_REGS_LEN * sizeof(u32));
 
-	regs->version = (1u << 24) | (hw->revision_id << 16) | hw->device_id;
+	regs->version = (2u << 24) | (hw->revision_id << 16) | hw->device_id;
 
 	/* General Registers */
 	regs_buff[0] = rd32(IGC_CTRL);
@@ -306,6 +306,15 @@ static void igc_get_regs(struct net_device *netdev,
 		regs_buff[164 + i] = rd32(IGC_TDT(i));
 	for (i = 0; i < 4; i++)
 		regs_buff[168 + i] = rd32(IGC_TXDCTL(i));
+
+	/* XXX: Due to a bug few lines above, RAL and RAH registers are
+	 * overwritten. To preserve the ABI, we write these registers again in
+	 * regs_buff.
+	 */
+	for (i = 0; i < 16; i++)
+		regs_buff[172 + i] = rd32(IGC_RAL(i));
+	for (i = 0; i < 16; i++)
+		regs_buff[188 + i] = rd32(IGC_RAH(i));
 }
 
 static void igc_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
