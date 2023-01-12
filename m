Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D2A667AC6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 17:28:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A3C3F40165;
	Thu, 12 Jan 2023 16:28:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3C3F40165
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673540898;
	bh=Xl638hNYQ6ZyX/ggIJ4QIGWrMYXmtnx9HMNVOhZTc/w=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FDNODOTkDBRWW7lPPRUJvN+rlTIb8e5qkMGgjs+3DvmJd/UQZ1SdGQbehtZHOtVdp
	 wW7v5zrYMuuwkpaxnC/OZDuPrK4af7O2L3ntM1EJLa/yYTW7N9jyfb/eU2Q2PEwgbe
	 uf4PvgG5ZULMSwq424r885CODdvkEzcZVUSZmXPfbOpVnpfET2/zI0Nc6rv9ig75dN
	 +D6ShAkTmWd4dfGcf2uqQdE9Xr9oNHoL80Ad+34xavQoiiC77I7AhT8aLPBrQUDrCe
	 7WMWjEEItvfrYlb7n3HAVsclu5UkFWEA/FAs/EZ5ImKuGydsnKvK8owxIGYqoV2a5G
	 mwo/oi8S91xIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bDzKILjjjukI; Thu, 12 Jan 2023 16:28:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8EB484018B;
	Thu, 12 Jan 2023 16:28:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8EB484018B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 20DB41BF475
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 15:18:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EE63481E0D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 15:18:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE63481E0D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1ohTgvDc_PKB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 15:18:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0088281E0C
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0088281E0C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 15:18:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="307264782"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="307264782"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 06:53:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="800233590"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="800233590"
Received: from amlin-019-051.igk.intel.com ([10.102.19.51])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jan 2023 06:53:28 -0800
From: Karen Ostrowska <karen.ostrowska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 12 Jan 2023 15:54:34 +0100
Message-Id: <20230112145434.770847-1-karen.ostrowska@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 12 Jan 2023 16:28:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673536696; x=1705072696;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Xk7arXu2TvehaSNGHkozi6QgdtZqhBxprfsyH/iOOWs=;
 b=lncb2k7g+LVUvoQ+wpzWOEGBc6ZjXo5KQADo2Pt9ay4MHriwiOUrKlID
 tbJVY8H8tVgEdfMRq3IThqGoGeZkO6cXrkVPva5osNHrPz1Q4Zj4qSd84
 vQiV1J7XqN3T61BdNm8kV/wsej8UY4ZwbliRYJVc4QU6u5q9jisepFFxU
 H04k/IWmFFb/5M8sZJK5d0Z9eGOj3fgpsw275EY7RhjzDT50pDIH1R25D
 3/vI79nvCuLUF/UY1hRiwokb7L7oe9zMnbsioFQ9097ciHeOXU3JDfgGG
 FWZM25DhYkZeHIokBR8eZdpO2LxkZF6jpoH8oC4YIVvsTASSE6zaG2hJE
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lncb2k7g
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix disabling Rx VLAN
 filtering with port VLAN enabled
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
Cc: Karen Ostrowska <karen.ostrowska@intel.com>,
 Brett Creeley <brett.creeley@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

If the user turns on the vf-true-promiscuous-support flag, then Rx VLAN
filtering will be disabled if the VF requests to enable promiscuous
mode. When the VF is in a port VLAN, this is the incorrect behavior
because it will allow the VF to receive traffic outside of its port VLAN
domain. Fortunately this only resulted in the VF(s) receiving broadcast
traffic outside of the VLAN domain because all of the VLAN promiscuous
rules are based on the port VLAN ID. Fix this by setting the
.disable_rx_filtering VLAN op to a no-op when a port VLAN is enabled on
the VF.

Also, make sure to make this fix for both Single VLAN Mode and Double
VLAN Mode enabled devices.

Fixes: c31af68a1b94 ("ice: Add outer_vlan_ops and VSI specific VLAN ops
implementations")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
---
 .../net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
index 5ecc0ee9a78e..b1ffb81893d4 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_vsi_vlan_ops.c
@@ -44,13 +44,17 @@ void ice_vf_vsi_init_vlan_ops(struct ice_vsi *vsi)
 
 		/* outer VLAN ops regardless of port VLAN config */
 		vlan_ops->add_vlan = ice_vsi_add_vlan;
-		vlan_ops->dis_rx_filtering = ice_vsi_dis_rx_vlan_filtering;
 		vlan_ops->ena_tx_filtering = ice_vsi_ena_tx_vlan_filtering;
 		vlan_ops->dis_tx_filtering = ice_vsi_dis_tx_vlan_filtering;
 
 		if (ice_vf_is_port_vlan_ena(vf)) {
 			/* setup outer VLAN ops */
 			vlan_ops->set_port_vlan = ice_vsi_set_outer_port_vlan;
+			/* all Rx traffic should be in the domain of the
+			 * assigned port VLAN, so prevent disabling Rx VLAN
+			 * filtering
+			 */
+			vlan_ops->dis_rx_filtering = noop_vlan;
 			vlan_ops->ena_rx_filtering =
 				ice_vsi_ena_rx_vlan_filtering;
 
@@ -63,6 +67,9 @@ void ice_vf_vsi_init_vlan_ops(struct ice_vsi *vsi)
 			vlan_ops->ena_insertion = ice_vsi_ena_inner_insertion;
 			vlan_ops->dis_insertion = ice_vsi_dis_inner_insertion;
 		} else {
+			vlan_ops->dis_rx_filtering =
+				ice_vsi_dis_rx_vlan_filtering;
+
 			if (!test_bit(ICE_FLAG_VF_VLAN_PRUNING, pf->flags))
 				vlan_ops->ena_rx_filtering = noop_vlan;
 			else
@@ -96,7 +103,14 @@ void ice_vf_vsi_init_vlan_ops(struct ice_vsi *vsi)
 			vlan_ops->set_port_vlan = ice_vsi_set_inner_port_vlan;
 			vlan_ops->ena_rx_filtering =
 				ice_vsi_ena_rx_vlan_filtering;
+			/* all Rx traffic should be in the domain of the
+			 * assigned port VLAN, so prevent disabling Rx VLAN
+			 * filtering
+			 */
+			vlan_ops->dis_rx_filtering = noop_vlan;
 		} else {
+			vlan_ops->dis_rx_filtering =
+				ice_vsi_dis_rx_vlan_filtering;
 			if (!test_bit(ICE_FLAG_VF_VLAN_PRUNING, pf->flags))
 				vlan_ops->ena_rx_filtering = noop_vlan;
 			else
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
