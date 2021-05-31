Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BFF396619
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 May 2021 18:56:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA98983963;
	Mon, 31 May 2021 16:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tI6muL_0AVlh; Mon, 31 May 2021 16:56:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F35BE83942;
	Mon, 31 May 2021 16:56:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F1BF21BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 May 2021 16:56:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF6A983942
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 May 2021 16:56:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V5gOH2FoxW-K for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 May 2021 16:55:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A6A54833CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 May 2021 16:55:59 +0000 (UTC)
IronPort-SDR: geZO2ORY7VLvig/0Bwdpm4GOp06nHSk1jfe3n8pXEfMf3ljcJkDIZ2OIs0/01zZDa5dRiVOxbf
 e/yq2X6NsRhQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="203424305"
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="203424305"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2021 09:55:58 -0700
IronPort-SDR: JMWXBH/GnetKtoJpuUxJWVsBFf2ODgsyBXn16cz8QAjmfd7vyI/XubSGtRzZt+lYqgTwU1pomJ
 tyQYbU5X7L9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="445034272"
Received: from amlin-019-242.igk.intel.com ([10.102.19.242])
 by orsmga008.jf.intel.com with ESMTP; 31 May 2021 09:55:56 -0700
From: =?UTF-8?q?Micha=C5=82=20Ma=C5=82oszewski?= <michal.maloszewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 31 May 2021 16:55:49 +0000
Message-Id: <1622480149-29979-1-git-send-email-michal.maloszewski@intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Add additional info to PHY
 type error
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
Cc: Michal Maloszewski <michal.maloszewski@intel.com>,
 Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>

In case of PHY type error occurs, the message was too generic.
Add additional info to PHY type error indicating that it can be
wrong cable connected.

Fixes: 124ed15bf126 ("i40e: Add dual speed module support")
Signed-off-by: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 45f5dc2..7a1d2d5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -971,7 +971,7 @@ static void i40e_get_settings_link_up(struct i40e_hw *hw,
 	default:
 		/* if we got here and link is up something bad is afoot */
 		netdev_info(netdev,
-			    "WARNING: Link is up but PHY type 0x%x is not recognized.\n",
+			    "WARNING: Link is up but PHY type 0x%x is not recognized, or incorrect cable is in use\n",
 			    hw_link_info->phy_type);
 	}
 
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
