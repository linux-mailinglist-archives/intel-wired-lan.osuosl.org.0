Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F4C4A8BC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2019 19:46:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8B9D18664E;
	Tue, 18 Jun 2019 17:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J-qajj4ct3d1; Tue, 18 Jun 2019 17:46:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39C34879CF;
	Tue, 18 Jun 2019 17:46:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F8191BF869
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2019 12:02:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2C93983957
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2019 12:02:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id He2ZGyrZAoHs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2019 12:02:22 +0000 (UTC)
X-Greylist: delayed 00:07:06 by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A815686747
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2019 12:02:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 04:55:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="150241708"
Received: from powerlab.fi.intel.com (HELO powerlab.backendnet)
 ([10.237.71.25])
 by orsmga007.jf.intel.com with ESMTP; 18 Jun 2019 04:55:14 -0700
From: Artem Bityutskiy <dedekind1@gmail.com>
To: "David S. Miller" <davem@davemloft.net>
Date: Tue, 18 Jun 2019 14:55:12 +0300
Message-Id: <20190618115513.99661-1-dedekind1@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 18 Jun 2019 17:46:42 +0000
Subject: [Intel-wired-lan] [PATCH 1/2] net: intel: igb: minor ethool regdump
 amendment
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>

This patch has no functional impact and it is just a preparation
for the following patch. It removes an early return from the
'igb_get_regs()' function by moving the 82576-only registers
dump into an "if" block. With this preparation, we can dump more
non-82576 registers at the end of this function.

Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 70 ++++++++++----------
 1 file changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index c645d9e648e0..401bc2bd6b21 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -675,41 +675,41 @@ static void igb_get_regs(struct net_device *netdev,
 		regs_buff[554] = adapter->stats.b2ogprc;
 	}
 
-	if (hw->mac.type != e1000_82576)
-		return;
-	for (i = 0; i < 12; i++)
-		regs_buff[555 + i] = rd32(E1000_SRRCTL(i + 4));
-	for (i = 0; i < 4; i++)
-		regs_buff[567 + i] = rd32(E1000_PSRTYPE(i + 4));
-	for (i = 0; i < 12; i++)
-		regs_buff[571 + i] = rd32(E1000_RDBAL(i + 4));
-	for (i = 0; i < 12; i++)
-		regs_buff[583 + i] = rd32(E1000_RDBAH(i + 4));
-	for (i = 0; i < 12; i++)
-		regs_buff[595 + i] = rd32(E1000_RDLEN(i + 4));
-	for (i = 0; i < 12; i++)
-		regs_buff[607 + i] = rd32(E1000_RDH(i + 4));
-	for (i = 0; i < 12; i++)
-		regs_buff[619 + i] = rd32(E1000_RDT(i + 4));
-	for (i = 0; i < 12; i++)
-		regs_buff[631 + i] = rd32(E1000_RXDCTL(i + 4));
-
-	for (i = 0; i < 12; i++)
-		regs_buff[643 + i] = rd32(E1000_TDBAL(i + 4));
-	for (i = 0; i < 12; i++)
-		regs_buff[655 + i] = rd32(E1000_TDBAH(i + 4));
-	for (i = 0; i < 12; i++)
-		regs_buff[667 + i] = rd32(E1000_TDLEN(i + 4));
-	for (i = 0; i < 12; i++)
-		regs_buff[679 + i] = rd32(E1000_TDH(i + 4));
-	for (i = 0; i < 12; i++)
-		regs_buff[691 + i] = rd32(E1000_TDT(i + 4));
-	for (i = 0; i < 12; i++)
-		regs_buff[703 + i] = rd32(E1000_TXDCTL(i + 4));
-	for (i = 0; i < 12; i++)
-		regs_buff[715 + i] = rd32(E1000_TDWBAL(i + 4));
-	for (i = 0; i < 12; i++)
-		regs_buff[727 + i] = rd32(E1000_TDWBAH(i + 4));
+	if (hw->mac.type == e1000_82576) {
+		for (i = 0; i < 12; i++)
+			regs_buff[555 + i] = rd32(E1000_SRRCTL(i + 4));
+		for (i = 0; i < 4; i++)
+			regs_buff[567 + i] = rd32(E1000_PSRTYPE(i + 4));
+		for (i = 0; i < 12; i++)
+			regs_buff[571 + i] = rd32(E1000_RDBAL(i + 4));
+		for (i = 0; i < 12; i++)
+			regs_buff[583 + i] = rd32(E1000_RDBAH(i + 4));
+		for (i = 0; i < 12; i++)
+			regs_buff[595 + i] = rd32(E1000_RDLEN(i + 4));
+		for (i = 0; i < 12; i++)
+			regs_buff[607 + i] = rd32(E1000_RDH(i + 4));
+		for (i = 0; i < 12; i++)
+			regs_buff[619 + i] = rd32(E1000_RDT(i + 4));
+		for (i = 0; i < 12; i++)
+			regs_buff[631 + i] = rd32(E1000_RXDCTL(i + 4));
+
+		for (i = 0; i < 12; i++)
+			regs_buff[643 + i] = rd32(E1000_TDBAL(i + 4));
+		for (i = 0; i < 12; i++)
+			regs_buff[655 + i] = rd32(E1000_TDBAH(i + 4));
+		for (i = 0; i < 12; i++)
+			regs_buff[667 + i] = rd32(E1000_TDLEN(i + 4));
+		for (i = 0; i < 12; i++)
+			regs_buff[679 + i] = rd32(E1000_TDH(i + 4));
+		for (i = 0; i < 12; i++)
+			regs_buff[691 + i] = rd32(E1000_TDT(i + 4));
+		for (i = 0; i < 12; i++)
+			regs_buff[703 + i] = rd32(E1000_TXDCTL(i + 4));
+		for (i = 0; i < 12; i++)
+			regs_buff[715 + i] = rd32(E1000_TDWBAL(i + 4));
+		for (i = 0; i < 12; i++)
+			regs_buff[727 + i] = rd32(E1000_TDWBAH(i + 4));
+	}
 }
 
 static int igb_get_eeprom_len(struct net_device *netdev)
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
