Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FC44C061B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:29:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9532660B6A;
	Wed, 23 Feb 2022 00:28:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fl1-MufqyhAU; Wed, 23 Feb 2022 00:28:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F1EB60625;
	Wed, 23 Feb 2022 00:28:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A47401BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1135240911
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EDHXMWRpRoVW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8FEBC40901
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576045; x=1677112045;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xWffBxJsU7TI91qRRoWD1PcBQLLJ0tQbJhBxDw1yuv0=;
 b=ggHdTE1yulxBtg4ZRWPq1exDJGegEFpeYJHtOFutcXIfWU9DkthsPRc8
 NNNsK44Un9ypPnjD6zfvhDAZgjJaj+58fpnpVg0urfG7IebhDixSH2U7a
 7FkVGAS4FQKlWfvgMLg7iAWcpDuKnpqJenJ6WAOOQAGPmIlpYTqW+Nii5
 DssZb0pDgiKmxiwzn1BcuiaOJNyOugT7hvVxTTqaB6zw9aBZEsAEDpojw
 t06i0P424TB4s3mahsQHVLa8utkDynLIdFY+wb9Kh8MAKHhsR7Q03aq7Q
 oPmHQAINywdRziXTEpxoJ57hGyBGP2Lwd+H7YTuZasuT3y+KmA/X4/y/A Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="239235843"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="239235843"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728064"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:19 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:27:10 -0800
Message-Id: <20220223002712.2771809-24-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 23/25] ice: cleanup long longs in
 ice_sriov.c
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

Before we move the virtchnl message handling from ice_sriov.c into
ice_virtchnl.c, cleanup some long line warnings to avoid checkpatch.pl
complaints.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 39 +++++++++++++++-------
 1 file changed, 27 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index f74474f8af99..4f3d25ed68c9 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -2325,16 +2325,21 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 		    !test_and_set_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))
 			dev_info(dev, "VF %u successfully set multicast promiscuous mode\n",
 				 vf->vf_id);
-		else if (!allmulti && test_and_clear_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))
+		else if (!allmulti &&
+			 test_and_clear_bit(ICE_VF_STATE_MC_PROMISC,
+					    vf->vf_states))
 			dev_info(dev, "VF %u successfully unset multicast promiscuous mode\n",
 				 vf->vf_id);
 	}
 
 	if (!ucast_err) {
-		if (alluni && !test_and_set_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states))
+		if (alluni &&
+		    !test_and_set_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states))
 			dev_info(dev, "VF %u successfully set unicast promiscuous mode\n",
 				 vf->vf_id);
-		else if (!alluni && test_and_clear_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states))
+		else if (!alluni &&
+			 test_and_clear_bit(ICE_VF_STATE_UC_PROMISC,
+					    vf->vf_states))
 			dev_info(dev, "VF %u successfully unset unicast promiscuous mode\n",
 				 vf->vf_id);
 	}
@@ -2878,8 +2883,9 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 			}
 
 			vsi->max_frame = qpi->rxq.max_pkt_size;
-			/* add space for the port VLAN since the VF driver is not
-			 * expected to account for it in the MTU calculation
+			/* add space for the port VLAN since the VF driver is
+			 * not expected to account for it in the MTU
+			 * calculation
 			 */
 			if (ice_vf_is_port_vlan_ena(vf))
 				vsi->max_frame += VLAN_HLEN;
@@ -3665,8 +3671,11 @@ static u16 ice_vc_get_max_vlan_fltrs(struct ice_vf *vf)
 }
 
 /**
- * ice_vf_outer_vlan_not_allowed - check outer VLAN can be used when the device is in DVM
+ * ice_vf_outer_vlan_not_allowed - check if outer VLAN can be used
  * @vf: VF that being checked for
+ *
+ * When the device is in double VLAN mode, check whether or not the outer VLAN
+ * is allowed.
  */
 static bool ice_vf_outer_vlan_not_allowed(struct ice_vf *vf)
 {
@@ -3944,9 +3953,11 @@ ice_vc_validate_vlan_filter_list(struct virtchnl_vlan_filtering_caps *vfc,
 			return false;
 
 		if ((ice_vc_is_valid_vlan(outer) &&
-		     !ice_vc_validate_vlan_tpid(filtering_support->outer, outer->tpid)) ||
+		     !ice_vc_validate_vlan_tpid(filtering_support->outer,
+						outer->tpid)) ||
 		    (ice_vc_is_valid_vlan(inner) &&
-		     !ice_vc_validate_vlan_tpid(filtering_support->inner, inner->tpid)))
+		     !ice_vc_validate_vlan_tpid(filtering_support->inner,
+						inner->tpid)))
 			return false;
 	}
 
@@ -4421,7 +4432,8 @@ static int ice_vc_ena_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 out:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2, v_ret, NULL, 0);
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2,
+				     v_ret, NULL, 0);
 }
 
 /**
@@ -4490,7 +4502,8 @@ static int ice_vc_dis_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 out:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2, v_ret, NULL, 0);
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2,
+				     v_ret, NULL, 0);
 }
 
 /**
@@ -4548,7 +4561,8 @@ static int ice_vc_ena_vlan_insertion_v2_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 out:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2, v_ret, NULL, 0);
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2,
+				     v_ret, NULL, 0);
 }
 
 /**
@@ -4602,7 +4616,8 @@ static int ice_vc_dis_vlan_insertion_v2_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 out:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2, v_ret, NULL, 0);
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2,
+				     v_ret, NULL, 0);
 }
 
 static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
