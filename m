Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA0FB96AB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2019 19:40:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AAADE20401;
	Fri, 20 Sep 2019 17:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RWmV7t9sywvF; Fri, 20 Sep 2019 17:40:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A8B9720505;
	Fri, 20 Sep 2019 17:40:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47CB21BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 44FF420401
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nLolKjCngrr8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2019 17:39:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 1E3B72010C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 10:39:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,529,1559545200"; d="scan'208";a="212635329"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga004.fm.intel.com with ESMTP; 20 Sep 2019 10:39:51 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Sep 2019 02:17:18 -0700
Message-Id: <20190920091724.51767-4-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190920091724.51767-1-alice.michael@intel.com>
References: <20190920091724.51767-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S10 04/10] i40e: Extract detection of
 HW flags into a function
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
Cc: Piotr Azarewicz <piotr.azarewicz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Azarewicz <piotr.azarewicz@intel.com>

Move code detecting HW flags based on device type and FW API version
into a single function.

Signed-off-by: Piotr Azarewicz <piotr.azarewicz@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c | 71 +++++++++++++++----
 drivers/net/ethernet/intel/i40e/i40e_common.c |  4 --
 2 files changed, 58 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 72c04881d290..9f0a4e92a231 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -507,6 +507,59 @@ static i40e_status i40e_shutdown_arq(struct i40e_hw *hw)
 	return ret_code;
 }
 
+/**
+ *  i40e_set_hw_flags - set HW flags
+ *  @hw: pointer to the hardware structure
+ **/
+static void i40e_set_hw_flags(struct i40e_hw *hw)
+{
+	struct i40e_adminq_info *aq = &hw->aq;
+
+	hw->flags = 0;
+
+	switch (hw->mac.type) {
+	case I40E_MAC_XL710:
+		if (aq->api_maj_ver > 1 ||
+		    (aq->api_maj_ver == 1 &&
+		     aq->api_min_ver >= I40E_MINOR_VER_GET_LINK_INFO_XL710)) {
+			hw->flags |= I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE;
+			hw->flags |= I40E_HW_FLAG_FW_LLDP_STOPPABLE;
+			/* The ability to RX (not drop) 802.1ad frames */
+			hw->flags |= I40E_HW_FLAG_802_1AD_CAPABLE;
+		}
+		break;
+	case I40E_MAC_X722:
+		hw->flags |= I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE |
+			     I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK;
+
+		if (aq->api_maj_ver > 1 ||
+		    (aq->api_maj_ver == 1 &&
+		     aq->api_min_ver >= I40E_MINOR_VER_FW_LLDP_STOPPABLE_X722))
+			hw->flags |= I40E_HW_FLAG_FW_LLDP_STOPPABLE;
+		/* fall through */
+	default:
+		break;
+	}
+
+	/* Newer versions of firmware require lock when reading the NVM */
+	if (aq->api_maj_ver > 1 ||
+	    (aq->api_maj_ver == 1 &&
+	     aq->api_min_ver >= 5))
+		hw->flags |= I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK;
+
+	if (aq->api_maj_ver > 1 ||
+	    (aq->api_maj_ver == 1 &&
+	     aq->api_min_ver >= 8)) {
+		hw->flags |= I40E_HW_FLAG_FW_LLDP_PERSISTENT;
+		hw->flags |= I40E_HW_FLAG_DROP_MODE;
+	}
+
+	if (aq->api_maj_ver > 1 ||
+	    (aq->api_maj_ver == 1 &&
+	     aq->api_min_ver >= 9))
+		hw->flags |= I40E_HW_FLAG_AQ_PHY_ACCESS_EXTENDED;
+}
+
 /**
  *  i40e_init_adminq - main initialization routine for Admin Queue
  *  @hw: pointer to the hardware structure
@@ -571,6 +624,11 @@ i40e_status i40e_init_adminq(struct i40e_hw *hw)
 	if (ret_code != I40E_SUCCESS)
 		goto init_adminq_free_arq;
 
+	/* Some features were introduced in different FW API version
+	 * for different MAC type.
+	 */
+	i40e_set_hw_flags(hw);
+
 	/* get the NVM version info */
 	i40e_read_nvm_word(hw, I40E_SR_NVM_DEV_STARTER_VERSION,
 			   &hw->nvm.version);
@@ -596,25 +654,12 @@ i40e_status i40e_init_adminq(struct i40e_hw *hw)
 		hw->flags |= I40E_HW_FLAG_FW_LLDP_STOPPABLE;
 	}
 
-	/* Newer versions of firmware require lock when reading the NVM */
-	if (hw->aq.api_maj_ver > 1 ||
-	    (hw->aq.api_maj_ver == 1 &&
-	     hw->aq.api_min_ver >= 5))
-		hw->flags |= I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK;
-
 	/* The ability to RX (not drop) 802.1ad frames was added in API 1.7 */
 	if (hw->aq.api_maj_ver > 1 ||
 	    (hw->aq.api_maj_ver == 1 &&
 	     hw->aq.api_min_ver >= 7))
 		hw->flags |= I40E_HW_FLAG_802_1AD_CAPABLE;
 
-	if (hw->aq.api_maj_ver > 1 ||
-	    (hw->aq.api_maj_ver == 1 &&
-	     hw->aq.api_min_ver >= 8)) {
-		hw->flags |= I40E_HW_FLAG_FW_LLDP_PERSISTENT;
-		hw->flags |= I40E_HW_FLAG_DROP_MODE;
-	}
-
 	if (hw->aq.api_maj_ver > I40E_FW_API_VERSION_MAJOR) {
 		ret_code = I40E_ERR_FIRMWARE_API_VERSION;
 		goto init_adminq_free_arq;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index f1d67267c983..fe553bb23d7a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -933,10 +933,6 @@ i40e_status i40e_init_shared_code(struct i40e_hw *hw)
 	else
 		hw->pf_id = (u8)(func_rid & 0x7);
 
-	if (hw->mac.type == I40E_MAC_X722)
-		hw->flags |= I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE |
-			     I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK;
-
 	status = i40e_init_nvm(hw);
 	return status;
 }
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
