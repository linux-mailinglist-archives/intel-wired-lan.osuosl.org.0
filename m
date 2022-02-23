Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 878FB4C05EE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:27:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C850B4026A;
	Wed, 23 Feb 2022 00:27:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 56RXmP3Wwkjp; Wed, 23 Feb 2022 00:27:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E77740207;
	Wed, 23 Feb 2022 00:27:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 13C8F1BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F59F60F13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nc2rX8uEN8rl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7EE8B60B6A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576040; x=1677112040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=daNDGzFP1sSomyZ5gXRnHmKRN2qJC8H6qung2UHvywQ=;
 b=WdeS7XjME00A5H9/YBKUTv7oVMPoRemZASTuT5Pk6Y0X2Ptdq+5w5qRl
 gSJIFNLkYFSVC9sj2RWLZx8KmSHNJ5d/QVJSYjYhemvE8LgwipKwN9fe1
 dQeZHHyMKOjyG55arKjdCJE38ukz2RoaQol4DIWHrIJr0YjLrR+iA+kDH
 Z6r2NMKAyqHqdjzziUFEInXmVIM+5++5J12MnhHV5siIMgu21PC2fN7pV
 53zC/IeVp0S/a8nfueVVQ/yx87//iFLMp1AvWmy/mJGZAWrQhb3X5zWap
 yxxUjSmIPRsrHxRbmF5BjEoIFH/pacX+RBNHhFgApOV4eyu+Aof0Pn2tE g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232468969"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="232468969"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728008"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:26:52 -0800
Message-Id: <20220223002712.2771809-6-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 05/25] ice: remmove unused
 definitions from ice_sriov.h
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

A few more macros exist in ice_sriov.h which are not used anywhere.
These can be safely removed. Note that ICE_VIRTCHNL_VF_CAP_L2 capability
is set but never checked anywhere in the driver. Thus it is also safe to
remove.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 1 -
 drivers/net/ethernet/intel/ice/ice_sriov.h | 7 +------
 2 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 8578317ceb8a..205d7e5003d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -2012,7 +2012,6 @@ static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
 
 		vf->vf_sw_id = pf->first_sw;
 		/* assign default capabilities */
-		set_bit(ICE_VIRTCHNL_VF_CAP_L2, &vf->vf_caps);
 		vf->spoofchk = true;
 		vf->num_vf_qs = pf->vfs.num_qps_per;
 		ice_vc_set_default_allowlist(vf);
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index 01b6b08a73d8..525e3f0819e8 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -13,9 +13,6 @@
  */
 #define ICE_MAX_MACADDR_PER_VF		18
 
-/* Malicious Driver Detection */
-#define ICE_MDD_EVENTS_THRESHOLD		30
-
 /* Static VF transaction/status register def */
 #define VF_DEVICE_STATUS		0xAA
 #define VF_TRANS_PENDING_M		0x20
@@ -28,7 +25,6 @@
 #define ICE_MAX_VF_COUNT		256
 #define ICE_MIN_QS_PER_VF		1
 #define ICE_NONQ_VECS_VF		1
-#define ICE_MAX_SCATTER_QS_PER_VF	16
 #define ICE_MAX_RSS_QS_PER_VF		16
 #define ICE_NUM_VF_MSIX_MED		17
 #define ICE_NUM_VF_MSIX_SMALL		5
@@ -95,8 +91,7 @@ enum ice_vf_states {
 
 /* VF capabilities */
 enum ice_virtchnl_cap {
-	ICE_VIRTCHNL_VF_CAP_L2 = 0,
-	ICE_VIRTCHNL_VF_CAP_PRIVILEGE,
+	ICE_VIRTCHNL_VF_CAP_PRIVILEGE = 0,
 };
 
 struct ice_time_mac {
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
