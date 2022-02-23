Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE564C061A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:28:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3B4860BE8;
	Wed, 23 Feb 2022 00:28:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id djF6K0Xkl5Ar; Wed, 23 Feb 2022 00:28:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D002C600D1;
	Wed, 23 Feb 2022 00:28:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 91BA41BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C2AC408D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cXgJ8idTWH5k for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D750340988
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576045; x=1677112045;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oxRqMCmDvNmPvosG0BqDY/NIFpAnpFKB92tOcBd+qd0=;
 b=WRs7pUELgA4AgJ8wTLyEQxzz56/3L9qAOy2exX2UU7hdo2DrYPlr7A8O
 6ebCttBqC6YWS3XH7B4S4BfUrgD5oGvWEMxeJ7V/r37kKVtOq4CJyqkep
 txXsT0UCf7keGCxDPbVk9l/i3qr7FPa+a1xqcHT7BdAilTB1vNIZZmNER
 wLBf1fIhnW6py2IKm72m2fOt1fmEXuCwmaHSYUovaYq8yagNusw7e3GNF
 h5vhgBP45FpMVFdyc7QM3aDlkP85mWB0irFe1EiuidN58ujtdzsQQBAkZ
 1cK45kVqWDFQNx2RJitz5PA2PFLH6eZLVoIqndx7YX/0FlMrbHHUcfO8L Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="239235839"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="239235839"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728051"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:19 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:27:06 -0800
Message-Id: <20220223002712.2771809-20-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 19/25] ice: convert ice_reset_vf
 to standard error codes
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

The ice_reset_vf function returns a boolean value indicating whether or
not the VF reset. This is a bit confusing since it means that callers
need to know how to interpret the return value when needing to indicate
an error.

Refactor the function and call sites to report a regular error code. We
still report success (i.e. return 0) in cases where the reset is in
progress or is disabled.

Existing callers don't care because they do not check the return value.
We keep the error code anyways instead of a void return because we
expect future code which may care about or at least report the error
value.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 15 ++++++++-------
 drivers/net/ethernet/intel/ice/ice_vf_lib.h |  6 +++---
 2 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 6f9e8383c69b..d37232197bde 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -446,10 +446,11 @@ void ice_reset_all_vfs(struct ice_pf *pf)
  * @vf: pointer to the VF structure
  * @is_vflr: true if VFLR was issued, false if not
  *
- * Returns true if the VF is currently in reset, resets successfully, or resets
- * are disabled and false otherwise.
+ * Returns 0 if the VF is currently in reset, if the resets are disabled, or
+ * if the VF resets successfully. Returns an error code if the VF fails to
+ * rebuild.
  */
-bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
+int ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 {
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
@@ -466,13 +467,13 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 	if (test_bit(ICE_VF_RESETS_DISABLED, pf->state)) {
 		dev_dbg(dev, "Trying to reset VF %d, but all VF resets are disabled\n",
 			vf->vf_id);
-		return true;
+		return 0;
 	}
 
 	if (ice_is_vf_disabled(vf)) {
 		dev_dbg(dev, "VF is already disabled, there is no need for resetting it, telling VM, all is fine %d\n",
 			vf->vf_id);
-		return true;
+		return 0;
 	}
 
 	/* Set VF disable bit state here, before triggering reset */
@@ -532,7 +533,7 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 	if (vf->vf_ops->vsi_rebuild(vf)) {
 		dev_err(dev, "Failed to release and setup the VF%u's VSI\n",
 			vf->vf_id);
-		return false;
+		return -EFAULT;
 	}
 
 	vf->vf_ops->post_vsi_rebuild(vf);
@@ -546,7 +547,7 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 		dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
 			vf->vf_id);
 
-	return true;
+	return 0;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index fa40d607d1c7..b569186b248b 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -212,7 +212,7 @@ int
 ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
 int
 ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
-bool ice_reset_vf(struct ice_vf *vf, bool is_vflr);
+int ice_reset_vf(struct ice_vf *vf, bool is_vflr);
 void ice_reset_all_vfs(struct ice_pf *pf);
 #else /* CONFIG_PCI_IOV */
 static inline struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
@@ -270,9 +270,9 @@ ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
 	return -EOPNOTSUPP;
 }
 
-static inline bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
+static inline int ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 {
-	return true;
+	return 0;
 }
 
 static inline void ice_reset_all_vfs(struct ice_pf *pf)
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
