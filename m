Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BB534740B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Mar 2021 09:58:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 973F840E55;
	Wed, 24 Mar 2021 08:58:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9U8BKQFO7Mlc; Wed, 24 Mar 2021 08:58:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66DEC40E4F;
	Wed, 24 Mar 2021 08:58:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0FD561BF83C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Mar 2021 08:58:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F203760ABC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Mar 2021 08:58:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rk3xSY6TqJrj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Mar 2021 08:58:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5458660AB9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Mar 2021 08:58:31 +0000 (UTC)
IronPort-SDR: 6iC7I6qaAssvGtu5iRJoMpUmfQnMno72LPVcFCHXaIRxPm4BMEXjxt1BXJbAI8+gougnszy/SY
 iu1AB3ZwvUmQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="177779290"
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="177779290"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 01:58:30 -0700
IronPort-SDR: mKwo3f3otXvW6422bubWfmmm0THLZbFY9RfO0zJ/tCjBKHHBRaNKYCDQ3SUFYA3KtjblqrhH7Q
 DNrGWJKkOKpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="514111458"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by fmsmga001.fm.intel.com with ESMTP; 24 Mar 2021 01:58:29 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Mar 2021 09:58:27 +0100
Message-Id: <1616576307-54213-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [Intel-wired-lan] [PATCH net v3] i40e: Fix parameters in
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
statistics in PHY reported by ethtool. Previously all PHY statistics were
exactly the same for all interfaces
Now statistics are reported correctly - different for different interfaces

Fixes: 0514db37dd78 ("i40e: Extend PHY access with page change flag")
Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
---
v2:
-Changed target tree to net
---
v3:
-Fixed typo in commit message
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
