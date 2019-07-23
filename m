Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4B771F16
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 20:22:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D8F70846D3;
	Tue, 23 Jul 2019 18:22:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KSK9b7UcpUod; Tue, 23 Jul 2019 18:22:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0773884E38;
	Tue, 23 Jul 2019 18:22:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B96F1BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 55BA685B18
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:22:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K2qmkf6JljJI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 18:22:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B96E385ACD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:22:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 11:22:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="172037680"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by orsmga003.jf.intel.com with ESMTP; 23 Jul 2019 11:22:35 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jul 2019 06:01:44 -0400
Message-Id: <20190723100144.57435-12-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723100144.57435-1-alice.michael@intel.com>
References: <20190723100144.57435-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S8 12/12] i40e: fix retrying in
 i40e_aq_get_phy_capabilities
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
Cc: Marcin Formela <marcin.formela@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marcin Formela <marcin.formela@intel.com>

Fixed a bug where driver was breaking out of the loop and
reporting an error without retrying first.

Signed-off-by: Marcin Formela <marcin.formela@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index de996a80013e..46e649c09f72 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1577,19 +1577,22 @@ i40e_status i40e_aq_get_phy_capabilities(struct i40e_hw *hw,
 		status = i40e_asq_send_command(hw, &desc, abilities,
 					       abilities_size, cmd_details);
 
-		if (status)
-			break;
-
-		if (hw->aq.asq_last_status == I40E_AQ_RC_EIO) {
+		switch (hw->aq.asq_last_status) {
+		case I40E_AQ_RC_EIO:
 			status = I40E_ERR_UNKNOWN_PHY;
 			break;
-		} else if (hw->aq.asq_last_status == I40E_AQ_RC_EAGAIN) {
+		case I40E_AQ_RC_EAGAIN:
 			usleep_range(1000, 2000);
 			total_delay++;
 			status = I40E_ERR_TIMEOUT;
+			break;
+		/* also covers I40E_AQ_RC_OK */
+		default:
+			break;
 		}
-	} while ((hw->aq.asq_last_status != I40E_AQ_RC_OK) &&
-		 (total_delay < max_delay));
+
+	} while ((hw->aq.asq_last_status == I40E_AQ_RC_EAGAIN) &&
+		(total_delay < max_delay));
 
 	if (status)
 		return status;
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
