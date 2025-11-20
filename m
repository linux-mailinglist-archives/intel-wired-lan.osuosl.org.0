Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BD7C75D7B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 19:00:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6A598473A;
	Thu, 20 Nov 2025 18:00:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YFTZL0vHy6aF; Thu, 20 Nov 2025 18:00:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E98F843B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763661644;
	bh=rGnEDJPHEs3QAgculKPoAo6Vykgmonnc7vjMPiGNYNQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rCeE/PLb+MjNh6uJxF8WMLrBvG6ZKUmSoGIFXZGlLjyS5bBxighdNmFRWPETjk7HV
	 Q7k+E3zfSxEUVe0PTD6cGPnIlFtbNSQfl05ix04uUOD0b2bHGRyhp/gmqmB/3TVop2
	 TtZIfVe6RvL6yhIAqR3j20e6QkP4BIkcqI/SFsOnpoDP91hBsM1jUxvf1U1XmoI0fS
	 LAAKsow31bVhcM910QGerRi+EgW92brC+iBBfmbd2E02mvRmRHNdTZCFZ14/J4WalB
	 R1n+IfWFMKsCQSR+wcdkLdT6ujzvAe1Ueu4ody4kwNGxNqx4oaI+zuDE55iSVH4dpC
	 T8UJr4aJxLWbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E98F843B8;
	Thu, 20 Nov 2025 18:00:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B93462A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 18:00:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B695F405E8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 18:00:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dq5kk3RchrGO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 18:00:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0A1E04034A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A1E04034A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0A1E04034A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 18:00:41 +0000 (UTC)
X-CSE-ConnectionGUID: t5LUPqwgQXWxyYriZDhMlw==
X-CSE-MsgGUID: Bm0EsccPSg2cMMbraLd65Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="83365177"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="83365177"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 10:00:41 -0800
X-CSE-ConnectionGUID: w/UcPlsOT/OVTCH4OMhKOw==
X-CSE-MsgGUID: dMKGtEDBRD61DezxjOZSFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="190671062"
Received: from dmert-mdev.jf.intel.com ([10.166.5.145])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 10:00:41 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Thu, 20 Nov 2025 09:58:26 -0800
Message-ID: <20251120175826.53472-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763661642; x=1795197642;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pnI29DqecMgzwl7I58P4x46eCOE4nbDrbuTbNoPZdqQ=;
 b=WCMGTCgEvgCX6Ymggm8o/YbLcjkMpEwDicj1aSMrQxHp9A9dGqSsqvA1
 k6MU/XfFLK16ydLlphkhGNNAza/04b1b9wQibrCzqmMY4+O6FvjpGYBto
 GbTa9ycViTmjyzGCG/2lwBZ+a2CFRApjzmBL9a6r07CF37yP+m/H9GRwA
 +YNcwQS7HwsK8oj1iyMffMU3dh3jZeZFVVpBPTfZepBA4oyz96swwdqES
 Ptd3xGGt92XiTqKOLw3p1PNebKJ+ZecNYzRSrwe+Y6ylA/tRZEyizQ5vF
 aRcZo2mnFoxYEPKDJ//PKxdVtjVK5snz9cYooJaDxQfjRiEvqj9/ejeot
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WCMGTCgE
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Avoid detrimental cleanup
 for bond during interface stop
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When the user issues an administrative down to an interface that is the
primary for an aggregate bond, the prune lists are being purged. This
breaks communication to the secondary interface, which shares a prune
list on the main switch block while bonded together.

For the primary interface of an aggregate, avoid deleting these prune
lists during stop, and since they are hardcoded to specific values for
the default vlan and QinQ vlans, the attempt to re-add them during the
up phase will quietly fail without any additional problem.

Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on bonded interface")
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 25 ++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 15621707fbf8..b887c45c067c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3805,22 +3805,31 @@ int ice_vsi_add_vlan_zero(struct ice_vsi *vsi)
 int ice_vsi_del_vlan_zero(struct ice_vsi *vsi)
 {
 	struct ice_vsi_vlan_ops *vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
+	struct ice_pf *pf = vsi->back;
 	struct ice_vlan vlan;
 	int err;
 
-	vlan = ICE_VLAN(0, 0, 0);
-	err = vlan_ops->del_vlan(vsi, &vlan);
-	if (err && err != -EEXIST)
-		return err;
+	if (pf->lag && pf->lag->primary) {
+		dev_dbg(ice_pf_to_dev(pf), "Interface is primary in aggregate - not deleting prune list\n");
+	} else {
+		vlan = ICE_VLAN(0, 0, 0);
+		err = vlan_ops->del_vlan(vsi, &vlan);
+		if (err && err != -EEXIST)
+			return err;
+	}
 
 	/* in SVM both VLAN 0 filters are identical */
 	if (!ice_is_dvm_ena(&vsi->back->hw))
 		return 0;
 
-	vlan = ICE_VLAN(ETH_P_8021Q, 0, 0);
-	err = vlan_ops->del_vlan(vsi, &vlan);
-	if (err && err != -EEXIST)
-		return err;
+	if (pf->lag && pf->lag->primary) {
+		dev_dbg(ice_pf_to_dev(pf), "Interface is primary in aggregate - not deleting QinQ prune list\n");
+	} else {
+		vlan = ICE_VLAN(ETH_P_8021Q, 0, 0);
+		err = vlan_ops->del_vlan(vsi, &vlan);
+		if (err && err != -EEXIST)
+			return err;
+	}
 
 	/* when deleting the last VLAN filter, make sure to disable the VLAN
 	 * promisc mode so the filter isn't left by accident
-- 
2.51.0

