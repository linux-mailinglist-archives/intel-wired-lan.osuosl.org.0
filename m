Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 866431F5511
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2020 14:43:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3FB4F8814A;
	Wed, 10 Jun 2020 12:43:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jg8aWeZskXTm; Wed, 10 Jun 2020 12:43:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3536E8811F;
	Wed, 10 Jun 2020 12:43:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 74DB61BF286
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 12:43:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6C5B4220C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 12:43:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zMrfo4fusJHi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2020 12:43:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id CA21F2038F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 12:43:11 +0000 (UTC)
IronPort-SDR: RnY0p86XMOFqRFmCFraKWCObJya8Llr54YJHGMuzywnxkjl1lvYUEOPTWVwYs8Z0ZbXVrs4R0F
 7xP16MJzX5zQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 05:43:10 -0700
IronPort-SDR: n/J4Ua9bPr5ZkE29B6CgDT4NRmFQiWXXWA9xo10pxlhaFE2D0Gnd4fKGDEygdTDV16I7Snqtnf
 fHlq2FFopdGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,496,1583222400"; d="scan'208";a="260390880"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jun 2020 05:43:10 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Jun 2020 15:43:08 +0300
Message-Id: <20200610124308.41422-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v2 1/1] igc: Remove unneeded check for
 copper media type
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

PHY of the i225 device support only copper mode.
There is no point to check media type in the
igc_power_up_link() method.

v1->v2:
Address community comment and correct the title

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index af5e1686f7f2..83c94fa58c40 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -115,8 +115,7 @@ static void igc_power_up_link(struct igc_adapter *adapter)
 {
 	igc_reset_phy(&adapter->hw);
 
-	if (adapter->hw.phy.media_type == igc_media_type_copper)
-		igc_power_up_phy_copper(&adapter->hw);
+	igc_power_up_phy_copper(&adapter->hw);
 
 	igc_setup_link(&adapter->hw);
 }
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
