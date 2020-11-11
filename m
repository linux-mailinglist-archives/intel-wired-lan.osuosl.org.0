Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 800902AF8A1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Nov 2020 20:00:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1B0D686969;
	Wed, 11 Nov 2020 19:00:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x56vSlbrcFPX; Wed, 11 Nov 2020 19:00:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6A68486990;
	Wed, 11 Nov 2020 19:00:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C92FC1BF390
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 19:00:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C519787498
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 19:00:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GFw1yAiPO2Id for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Nov 2020 19:00:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0362787491
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 19:00:44 +0000 (UTC)
IronPort-SDR: iKEiWXAi6dh/55P6oCBwmBLtpEeaX23qxdb1Rh99mZ47tfTor+muVWC2tDpTfceBUq0C69H1Fj
 XNKTi7D66xNA==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="167614891"
X-IronPort-AV: E=Sophos;i="5.77,470,1596524400"; d="scan'208";a="167614891"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 11:00:44 -0800
IronPort-SDR: 6v1kUR2XjavzkTMOFxsB5Vv3k4K3Q7mpYpX4ihr0cc7j34fyLl+FSr3Nn3PUy97qFCs/iwcKiD
 8BnbpkGkZcUw==
X-IronPort-AV: E=Sophos;i="5.77,470,1596524400"; d="scan'208";a="366336492"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.4])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 11:00:44 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 11 Nov 2020 10:59:15 -0800
Message-Id: <20201111185915.813332-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH] ice: report timeout length for
 erasing during devlink flash
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

When erasing, notify userspace of how long we will potentially take to
erase a module. Doing so allows userspace to report the timeout, giving
a clear indication of the upper time bound of the operation.

Since we're re-using the erase timeout value, make it a macro rather
than a magic number.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fw_update.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 8f81b95e679c..dcec0360ce55 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -417,6 +417,11 @@ ice_write_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 	return err;
 }
 
+/* Length in seconds to wait before timing out when erasing a flash module.
+ * Yes, erasing really can take minutes to complete.
+ */
+#define ICE_FW_ERASE_TIMEOUT 300
+
 /**
  * ice_erase_nvm_module - Erase an NVM module and await firmware completion
  * @pf: the PF data structure
@@ -449,7 +454,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 
 	devlink = priv_to_devlink(pf);
 
-	devlink_flash_update_status_notify(devlink, "Erasing", component, 0, 0);
+	devlink_flash_update_timeout_notify(devlink, "Erasing", component, ICE_FW_ERASE_TIMEOUT);
 
 	status = ice_aq_erase_nvm(hw, module, NULL);
 	if (status) {
@@ -461,8 +466,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 		goto out_notify_devlink;
 	}
 
-	/* Yes, this really can take minutes to complete */
-	err = ice_aq_wait_for_event(pf, ice_aqc_opc_nvm_erase, 300 * HZ, &event);
+	err = ice_aq_wait_for_event(pf, ice_aqc_opc_nvm_erase, ICE_FW_ERASE_TIMEOUT * HZ, &event);
 	if (err) {
 		dev_err(dev, "Timed out waiting for firmware to respond with erase completion for %s (module 0x%02x), err %d\n",
 			component, module, err);

base-commit: 6a4868314a36d2580a87ade92e2d3f302eec3f03
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
