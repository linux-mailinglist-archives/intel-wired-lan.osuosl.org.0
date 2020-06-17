Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DE91FCCF5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2020 14:01:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 193208953C;
	Wed, 17 Jun 2020 12:01:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fXsTPQhHRoIk; Wed, 17 Jun 2020 12:01:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6DE4A8951D;
	Wed, 17 Jun 2020 12:01:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6AB281BF377
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2020 12:01:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 601622038F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2020 12:01:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4lYzDDtvbj+s for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jun 2020 12:01:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 6F61820380
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2020 12:01:47 +0000 (UTC)
IronPort-SDR: XMALMDFU+3rh1Iyn+Z+xx0lllZW9pPkx1V2j1SA5deFKfVsU1sqwlGeVSRIOeJqxe4GJaAZ/cR
 l82qDYgQv/oA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 05:01:32 -0700
IronPort-SDR: SCgxTR+MAcPPwEYb108VNFh82hgbFhZjRVmwafW2KREx8V3vrHINFNJDx2dI+DHhqPiGMpeFD1
 qT+gwkoCG9og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,522,1583222400"; d="scan'208";a="317510303"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Jun 2020 05:01:31 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 Jun 2020 15:01:31 +0300
Message-Id: <20200617120131.21277-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove checking media type
 during MAC initialization
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

i225 device support only copper mode.
There is no point to check media type in the
igc_config_fc_after_link_up() method.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_mac.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index 9a5e44ef45f4..b47e7b0a6398 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -468,10 +468,8 @@ s32 igc_config_fc_after_link_up(struct igc_hw *hw)
 	 * so we had to force link.  In this case, we need to force the
 	 * configuration of the MAC to match the "fc" parameter.
 	 */
-	if (mac->autoneg_failed) {
-		if (hw->phy.media_type == igc_media_type_copper)
-			ret_val = igc_force_mac_fc(hw);
-	}
+	if (mac->autoneg_failed)
+		ret_val = igc_force_mac_fc(hw);
 
 	if (ret_val) {
 		hw_dbg("Error forcing flow control settings\n");
@@ -483,7 +481,7 @@ s32 igc_config_fc_after_link_up(struct igc_hw *hw)
 	 * has completed, and if so, how the PHY and link partner has
 	 * flow control configured.
 	 */
-	if (hw->phy.media_type == igc_media_type_copper && mac->autoneg) {
+	if (mac->autoneg) {
 		/* Read the MII Status Register and check to see if AutoNeg
 		 * has completed.  We read this twice because this reg has
 		 * some "sticky" (latched) bits.
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
