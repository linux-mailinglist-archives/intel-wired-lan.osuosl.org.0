Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA8C4C0613
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:28:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A908F402BB;
	Wed, 23 Feb 2022 00:28:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2O1lb7WUyxDp; Wed, 23 Feb 2022 00:28:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A12494018B;
	Wed, 23 Feb 2022 00:28:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 145DF1BF9BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AB1FC40917
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KFRAR_QsyDs9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D4E81408F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576045; x=1677112045;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EDSVHXya5Yf7OhQoIB75ZWi3w1b+rY9qG8u9uO+sWjY=;
 b=Zje7Fm7oxq9jdMU3ZWiGL7etoDPheTseNOAxVowfZfk5l337iYv5jAOD
 9QFgS8EvnX5yKWofa7ik4/ZSGBKnRU7/xAfCB7/iYaHgGpOQrqtfyW/Js
 Qpc+t8Af5bSAZzuCet3+lAHoIf+TEcje7KD3D10NPQJlYk+pRL1a3RpzE
 uZIZvb3gQCnvdQGLMXp8bhEsHesbamxGxwnEpB0KtcaBO+nf63A6vS7Rp
 wP8we42k1EPLYItw5Q/ZMH5PQTghQmBpFkWthg8ECQfEYLAGntHeyszd9
 07NPcilaunGEnkq8m/Pa6/wrzZw6Ddw98pXpF/P/LcGQul6GhuOqbSesA Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="239235838"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="239235838"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728048"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:19 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:27:05 -0800
Message-Id: <20220223002712.2771809-19-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 18/25] ice: make
 ice_reset_all_vfs void
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

The ice_reset_all_vfs function returns true if any VFs were reset, and
false otherwise. However, no callers check the return value.

Drop this return value and make the function void since the callers do
not care about this.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 8 +++-----
 drivers/net/ethernet/intel/ice/ice_vf_lib.h | 5 ++---
 2 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 996d84a3303d..6f9e8383c69b 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -364,7 +364,7 @@ ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
  *
  * Returns true if any VFs were reset, and false otherwise.
  */
-bool ice_reset_all_vfs(struct ice_pf *pf)
+void ice_reset_all_vfs(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
@@ -373,7 +373,7 @@ bool ice_reset_all_vfs(struct ice_pf *pf)
 
 	/* If we don't have any VFs, then there is nothing to reset */
 	if (!ice_has_vfs(pf))
-		return false;
+		return;
 
 	mutex_lock(&pf->vfs.table_lock);
 
@@ -387,7 +387,7 @@ bool ice_reset_all_vfs(struct ice_pf *pf)
 	/* If VFs have been disabled, there is no need to reset */
 	if (test_and_set_bit(ICE_VF_DIS, pf->state)) {
 		mutex_unlock(&pf->vfs.table_lock);
-		return false;
+		return;
 	}
 
 	/* Begin reset on all VFs at once */
@@ -439,8 +439,6 @@ bool ice_reset_all_vfs(struct ice_pf *pf)
 	clear_bit(ICE_VF_DIS, pf->state);
 
 	mutex_unlock(&pf->vfs.table_lock);
-
-	return true;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 3ed8a56189d3..fa40d607d1c7 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -213,7 +213,7 @@ ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
 int
 ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
 bool ice_reset_vf(struct ice_vf *vf, bool is_vflr);
-bool ice_reset_all_vfs(struct ice_pf *pf);
+void ice_reset_all_vfs(struct ice_pf *pf);
 #else /* CONFIG_PCI_IOV */
 static inline struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
 {
@@ -275,9 +275,8 @@ static inline bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 	return true;
 }
 
-static inline bool ice_reset_all_vfs(struct ice_pf *pf)
+static inline void ice_reset_all_vfs(struct ice_pf *pf)
 {
-	return true;
 }
 #endif /* !CONFIG_PCI_IOV */
 
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
