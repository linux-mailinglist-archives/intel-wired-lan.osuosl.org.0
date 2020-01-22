Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 771D9145F82
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2020 00:54:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 24E5E214E9;
	Wed, 22 Jan 2020 23:54:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tCpZhQ2oEEL8; Wed, 22 Jan 2020 23:54:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9F4E42014A;
	Wed, 22 Jan 2020 23:54:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 67C391BF977
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 64C5081A64
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dsu9xi2cZbit for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2020 23:54:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6791E83626
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 15:54:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="259651622"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jan 2020 15:54:22 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Jan 2020 07:21:35 -0800
Message-Id: <20200122152138.41585-12-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
References: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S38 12/15] ice: replace "fallthrough"
 comments with fallthrough reserved word
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

From: Bruce Allan <bruce.w.allan@intel.com>

"fallthrough" comments are used in switch case statements to explicitly
indicate the code is intended to fall through to the following statement.
Different variants of "fallthough" are acceptable, e.g. "fall through",
"fallthrough", "Fall-through".  The GCC compiler has an optional warning
(-Wimplicit-fallthrough[=n]) to warn when such a comment is not present;
the default version of which is enabled when compiling the Linux kernel.

There have been recent discussions in kernel mailing lists regarding
replacing non-standardized "fallthrough" comments with the pseudo-reserved
word 'fallthrough' which will be defined as __attribute__ ((fallthrough))
for versions of gcc that support it (i.e. gcc 7 and newer) or as a nop
for versions that do not.  Replace "fallthrough" comments with fallthrough
reserved word.

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_main.c   | 2 +-
 drivers/net/ethernet/intel/ice/ice_switch.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_txrx.c   | 4 ++--
 drivers/net/ethernet/intel/ice/ice_xsk.c    | 4 ++--
 5 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 873c632271b8..af2ce567d486 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1182,7 +1182,7 @@ ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf,
 	case ice_aqc_opc_release_res:
 		if (le16_to_cpu(cmd->res_id) == ICE_AQC_RES_ID_GLBL_LOCK)
 			break;
-		/* fall-through */
+		fallthrough;
 	default:
 		mutex_lock(&ice_global_cfg_lock_sw);
 		lock_acquired = true;
@@ -2719,7 +2719,7 @@ __ice_aq_get_set_rss_lut(struct ice_hw *hw, u16 vsi_id, u8 lut_type, u8 *lut,
 				 ICE_AQC_GSET_RSS_LUT_TABLE_SIZE_M;
 			break;
 		}
-		/* fall-through */
+		fallthrough;
 	default:
 		status = ICE_ERR_PARAM;
 		goto ice_aq_get_set_rss_lut_exit;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 09458455df41..bfc79a5a92ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3011,7 +3011,7 @@ ice_log_pkg_init(struct ice_hw *hw, enum ice_status *status)
 		default:
 			break;
 		}
-		/* fall-through */
+		fallthrough;
 	default:
 		dev_err(dev, "An unknown error (%d) occurred when loading the DDP package.  Entering Safe Mode.\n",
 			*status);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 1c4124835659..e8f43e7b7e8b 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -787,7 +787,7 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
 		break;
 	case ICE_SW_LKUP_ETHERTYPE_MAC:
 		daddr = f_info->l_data.ethertype_mac.mac_addr;
-		/* fall-through */
+		fallthrough;
 	case ICE_SW_LKUP_ETHERTYPE:
 		off = (__force __be16 *)(eth_hdr + ICE_ETH_ETHTYPE_OFFSET);
 		*off = cpu_to_be16(f_info->l_data.ethertype_mac.ethertype);
@@ -798,7 +798,7 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
 		break;
 	case ICE_SW_LKUP_PROMISC_VLAN:
 		vlan_id = f_info->l_data.mac_vlan.vlan_id;
-		/* fall-through */
+		fallthrough;
 	case ICE_SW_LKUP_PROMISC:
 		daddr = f_info->l_data.mac_vlan.mac_addr;
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 0c08ab0462df..f67e8362958c 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -453,10 +453,10 @@ ice_run_xdp(struct ice_ring *rx_ring, struct xdp_buff *xdp,
 		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
-		/* fallthrough -- not supported action */
+		fallthrough;
 	case XDP_ABORTED:
 		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
-		/* fallthrough -- handle aborts by dropping frame */
+		fallthrough;
 	case XDP_DROP:
 		result = ICE_XDP_CONSUMED;
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index fd96301e59bb..4adb8a3ba06e 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -816,10 +816,10 @@ ice_run_xdp_zc(struct ice_ring *rx_ring, struct xdp_buff *xdp)
 		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
-		/* fallthrough -- not supported action */
+		fallthrough;
 	case XDP_ABORTED:
 		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
-		/* fallthrough -- handle aborts by dropping frame */
+		fallthrough;
 	case XDP_DROP:
 		result = ICE_XDP_CONSUMED;
 		break;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
