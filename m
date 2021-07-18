Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 528463CC85C
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Jul 2021 11:42:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC2EA83A62;
	Sun, 18 Jul 2021 09:42:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tzVHA-z2zmak; Sun, 18 Jul 2021 09:42:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D13AA83A5D;
	Sun, 18 Jul 2021 09:42:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6DCD01BF59E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jul 2021 09:42:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 617DA60692
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jul 2021 09:42:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2suub22xP9DX for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Jul 2021 09:42:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C192B60632
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Jul 2021 09:42:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10048"; a="232700108"
X-IronPort-AV: E=Sophos;i="5.84,249,1620716400"; d="scan'208";a="232700108"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2021 02:42:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,249,1620716400"; d="scan'208";a="508842132"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga002.fm.intel.com with ESMTP; 18 Jul 2021 02:42:12 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	michael.edri@intel.com
Date: Sun, 18 Jul 2021 12:42:09 +0300
Message-Id: <20210718094209.3692993-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove media type checking on
 the PHY initialization
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

i225 devices have only copper phy media type. There is no point in checking
phy media type during the phy initialization.
This patch comes to clean up these pointless checkings.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_base.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
index 93feed4f7f1c..260b7b17bbcc 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.c
+++ b/drivers/net/ethernet/intel/igc/igc_base.c
@@ -158,11 +158,6 @@ static s32 igc_init_phy_params_base(struct igc_hw *hw)
 	struct igc_phy_info *phy = &hw->phy;
 	s32 ret_val = 0;
 
-	if (hw->phy.media_type != igc_media_type_copper) {
-		phy->type = igc_phy_none;
-		goto out;
-	}
-
 	phy->autoneg_mask	= AUTONEG_ADVERTISE_SPEED_DEFAULT_2500;
 	phy->reset_delay_us	= 100;
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
