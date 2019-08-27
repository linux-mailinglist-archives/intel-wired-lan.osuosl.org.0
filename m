Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 837169F562
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2019 23:43:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F080D88613;
	Tue, 27 Aug 2019 21:43:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iO8Hwwz2-0ab; Tue, 27 Aug 2019 21:43:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 36ABD88630;
	Tue, 27 Aug 2019 21:43:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 727941BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:43:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6FF6686B05
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:43:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CbwqasGlAe0V for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2019 21:43:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2420186AB5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:43:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 14:42:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; d="scan'208";a="174703669"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 27 Aug 2019 14:42:59 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 27 Aug 2019 06:13:54 -0700
Message-Id: <20190827131354.12703-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190827131354.12703-1-anthony.l.nguyen@intel.com>
References: <20190827131354.12703-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S28 9/9] ice: Rework around
 device/function capabilities
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

ice_parse_caps is printing capabilities in a different way when
compared to the variable names. This makes it difficult to search for
the right strings in the debug logs. So this patch updates the
print strings to be exactly the same as the fields' name in the
structure.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 40 ++++++++++-----------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index e8397e5b6267..8b2c46615834 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1551,29 +1551,29 @@ ice_parse_caps(struct ice_hw *hw, void *buf, u32 cap_count,
 		case ICE_AQC_CAPS_VALID_FUNCTIONS:
 			caps->valid_functions = number;
 			ice_debug(hw, ICE_DBG_INIT,
-				  "%s: valid functions = %d\n", prefix,
+				  "%s: valid_functions (bitmap) = %d\n", prefix,
 				  caps->valid_functions);
 			break;
 		case ICE_AQC_CAPS_SRIOV:
 			caps->sr_iov_1_1 = (number == 1);
 			ice_debug(hw, ICE_DBG_INIT,
-				  "%s: SR-IOV = %d\n", prefix,
+				  "%s: sr_iov_1_1 = %d\n", prefix,
 				  caps->sr_iov_1_1);
 			break;
 		case ICE_AQC_CAPS_VF:
 			if (dev_p) {
 				dev_p->num_vfs_exposed = number;
 				ice_debug(hw, ICE_DBG_INIT,
-					  "%s: VFs exposed = %d\n", prefix,
+					  "%s: num_vfs_exposed = %d\n", prefix,
 					  dev_p->num_vfs_exposed);
 			} else if (func_p) {
 				func_p->num_allocd_vfs = number;
 				func_p->vf_base_id = logical_id;
 				ice_debug(hw, ICE_DBG_INIT,
-					  "%s: VFs allocated = %d\n", prefix,
+					  "%s: num_allocd_vfs = %d\n", prefix,
 					  func_p->num_allocd_vfs);
 				ice_debug(hw, ICE_DBG_INIT,
-					  "%s: VF base_id = %d\n", prefix,
+					  "%s: vf_base_id = %d\n", prefix,
 					  func_p->vf_base_id);
 			}
 			break;
@@ -1581,17 +1581,17 @@ ice_parse_caps(struct ice_hw *hw, void *buf, u32 cap_count,
 			if (dev_p) {
 				dev_p->num_vsi_allocd_to_host = number;
 				ice_debug(hw, ICE_DBG_INIT,
-					  "%s: num VSI alloc to host = %d\n",
+					  "%s: num_vsi_allocd_to_host = %d\n",
 					  prefix,
 					  dev_p->num_vsi_allocd_to_host);
 			} else if (func_p) {
 				func_p->guar_num_vsi =
 					ice_get_num_per_func(hw, ICE_MAX_VSI);
 				ice_debug(hw, ICE_DBG_INIT,
-					  "%s: num guaranteed VSI (fw) = %d\n",
+					  "%s: guar_num_vsi (fw) = %d\n",
 					  prefix, number);
 				ice_debug(hw, ICE_DBG_INIT,
-					  "%s: num guaranteed VSI = %d\n",
+					  "%s: guar_num_vsi = %d\n",
 					  prefix, func_p->guar_num_vsi);
 			}
 			break;
@@ -1600,56 +1600,56 @@ ice_parse_caps(struct ice_hw *hw, void *buf, u32 cap_count,
 			caps->active_tc_bitmap = logical_id;
 			caps->maxtc = phys_id;
 			ice_debug(hw, ICE_DBG_INIT,
-				  "%s: DCB = %d\n", prefix, caps->dcb);
+				  "%s: dcb = %d\n", prefix, caps->dcb);
 			ice_debug(hw, ICE_DBG_INIT,
-				  "%s: active TC bitmap = %d\n", prefix,
+				  "%s: active_tc_bitmap = %d\n", prefix,
 				  caps->active_tc_bitmap);
 			ice_debug(hw, ICE_DBG_INIT,
-				  "%s: TC max = %d\n", prefix, caps->maxtc);
+				  "%s: maxtc = %d\n", prefix, caps->maxtc);
 			break;
 		case ICE_AQC_CAPS_RSS:
 			caps->rss_table_size = number;
 			caps->rss_table_entry_width = logical_id;
 			ice_debug(hw, ICE_DBG_INIT,
-				  "%s: RSS table size = %d\n", prefix,
+				  "%s: rss_table_size = %d\n", prefix,
 				  caps->rss_table_size);
 			ice_debug(hw, ICE_DBG_INIT,
-				  "%s: RSS table width = %d\n", prefix,
+				  "%s: rss_table_entry_width = %d\n", prefix,
 				  caps->rss_table_entry_width);
 			break;
 		case ICE_AQC_CAPS_RXQS:
 			caps->num_rxq = number;
 			caps->rxq_first_id = phys_id;
 			ice_debug(hw, ICE_DBG_INIT,
-				  "%s: num Rx queues = %d\n", prefix,
+				  "%s: num_rxq = %d\n", prefix,
 				  caps->num_rxq);
 			ice_debug(hw, ICE_DBG_INIT,
-				  "%s: Rx first queue ID = %d\n", prefix,
+				  "%s: rxq_first_id = %d\n", prefix,
 				  caps->rxq_first_id);
 			break;
 		case ICE_AQC_CAPS_TXQS:
 			caps->num_txq = number;
 			caps->txq_first_id = phys_id;
 			ice_debug(hw, ICE_DBG_INIT,
-				  "%s: num Tx queues = %d\n", prefix,
+				  "%s: num_txq = %d\n", prefix,
 				  caps->num_txq);
 			ice_debug(hw, ICE_DBG_INIT,
-				  "%s: Tx first queue ID = %d\n", prefix,
+				  "%s: txq_first_id = %d\n", prefix,
 				  caps->txq_first_id);
 			break;
 		case ICE_AQC_CAPS_MSIX:
 			caps->num_msix_vectors = number;
 			caps->msix_vector_first_id = phys_id;
 			ice_debug(hw, ICE_DBG_INIT,
-				  "%s: MSIX vector count = %d\n", prefix,
+				  "%s: num_msix_vectors = %d\n", prefix,
 				  caps->num_msix_vectors);
 			ice_debug(hw, ICE_DBG_INIT,
-				  "%s: MSIX first vector index = %d\n", prefix,
+				  "%s: msix_vector_first_id = %d\n", prefix,
 				  caps->msix_vector_first_id);
 			break;
 		case ICE_AQC_CAPS_MAX_MTU:
 			caps->max_mtu = number;
-			ice_debug(hw, ICE_DBG_INIT, "%s: max MTU = %d\n",
+			ice_debug(hw, ICE_DBG_INIT, "%s: max_mtu = %d\n",
 				  prefix, caps->max_mtu);
 			break;
 		default:
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
