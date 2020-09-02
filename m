Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D70A25B075
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Sep 2020 17:59:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D30B386A88;
	Wed,  2 Sep 2020 15:59:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pk1SU9LDcaTS; Wed,  2 Sep 2020 15:59:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C57686A63;
	Wed,  2 Sep 2020 15:59:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0635A1BF489
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 15:59:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 032652033D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 15:59:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dugf6enpHzoI for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Sep 2020 15:58:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 9AD8620794
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 15:58:55 +0000 (UTC)
IronPort-SDR: pVjkLlaj85USOdAo0Zi6XiWliIAGG8tvki9SL/1mWZweadli+BwajS5s48FPoevFQeUXuEk1w1
 4bfBKYU7um7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="158409178"
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="158409178"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 08:58:54 -0700
IronPort-SDR: 3KryzJ+ZEbSG0XjzqojIthSV5U3Mi610uqs/p+s702hervTFqW7dcdvT4BMa+HczSefPj8eDXB
 NkBCLSSzafyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="301882255"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 02 Sep 2020 08:58:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Sep 2020 08:53:42 -0700
Message-Id: <20200902155347.16972-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net 1/6] ice: preserve NVM capabilities in safe
 mode
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

From: Jacob Keller <jacob.e.keller@intel.com>

If the driver initializes in safe mode, it will call
ice_set_safe_mode_caps. This results in clearing the capabilities
structures, in order to set them up for operating in safe mode, ensuring
many features are disabled.

This has a side effect of also clearing the capability bits that relate
to NVM update. The result is that the device driver will not indicate
support for unified update, even if the firmware is capable.

Fix this by adding the relevant capability fields to the list of values
we preserve. To simplify the code, use a common_cap structure instead of
a handful of local variables. To reduce some duplication of the
capability name, introduce a couple of macros used to restore the
capabilities values from the cached copy.

Fixes: de9b277ee032 ("ice: Add support for unified NVM update flow capability")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 49 ++++++++++++---------
 1 file changed, 27 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 34abfcea9858..7db5fd977367 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2288,26 +2288,28 @@ void ice_set_safe_mode_caps(struct ice_hw *hw)
 {
 	struct ice_hw_func_caps *func_caps = &hw->func_caps;
 	struct ice_hw_dev_caps *dev_caps = &hw->dev_caps;
-	u32 valid_func, rxq_first_id, txq_first_id;
-	u32 msix_vector_first_id, max_mtu;
+	struct ice_hw_common_caps cached_caps;
 	u32 num_funcs;
 
 	/* cache some func_caps values that should be restored after memset */
-	valid_func = func_caps->common_cap.valid_functions;
-	txq_first_id = func_caps->common_cap.txq_first_id;
-	rxq_first_id = func_caps->common_cap.rxq_first_id;
-	msix_vector_first_id = func_caps->common_cap.msix_vector_first_id;
-	max_mtu = func_caps->common_cap.max_mtu;
+	cached_caps = func_caps->common_cap;
 
 	/* unset func capabilities */
 	memset(func_caps, 0, sizeof(*func_caps));
 
+#define ICE_RESTORE_FUNC_CAP(name) \
+	func_caps->common_cap.name = cached_caps.name
+
 	/* restore cached values */
-	func_caps->common_cap.valid_functions = valid_func;
-	func_caps->common_cap.txq_first_id = txq_first_id;
-	func_caps->common_cap.rxq_first_id = rxq_first_id;
-	func_caps->common_cap.msix_vector_first_id = msix_vector_first_id;
-	func_caps->common_cap.max_mtu = max_mtu;
+	ICE_RESTORE_FUNC_CAP(valid_functions);
+	ICE_RESTORE_FUNC_CAP(txq_first_id);
+	ICE_RESTORE_FUNC_CAP(rxq_first_id);
+	ICE_RESTORE_FUNC_CAP(msix_vector_first_id);
+	ICE_RESTORE_FUNC_CAP(max_mtu);
+	ICE_RESTORE_FUNC_CAP(nvm_unified_update);
+	ICE_RESTORE_FUNC_CAP(nvm_update_pending_nvm);
+	ICE_RESTORE_FUNC_CAP(nvm_update_pending_orom);
+	ICE_RESTORE_FUNC_CAP(nvm_update_pending_netlist);
 
 	/* one Tx and one Rx queue in safe mode */
 	func_caps->common_cap.num_rxq = 1;
@@ -2318,22 +2320,25 @@ void ice_set_safe_mode_caps(struct ice_hw *hw)
 	func_caps->guar_num_vsi = 1;
 
 	/* cache some dev_caps values that should be restored after memset */
-	valid_func = dev_caps->common_cap.valid_functions;
-	txq_first_id = dev_caps->common_cap.txq_first_id;
-	rxq_first_id = dev_caps->common_cap.rxq_first_id;
-	msix_vector_first_id = dev_caps->common_cap.msix_vector_first_id;
-	max_mtu = dev_caps->common_cap.max_mtu;
+	cached_caps = dev_caps->common_cap;
 	num_funcs = dev_caps->num_funcs;
 
 	/* unset dev capabilities */
 	memset(dev_caps, 0, sizeof(*dev_caps));
 
+#define ICE_RESTORE_DEV_CAP(name) \
+	dev_caps->common_cap.name = cached_caps.name
+
 	/* restore cached values */
-	dev_caps->common_cap.valid_functions = valid_func;
-	dev_caps->common_cap.txq_first_id = txq_first_id;
-	dev_caps->common_cap.rxq_first_id = rxq_first_id;
-	dev_caps->common_cap.msix_vector_first_id = msix_vector_first_id;
-	dev_caps->common_cap.max_mtu = max_mtu;
+	ICE_RESTORE_DEV_CAP(valid_functions);
+	ICE_RESTORE_DEV_CAP(txq_first_id);
+	ICE_RESTORE_DEV_CAP(rxq_first_id);
+	ICE_RESTORE_DEV_CAP(msix_vector_first_id);
+	ICE_RESTORE_DEV_CAP(max_mtu);
+	ICE_RESTORE_DEV_CAP(nvm_unified_update);
+	ICE_RESTORE_DEV_CAP(nvm_update_pending_nvm);
+	ICE_RESTORE_DEV_CAP(nvm_update_pending_orom);
+	ICE_RESTORE_DEV_CAP(nvm_update_pending_netlist);
 	dev_caps->num_funcs = num_funcs;
 
 	/* one Tx and one Rx queue per function in safe mode */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
