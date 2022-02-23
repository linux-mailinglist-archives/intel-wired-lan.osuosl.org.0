Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CA14C0606
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:28:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEC308144C;
	Wed, 23 Feb 2022 00:28:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2snOpHIkB_Eg; Wed, 23 Feb 2022 00:28:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEE968125B;
	Wed, 23 Feb 2022 00:28:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 730971BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4C557400AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TvRGfL47Rao0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 784E94026A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576041; x=1677112041;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pht1OCUeuE+XI6uAm2Hy+DB9NZvE6pyRy3yUsQzxqeQ=;
 b=VmUmfM1DsCDh74ebwQI6JJ55ghMVmIRrqubIfXdYVSyJD+cWmJ7NCSr+
 OaWrYdrFYjpgF6QpXFE+/2pNdQEZKZVSqaglV9EdawcLW85HyUHymR3ss
 XdVpNGImHGPSG8mH+YoRORJEvI5F4ZKWFujk1xyCefF9YpFr6bKrXK09K
 EJ0UTUDEvLyv9zJa7CHnaWC/G33PFMfMGHlK0cG2gGuhCGNQw0NK9vB1r
 7eBxdhL00I9AzAo7wexNonxcuDv7sZEARMhYAj+lxUkWHjToF++3rA9BV
 TwAP9ax7T79ggNTLwa2e6zym0Y1/5xcGrIAizQnjcs58ZIXoiugjV5dd1 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232468978"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="232468978"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728026"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:26:58 -0800
Message-Id: <20220223002712.2771809-12-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 11/25] ice: use ice_is_vf_trusted
 helper function
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

The ice_vc_cfg_promiscuous_mode_msg function directly checks
ICE_VIRTCHNL_VF_CAP_PRIVILEGE, instead of using the existing helper
function ice_is_vf_trusted. Switch this to use the helper function so
that all trusted checks are consistent. This aids in any potential
future refactor by ensuring consistent code.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index d41fce16ddfb..432841ab4352 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -3148,6 +3148,15 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 	return ret;
 }
 
+/**
+ * ice_is_vf_trusted
+ * @vf: pointer to the VF info
+ */
+static bool ice_is_vf_trusted(struct ice_vf *vf)
+{
+	return test_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
+}
+
 /**
  * ice_is_any_vf_in_promisc - check if any VF(s) are in promiscuous mode
  * @pf: PF structure for accessing VF(s)
@@ -3212,7 +3221,7 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 	dev = ice_pf_to_dev(pf);
-	if (!test_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps)) {
+	if (!ice_is_vf_trusted(vf)) {
 		dev_err(dev, "Unprivileged VF %d is attempting to configure promiscuous mode\n",
 			vf->vf_id);
 		/* Leave v_ret alone, lie to the VF on purpose. */
@@ -3862,15 +3871,6 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 				     NULL, 0);
 }
 
-/**
- * ice_is_vf_trusted
- * @vf: pointer to the VF info
- */
-static bool ice_is_vf_trusted(struct ice_vf *vf)
-{
-	return test_bit(ICE_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
-}
-
 /**
  * ice_can_vf_change_mac
  * @vf: pointer to the VF info
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
