Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2D121E1C4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2020 22:57:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C493527E3E;
	Mon, 13 Jul 2020 20:57:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MLX1-xfrkhSQ; Mon, 13 Jul 2020 20:57:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E515D264B4;
	Mon, 13 Jul 2020 20:57:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C8861BF976
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 49AEB891AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id abhr3wv5yBoB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 89BC987525
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
IronPort-SDR: 7bbT4TNeSmHNY2jxkxzCR40ilDdAcPIJx01K7VFR2wo8XR95AoqMS284JllpDNOn+mjtGjhoxf
 zSCiX6zrN9MA==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="213545910"
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="213545910"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 13:57:08 -0700
IronPort-SDR: zwjo1cqX3hDnslR9/P+SXO78Z4ZNGB2Idv7t7xmRse+gt7utbh+wkKnCtewJV7ZdMCVinSV2LJ
 hiQmZExDb/Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="285526687"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 13 Jul 2020 13:57:08 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Jul 2020 13:53:09 -0700
Message-Id: <20200713205318.32425-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S50 06/15] ice: fix overwriting TX/RX
 descriptor values when rebuilding VSI
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

From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>

If a user sets the value of the TX or RX descriptors to some non-default
value using 'ethtool -G' then we need to not overwrite the values when
we rebuild the VSI. The VSI rebuild could happen as a result of a user
setting the number of queues via the 'ethtool -L' command. Fix this by
checking to see if the value we have stored is non-zero and if it is
then don't change the value.

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 01d742400f7f..aa77bedb61e4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -127,8 +127,14 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
 	case ICE_VSI_PF:
 	case ICE_VSI_CTRL:
 	case ICE_VSI_LB:
-		vsi->num_rx_desc = ICE_DFLT_NUM_RX_DESC;
-		vsi->num_tx_desc = ICE_DFLT_NUM_TX_DESC;
+		/* a user could change the values of num_[tr]x_desc using
+		 * ethtool -G so we should keep those values instead of
+		 * overwriting them with the defaults.
+		 */
+		if (!vsi->num_rx_desc)
+			vsi->num_rx_desc = ICE_DFLT_NUM_RX_DESC;
+		if (!vsi->num_tx_desc)
+			vsi->num_tx_desc = ICE_DFLT_NUM_TX_DESC;
 		break;
 	default:
 		dev_dbg(ice_pf_to_dev(vsi->back), "Not setting number of Tx/Rx descriptors for VSI type %d\n",
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
