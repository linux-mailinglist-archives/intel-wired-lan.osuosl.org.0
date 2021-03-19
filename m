Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC01342026
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Mar 2021 15:50:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3290660732;
	Fri, 19 Mar 2021 14:50:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SHdYpqtpa3gD; Fri, 19 Mar 2021 14:50:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FEA36071B;
	Fri, 19 Mar 2021 14:50:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2ABAF1BF32B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 12:53:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C7D96067C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 12:53:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DRbzrW7n-6xE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Mar 2021 12:53:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4772605D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 12:53:30 +0000 (UTC)
IronPort-SDR: EwCl6UXLl1BBHLTWwm+XYmWVpWSYiI6kkagyB/uKFLh4pkr67H+WYIaAOP7cUlg70vN5bpHzAr
 64J4IRCnAmzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="209909888"
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="209909888"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 05:53:29 -0700
IronPort-SDR: z1/FiBNvISlR2w/cBjJVoym0fhgGcIY4b52hBE2aiPV3lt9xEE764Q+PLTSyOJqUpi4JLCW968
 3XcTfaKBqd7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="450850720"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by orsmga001.jf.intel.com with ESMTP; 19 Mar 2021 05:53:28 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 Mar 2021 13:53:25 +0100
Message-Id: <1616158405-95495-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
X-Mailman-Approved-At: Fri, 19 Mar 2021 14:50:26 +0000
Subject: [Intel-wired-lan] [PATCH net-next v2] i40e: Fix parameters in
 aq_get_phy_register()
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
Cc: Grzegorz Siwik <grzegorz.siwik@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Change parameters order in aq_get_phy_register() due to wrong
statistics in PHY reported by ethtool. Previosly all PHY statistics were
exactly the same for all interfaces
Now statistics are reported correctly - different for different interfaces

Fixes: 0514db37dd78 ("i40e: Extend PHY access with page change flag")
Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
---
v2:
-Fixed typos in commit message
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 96d5202..0e92668 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5480,7 +5480,7 @@ static int i40e_get_module_eeprom(struct net_device *netdev,
 
 		status = i40e_aq_get_phy_register(hw,
 				I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE,
-				true, addr, offset, &value, NULL);
+				addr, true, offset, &value, NULL);
 		if (status)
 			return -EIO;
 		data[i] = value;
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
