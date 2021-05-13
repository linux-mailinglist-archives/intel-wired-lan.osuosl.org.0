Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AC637F44F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 May 2021 10:44:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4915240305;
	Thu, 13 May 2021 08:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kzm714Pli-zq; Thu, 13 May 2021 08:43:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0FAA84024C;
	Thu, 13 May 2021 08:43:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 413411BF309
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 May 2021 08:43:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3BBD84032F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 May 2021 08:43:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sC3M5jfD4Xvr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 May 2021 08:43:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A9BC400AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 May 2021 08:43:43 +0000 (UTC)
IronPort-SDR: i2Hb6AxYsDae2S2CzIi8OASvUtOFWJAh9R/qUhYp09k3Oz9zCkg9hB6MbDtx8F+CSint11e8Ln
 1DsryjfIUoAA==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="187030775"
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="187030775"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 01:43:37 -0700
IronPort-SDR: QNd76apUK+cltWsBrsAl3+AFJ2i/gBbfos/bAU7ecgVDPmAqGpkmYl7uxOylvUZttkOaud9NLR
 Fp1YPKB1KyHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="392218969"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by orsmga003.jf.intel.com with ESMTP; 13 May 2021 01:43:34 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 May 2021 08:42:53 +0000
Message-Id: <20210513084253.19964-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] ixgbe: fix large MTU request from
 VF
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
Cc: eryk.roch.rybak@intel.com,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Piotr Skajewski <piotrx.skajewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

Check that the MTU value requested by the VF is in the supported
range of MTUs before attempting to set the VF large packet enable,
otherwise reject the request. This also avoids unnecessary
register updates in the case of the 82599 controller.

Fixes: 872844ddb9e4 ("ixgbe: Enable jumbo frames support w/ SR-IOV")
Co-developed-by: Piotr Skajewski <piotrx.skajewski@intel.com>
Signed-off-by: Piotr Skajewski <piotrx.skajewski@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Co-developed-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Changed hard coded 68 value to ETH_MIN_MTU
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index 988db46..75921cd 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -467,12 +467,16 @@ static int ixgbe_set_vf_vlan(struct ixgbe_adapter *adapter, int add, int vid,
 	return err;
 }
 
-static s32 ixgbe_set_vf_lpe(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
+static int ixgbe_set_vf_lpe(struct ixgbe_adapter *adapter, u32 max_frame, u32 vf)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
-	int max_frame = msgbuf[1];
 	u32 max_frs;
 
+	if (max_frame < ETH_MIN_MTU || max_frame > IXGBE_MAX_JUMBO_FRAME_SIZE) {
+		e_err(drv, "VF max_frame %d out of range\n", max_frame);
+		return -EINVAL;
+	}
+
 	/*
 	 * For 82599EB we have to keep all PFs and VFs operating with
 	 * the same max_frame value in order to avoid sending an oversize
@@ -533,12 +537,6 @@ static s32 ixgbe_set_vf_lpe(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
 		}
 	}
 
-	/* MTU < 68 is an error and causes problems on some kernels */
-	if (max_frame > IXGBE_MAX_JUMBO_FRAME_SIZE) {
-		e_err(drv, "VF max_frame %d out of range\n", max_frame);
-		return -EINVAL;
-	}
-
 	/* pull current max frame size from hardware */
 	max_frs = IXGBE_READ_REG(hw, IXGBE_MAXFRS);
 	max_frs &= IXGBE_MHADD_MFS_MASK;
@@ -1249,7 +1247,7 @@ static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 		retval = ixgbe_set_vf_vlan_msg(adapter, msgbuf, vf);
 		break;
 	case IXGBE_VF_SET_LPE:
-		retval = ixgbe_set_vf_lpe(adapter, msgbuf, vf);
+		retval = ixgbe_set_vf_lpe(adapter, msgbuf[1], vf);
 		break;
 	case IXGBE_VF_SET_MACVLAN:
 		retval = ixgbe_set_vf_macvlan_msg(adapter, msgbuf, vf);
-- 
2.18.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
