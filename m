Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3691E3448E5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Mar 2021 16:12:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5156660705;
	Mon, 22 Mar 2021 15:11:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iHq1bC01yJw4; Mon, 22 Mar 2021 15:11:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F6C8606B4;
	Mon, 22 Mar 2021 15:11:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3BB3E1BF83E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 15:11:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 269B640339
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 15:11:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VAtbG4gd8uOC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Mar 2021 15:11:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4788A40325
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Mar 2021 15:11:52 +0000 (UTC)
IronPort-SDR: 7KXiJYuy8KBz4VwK7KEE0JauTbbnrbRDIBl3a3REtWro1rGagRD1JsGMpEmzVt358yrRaYFZD3
 WscY/vSO7yXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="190317930"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="190317930"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 08:11:50 -0700
IronPort-SDR: AuZ3ckhKj1YD9wrEXyIqePSrcNzgfUFMvCFrlI8uTLyn7VJCjZNrkP+huAxDKMfAHDHkfgW1SY
 6BthtfBYFjug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="592654821"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by orsmga005.jf.intel.com with ESMTP; 22 Mar 2021 08:11:50 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 Mar 2021 16:11:47 +0100
Message-Id: <1616425907-12165-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix parameters in
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
-Changed target tree to net
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
