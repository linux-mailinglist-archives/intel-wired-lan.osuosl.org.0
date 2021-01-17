Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFCC2F917A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 Jan 2021 09:57:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BA662214E9;
	Sun, 17 Jan 2021 08:57:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JP5JYBbu5SLQ; Sun, 17 Jan 2021 08:57:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 269D7204DA;
	Sun, 17 Jan 2021 08:57:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 445F11BF57C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jan 2021 08:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2E254204B4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jan 2021 08:57:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SlvchLHup8Hl for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 Jan 2021 08:57:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 2A5962049D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jan 2021 08:57:12 +0000 (UTC)
IronPort-SDR: brulaZYOSsxl2eRv6ujiaC7GaTbs9nMbus3jASLhxKKc/Qy1cViAcms5LgwxEmeDv6lHG2yn+R
 OfYckdP0kVwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9866"; a="197393330"
X-IronPort-AV: E=Sophos;i="5.79,352,1602572400"; d="scan'208";a="197393330"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2021 00:57:06 -0800
IronPort-SDR: pIWAQhDme68oy0vpcd+yLfoiJta/u4J9v4XNBR0OjMLwP4qhAUYOYXdjCqBX+iTPe2PKWtC8ON
 FKAUkfzbYi8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,352,1602572400"; d="scan'208";a="390528313"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by orsmga007.jf.intel.com with ESMTP; 17 Jan 2021 00:57:05 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	anna.kostyukovsky@intel.com
Date: Sun, 17 Jan 2021 10:57:02 +0200
Message-Id: <20210117085702.4174839-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Prefer strscpy over strlcpy
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

Use the strscpy method instead of strlcpy method.

See: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr
_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 6b89a10f1d02..5ac762a9fa7c 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -133,7 +133,7 @@ static void igc_ethtool_get_drvinfo(struct net_device *netdev,
 	u16 nvm_version = 0;
 	u16 gphy_version = 0;
 
-	strlcpy(drvinfo->driver, igc_driver_name, sizeof(drvinfo->driver));
+	strscpy(drvinfo->driver, igc_driver_name, sizeof(drvinfo->driver));
 
 	/* NVM image version is reported as firmware version for i225 device */
 	hw->nvm.ops.read(hw, IGC_NVM_DEV_STARTER, 1, &nvm_version);
@@ -147,10 +147,10 @@ static void igc_ethtool_get_drvinfo(struct net_device *netdev,
 		  nvm_version,
 		  gphy_version);
 
-	strlcpy(drvinfo->fw_version, adapter->fw_version,
+	strscpy(drvinfo->fw_version, adapter->fw_version,
 		sizeof(drvinfo->fw_version));
 
-	strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
+	strscpy(drvinfo->bus_info, pci_name(adapter->pdev),
 		sizeof(drvinfo->bus_info));
 
 	drvinfo->n_priv_flags = IGC_PRIV_FLAGS_STR_LEN;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
