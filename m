Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC98269B6E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 03:45:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B9589863CE;
	Tue, 15 Sep 2020 01:45:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 53OUXV9ecCLT; Tue, 15 Sep 2020 01:45:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5125C8642E;
	Tue, 15 Sep 2020 01:45:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 273431BF301
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 01:45:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1C60D8708B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 01:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5I6qhhrkWJMf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 01:45:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6CD618707F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 01:45:10 +0000 (UTC)
IronPort-SDR: 52aJ0t9iTQZ4eBRY6O7n671Cl3r2Ds9lePMckOJ4CpEuqmBO2/i4wHXfhiNvFC7tY4cfbsCXmO
 P4MmMIM3DoxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="159233042"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="159233042"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 18:45:09 -0700
IronPort-SDR: XfmNJ6kejCQAsYTHezT2CWqdJjEGnSRdNLoi2UOIhB80V1umk4QABbgBFFgPzKoByI9nvzj543
 ymUCd/UhZuKw==
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="482571937"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 18:45:09 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 14 Sep 2020 18:44:46 -0700
Message-Id: <20200915014455.1232507-2-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
References: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 01/10] i40e: prepare flash
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
Cc: intel-wired-lan@lists.osuosl.org
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
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
