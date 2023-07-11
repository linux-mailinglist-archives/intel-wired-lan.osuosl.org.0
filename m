Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F03A974E82E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 09:37:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 32B6D408D5;
	Tue, 11 Jul 2023 07:37:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32B6D408D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689061072;
	bh=MPEYRx6GbWad89wYagSq9DP0wg7Ka8wnwd6gmNbEqXw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=cvuHaIQXp7xbhTXgz7kPGI+CVpgZQitEMXKLBp8rV+8bgo5MM6vGL3zoiDT7lLsK8
	 8Bk1auwHIZ937tWg9bbPigeKQ61FSCLX0tddatpOjho2oCtjTWxpfEkmGKqjoCnfUC
	 /+RImWAV5RcvJpzzx9YnTyNrNUTR0Q6El45snRTsodJ9PxQDCghuvetsmCrx16Gmj2
	 P8Ut9lMfyHJ1ByedfsewxvF5HRrlXxtEnjEW+RZDvqBzITADZgsrITAc/VDlaYxasn
	 sfv8cB1G80dQkX+br4qwlgWeJBPb4dWU32b9xFDvi1cg0phZ+MBaNayGWxuO4oNzxV
	 YfbqdUM58s11w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 08k8jF37Cm-n; Tue, 11 Jul 2023 07:37:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1663C40272;
	Tue, 11 Jul 2023 07:37:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1663C40272
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 29C071BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 07:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F42044185C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 07:37:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F42044185C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cMXLuax_hcXH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 07:37:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91518417E3
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 91518417E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 07:37:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="368051372"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="368051372"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 00:37:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="1051680351"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="1051680351"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by fmsmga005.fm.intel.com with ESMTP; 11 Jul 2023 00:37:41 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 11 Jul 2023 09:37:37 +0200
Message-Id: <20230711073737.98761-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689061064; x=1720597064;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k9FMtRltKA+i7HcqleLeVx1mPVbNdSsl7gEoIP2xQfg=;
 b=QS8h4M0DKL/euCY0aCAG9BZwEVS7dZowjzB/NXGyqHnKlMJ1PO22UYdt
 g126hvg2wMUZV+2mRKPJ8aHBsIKq8RJAIUmezaND9glt38M/G1X4KyX16
 m6ujvjqxUPKRzBnp+2BzIJdd+kqW0bjTg6RuQcR2y9wouEsdA/dSP/3D9
 oZDqyHsQCGP0ucolPEspl1xDVpx23K0wUMNlzeUSSXfblSY2rJeTm3CCI
 ckvxq/Go3e/Cg4PHEwTFG9vl5KqyamDeC8qhOvxceDtDlSPQoL9C1QdHM
 2VtPZqptIySvzG41V1hCcUnzHCqWkkM47gaHdq783fkUjLu9yMvDjpRlu
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QS8h4M0D
Subject: [Intel-wired-lan] [PATCH iwl-net v1] i40e: Fix VF reset recognition
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
Cc: Dawid Wesierski <dawidx.wesierski@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Dawid Wesierski <dawidx.wesierski@intel.com>

Fix the issue with i40e_trigger_vf_reset() by preventing it from
resetting the VF while it is still resetting itself and initializing
adminq's. This will avoid a series of -53 errors (failed to init adminq)
from the IAVF.

Change the state of the vf_state field to not be active when the IAVF
requests a reset. This will prevent any potential issues caused by
resetting the VF too early, as we cannot know the exact state
of the IAVF driver until we receive the message on the message box.

Fixes: 2d166c304065 ("i40e: change log messages and error returns")
Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_virtchnl_pf.c   | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 8a4587585acd..3fb550cf4e17 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1502,7 +1502,6 @@ static void i40e_cleanup_reset_vf(struct i40e_vf *vf)
 	if (!i40e_alloc_vf_res(vf)) {
 		int abs_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
 		i40e_enable_vf_mappings(vf);
-		set_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states);
 		clear_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
 		/* Do not notify the client during VF init */
 		if (!test_and_clear_bit(I40E_VF_STATE_PRE_ENABLE,
@@ -4079,6 +4078,7 @@ int i40e_vc_process_vf_msg(struct i40e_pf *pf, s16 vf_id, u32 v_opcode,
 		i40e_vc_notify_vf_link_state(vf);
 		break;
 	case VIRTCHNL_OP_RESET_VF:
+		clear_bit(I40E_VF_STATE_ACTIVE, &pf->vf->vf_states);
 		i40e_vc_reset_vf(vf, false);
 		ret = 0;
 		break;
@@ -4281,12 +4281,14 @@ int i40e_ndo_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 			break;
 		msleep(20);
 	}
-	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
+	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states) ||
+	    !test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
 		dev_err(&pf->pdev->dev, "VF %d still in reset. Try again.\n",
 			vf_id);
 		ret = -EAGAIN;
 		goto error_param;
 	}
+
 	vsi = pf->vsi[vf->lan_vsi_idx];
 
 	if (is_multicast_ether_addr(mac)) {
@@ -4386,7 +4388,8 @@ int i40e_ndo_set_vf_port_vlan(struct net_device *netdev, int vf_id,
 
 	vf = &pf->vf[vf_id];
 	vsi = pf->vsi[vf->lan_vsi_idx];
-	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
+	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states) ||
+	    !test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
 		dev_err(&pf->pdev->dev, "VF %d still in reset. Try again.\n",
 			vf_id);
 		ret = -EAGAIN;
@@ -4775,6 +4778,13 @@ int i40e_ndo_set_vf_trust(struct net_device *netdev, int vf_id, bool setting)
 	if (setting == vf->trusted)
 		goto out;
 
+	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
+		dev_err(&pf->pdev->dev, "VF %d still in reset. Try again.\n",
+			vf_id);
+		ret = -EAGAIN;
+		goto out;
+	}
+
 	vf->trusted = setting;
 
 	/* request PF to sync mac/vlan filters for the VF */
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
