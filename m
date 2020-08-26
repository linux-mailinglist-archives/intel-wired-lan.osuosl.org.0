Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D73E5253A7D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 00:57:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 54A9586C2C;
	Wed, 26 Aug 2020 22:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MA04y1iKuuqk; Wed, 26 Aug 2020 22:57:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7669386C2D;
	Wed, 26 Aug 2020 22:57:25 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D99741BF2FE
 for <intel-wired-lan@osuosl.org>; Wed, 26 Aug 2020 22:57:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D551F86C2C
 for <intel-wired-lan@osuosl.org>; Wed, 26 Aug 2020 22:57:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ePqoPH2RiiH8 for <intel-wired-lan@osuosl.org>;
 Wed, 26 Aug 2020 22:57:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A20A586ACE
 for <intel-wired-lan@osuosl.org>; Wed, 26 Aug 2020 22:57:21 +0000 (UTC)
IronPort-SDR: KAtamKcK+QJbhlJI7VG9utqOe9+7/ugQ8Tq9rYRoPv5qcZipw8L/vhdtzwqtbbggtO86xMYwZ+
 TeF7Vz/55nHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="217944160"
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="217944160"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 15:57:20 -0700
IronPort-SDR: b+YFWltnhQq03dqttVADJeC4DZKiDE0Im8yxTllHZ5ZNA5IQxuHQSYXLXzGTbGA4XYLTz55Mjy
 TN/F1+j44MVA==
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="313033427"
Received: from jbrandeb-desk.jf.intel.com ([10.166.244.152])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 15:57:20 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 26 Aug 2020 15:56:51 -0700
Message-Id: <20200826225652.2043221-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 1/2] i40e: prepare flash
 string in a simpler way
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

The flash string handling code triggered a W=1 warning and upon
investigation it seems everything can be handled in a simpler
way with a single initialization and one strlcat.  The buffer is filled
with NULL after the end of the string by the initializer, and the
strlcat checks total length, and makes sure the buffer is terminated
cleanly.

I didn't mark this with a fixes tag as there is no apparent bug since
the existing code would limit the input data + path to be the right
size, but it does fix the W=1 warning.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ddp.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ddp.c b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
index 5e08f100c413..9767fdf56124 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ddp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
@@ -434,14 +434,10 @@ int i40e_ddp_flash(struct net_device *netdev, struct ethtool_flash *flash)
 	 * stored profile.
 	 */
 	if (strncmp(flash->data, "-", 2) != 0) {
+		char profile_name[ETHTOOL_FLASH_MAX_FILENAME] = I40E_DDP_PROFILE_PATH;
 		struct i40e_ddp_old_profile_list *list_entry;
-		char profile_name[sizeof(I40E_DDP_PROFILE_PATH)
-				  + I40E_DDP_PROFILE_NAME_MAX];
 
-		profile_name[sizeof(profile_name) - 1] = 0;
-		strncpy(profile_name, I40E_DDP_PROFILE_PATH,
-			sizeof(profile_name) - 1);
-		strncat(profile_name, flash->data, I40E_DDP_PROFILE_NAME_MAX);
+		strlcat(profile_name, flash->data, ETHTOOL_FLASH_MAX_FILENAME);
 		/* Load DDP recipe. */
 		status = request_firmware(&ddp_config, profile_name,
 					  &netdev->dev);
-- 
2.25.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
