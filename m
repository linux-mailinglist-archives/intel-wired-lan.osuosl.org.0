Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B50A8F608
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 22:55:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9DD9C85FA8;
	Thu, 15 Aug 2019 20:55:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w01wDzLjpc4A; Thu, 15 Aug 2019 20:55:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C096485FAE;
	Thu, 15 Aug 2019 20:55:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8EF031BF39E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 20:55:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 832EB87856
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 20:55:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 26fnEthPSBbd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2019 20:55:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BEE0987851
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 20:55:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 13:55:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="188609490"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by orsmga002.jf.intel.com with ESMTP; 15 Aug 2019 13:55:24 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Aug 2019 13:55:19 -0700
Message-Id: <20190815205520.22475-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 1/2] igb: Enable media autosense for
 the i350.
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
Cc: Manfred Rudigier <manfred.rudigier@omicronenergy.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Manfred Rudigier <manfred.rudigier@omicronenergy.com>

This patch enables the hardware feature "Media Auto Sense" also on the
i350. It works in the same way as on the 82850 devices. Hardware designs
using dual PHYs (fiber/copper) can enable this feature by setting the MAS
enable bits in the NVM_COMPAT register (0x03) in the EEPROM.

Signed-off-by: Manfred Rudigier <manfred.rudigier@omicronenergy.com>
---
 drivers/net/ethernet/intel/igb/e1000_82575.c | 2 +-
 drivers/net/ethernet/intel/igb/igb_main.c    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_82575.c b/drivers/net/ethernet/intel/igb/e1000_82575.c
index 3ec2ce0725d5..8a6ef3514129 100644
--- a/drivers/net/ethernet/intel/igb/e1000_82575.c
+++ b/drivers/net/ethernet/intel/igb/e1000_82575.c
@@ -466,7 +466,7 @@ static s32 igb_init_mac_params_82575(struct e1000_hw *hw)
 			? igb_setup_copper_link_82575
 			: igb_setup_serdes_link_82575;
 
-	if (mac->type == e1000_82580) {
+	if (mac->type == e1000_82580 || mac->type == e1000_i350) {
 		switch (hw->device_id) {
 		/* feature not supported on these id's */
 		case E1000_DEV_ID_DH89XXCC_SGMII:
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index b4df3e319467..95fc1a178ff3 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2370,7 +2370,7 @@ void igb_reset(struct igb_adapter *adapter)
 		adapter->ei.get_invariants(hw);
 		adapter->flags &= ~IGB_FLAG_MEDIA_RESET;
 	}
-	if ((mac->type == e1000_82575) &&
+	if ((mac->type == e1000_82575 || mac->type == e1000_i350) &&
 	    (adapter->flags & IGB_FLAG_MAS_ENABLE)) {
 		igb_enable_mas(adapter);
 	}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
