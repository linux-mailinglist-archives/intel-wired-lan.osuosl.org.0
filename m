Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11299458DB6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Nov 2021 12:47:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61E4E401A4;
	Mon, 22 Nov 2021 11:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YW0c1P0o6ZMZ; Mon, 22 Nov 2021 11:46:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2971240179;
	Mon, 22 Nov 2021 11:46:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 10EA11BF280
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 11:46:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F3C6780F3B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 11:46:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WHZqAhZyk53w for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Nov 2021 11:46:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5733380E24
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 11:46:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="232255643"
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="232255643"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 03:46:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="596257661"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.18.68])
 by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2021 03:46:50 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 Nov 2021 12:46:22 +0100
Message-Id: <20211122114622.4804-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix for displaying message
 regarding NVM version
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When loading the i40e driver, it prints a message like:
'The driver for the device detected a newer version of the NVM image v1.x than
expected v1.y. Please install the most recent version of the network driver.'
This is misleading as the driver is working as expected.

Fix that by removing the second part of message and changing it from
dev_info to dev_dgb.

Fixes: 4fb29bddb57f ("i40e: The driver now prints the API version in error message")
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Fixed the fixes tag to be 12 digits long
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 4664d07..d61def5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15469,15 +15469,15 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	if (hw->aq.api_maj_ver == I40E_FW_API_VERSION_MAJOR &&
 	    hw->aq.api_min_ver > I40E_FW_MINOR_VERSION(hw))
-		dev_info(&pdev->dev,
-			 "The driver for the device detected a newer version of the NVM image v%u.%u than expected v%u.%u. Please install the most recent version of the network driver.\n",
+		dev_dbg(&pdev->dev,
+			"The driver for the device detected a newer version of the NVM image v%u.%u than expected v%u.%u.\n",
 			 hw->aq.api_maj_ver,
 			 hw->aq.api_min_ver,
 			 I40E_FW_API_VERSION_MAJOR,
 			 I40E_FW_MINOR_VERSION(hw));
 	else if (hw->aq.api_maj_ver == 1 && hw->aq.api_min_ver < 4)
-		dev_info(&pdev->dev,
-			 "The driver for the device detected an older version of the NVM image v%u.%u than expected v%u.%u. Please update the NVM image.\n",
+		dev_dbg(&pdev->dev,
+			"The driver for the device detected an older version of the NVM image v%u.%u than expected v%u.%u.\n",
 			 hw->aq.api_maj_ver,
 			 hw->aq.api_min_ver,
 			 I40E_FW_API_VERSION_MAJOR,
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
