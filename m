Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0542566E374
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 17:23:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 967CB80DA8;
	Tue, 17 Jan 2023 16:23:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 967CB80DA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673972616;
	bh=Tf3hsMbq/6epsEXjIe0OOoRK67JBWCST5PDl50awIbI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=jH8mrfkS3iuB0fccbEL0NHJ/gLxK56b0syBP3BQh2JzVy1dx1R2PTbEa4pMy3fbVA
	 9q6o/Xw/igLZ71JEyPYZrHOxs3qHIgAxpQuR24EktwO3EDTq8H3X4UVFFgcmYRCbfl
	 vaUDN7YazX7IACTXjwjayFJbHmccED7F/+D2/QMMZPthRETlejkuVc7kNLJ3G+C8Xn
	 34MP+SK+x2CkzV9wKoTrwgqL85HYZ8hOSZw+lgeBaEkmt7/F1CKrjrsg2+H/0OX+5Y
	 WDmCaghW0ZFN08fkKDE9GamGNeP9JCxUGNGGHrbAwbJzNGS4fOKrL8WHv77vIDZcaR
	 P2h9C9awV0b3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8JZ2PXtwE7fw; Tue, 17 Jan 2023 16:23:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8607580C46;
	Tue, 17 Jan 2023 16:23:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8607580C46
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7BD491BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 12:33:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 565D960A65
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 12:33:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 565D960A65
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ULxa82jCo9ad for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jan 2023 12:33:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 058B860ABB
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 058B860ABB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 12:33:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="324514047"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="324514047"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 04:33:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="747718047"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="747718047"
Received: from amlin-019-051.igk.intel.com ([10.102.19.51])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Jan 2023 04:33:50 -0800
From: Karen Ostrowska <karen.ostrowska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 16 Jan 2023 13:34:58 +0100
Message-Id: <20230116123458.1107114-1-karen.ostrowska@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 17 Jan 2023 16:23:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673872432; x=1705408432;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o5CBj83muoE7fNUAmYbVBuw9kpnLcOs7X0621VtMvOA=;
 b=eQA+EFA71Aq/JA1ZPltFd5kDm6sPrte/rCiyQoFsUSTsXr8dIwHzV21n
 6/1KDGpLQ4Sh5iHGE2LPO7UNKwC4fjjD3svYS1t7jZ0ZUic0YqA4rzZsd
 OoneHr1667lRaHVDACnO4H5YorpmfZ5DYjtZncoFd9ZnH+kCCHzZ0SVP4
 pbzLzmcP+XLMZp1yzTGX/dHnctnbIGNEwo8TIaWxKx4OW+50ymnIbplZr
 +99dmXTOby6fIA2AOXC8qHf8PMi2HOLPabvcU9rQU9gZpjwa1BEpqg0+G
 dpsrUJ5FVEz4Lpq6e1UKoCpOK8CJ9Lo80zzPsWNOJlwYu5ZJHZhKixKS1
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eQA+EFA7
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

Fixes: c31af68a1b94 ("ice: Add outer_vlan_ops and VSI specific VLAN ops implementations")
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
