Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED5B7A4110
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 08:28:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3503040065;
	Mon, 18 Sep 2023 06:28:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3503040065
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695018502;
	bh=VH6rWgPl7ue9YJj/XMUAYj+U1cIIlv4jEUlNOo2EN6M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=14buyBvwWgaxak3ZkFPOxdaQHZRNi8ZhH2/5MlPR6KeF1jgrKWTsIIPYSu+RK3HER
	 1e2YeLIYpme+7CTFrRyvarfLdHyhzhg6RK1KGYoIjzaua0ne2xrHW04BGweRynmF1U
	 Ef8cpoMrREfH/kZER3rBFInUpu/WHQVMoTunIBnWvgtdYfb+3j2Dq2KO9Uq8mPlPe7
	 G1shqCW5THZoXV2RsZevT4tQvHai0GIQJSE1mJ/2FqoMieZeFO3rFLBMX35kxZjvJ4
	 timqFgGjdXRwkPEzYu0UzwPAsBPPGCvbmEkQRkVWq7iJFdUEPf/kUS7iH4RJmFtmOW
	 MEFMe6msN4NAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nQH9THk2VJ0q; Mon, 18 Sep 2023 06:28:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29BE740984;
	Mon, 18 Sep 2023 06:28:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29BE740984
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C3F21BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0032040922
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0032040922
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yPfjhfPgYw1j for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 06:28:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1C11E4097D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C11E4097D
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="378488528"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="378488528"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 23:28:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="815893443"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="815893443"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.186])
 by fmsmga004.fm.intel.com with ESMTP; 17 Sep 2023 23:28:05 -0700
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Sep 2023 06:25:37 +0000
Message-Id: <20230918062546.40419-5-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230918062546.40419-1-yahui.cao@intel.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695018493; x=1726554493;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PvhEam7jMyPniZYHXz11nuOCnPlK2kB8jEpEfoNSjzU=;
 b=g/oJdPn0SmJ3iGlaV+/Mi011rLUT6Qywkz7YAp8i56i9yjks6qPp89zu
 zeQ2nyveMdDEraaWQ6FyIFaI91GVofYWh+ZgWtYwdNvK/MyTBsxc9jRoi
 zXTIV/xMSt21mOmjDf5piI31aGfEPLsrJX2E4VHRkXUCTubHF3Ti3BeVp
 oKM2VV26xQHgLc9XljBGiMPZHL9ObEhM0cX4Fu+4vY0HmGIcOA8IX2S5C
 SEuYwePxyhzsDK6O4jMi49+/n4NuYlZaXsgjCzeA2DsyiYimcaezwE185
 yGJbgfvBZRxom/mgNrullikJDu+SrmXnrlE3yi1MLyzLj7qIb/Z/1VSlA
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g/oJdPn0
Subject: [Intel-wired-lan] [PATCH iwl-next v3 04/13] ice: Introduce VF state
 ICE_VF_STATE_REPLAYING_VC for migration
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, edumazet@google.com, shameerali.kolothum.thodi@huawei.com,
 jesse.brandeburg@intel.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com, jgg@nvidia.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lingyu Liu <lingyu.liu@intel.com>

During migration device resume stage, part of device state is loaded by
replaying logged virtual channel message. By default, once virtual
channel message is processed successfully, PF will send message to VF.

In addition, PF will notify VF about link state while handling virtual
channel message GET_VF_RESOURCE and ENABLE_QUEUES. And VF driver will
print link state change info once receiving notification from PF.

However, device resume stage does not need PF to send messages to VF
for the above cases. So stop PF from sending messages to VF while VF is
in replay state.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 185 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |   8 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  28 +--
 4 files changed, 124 insertions(+), 98 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 31a082e8a827..ff1438373f69 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -37,6 +37,7 @@ enum ice_vf_states {
 	ICE_VF_STATE_DIS,
 	ICE_VF_STATE_MC_PROMISC,
 	ICE_VF_STATE_UC_PROMISC,
+	ICE_VF_STATE_REPLAYING_VC,
 	ICE_VF_STATES_NBITS
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 3bf95d3c50d3..6be796ed70a8 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -233,6 +233,9 @@ void ice_vc_notify_vf_link_state(struct ice_vf *vf)
 	struct virtchnl_pf_event pfe = { 0 };
 	struct ice_hw *hw = &vf->pf->hw;
 
+	if (test_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states))
+		return;
+
 	pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
 	pfe.severity = PF_EVENT_SEVERITY_INFO;
 
@@ -281,19 +284,10 @@ void ice_vc_notify_reset(struct ice_pf *pf)
 			    (u8 *)&pfe, sizeof(struct virtchnl_pf_event));
 }
 
-/**
- * ice_vc_send_msg_to_vf - Send message to VF
- * @vf: pointer to the VF info
- * @v_opcode: virtual channel opcode
- * @v_retval: virtual channel return value
- * @msg: pointer to the msg buffer
- * @msglen: msg length
- *
- * send msg to VF
- */
-int
-ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
-		      enum virtchnl_status_code v_retval, u8 *msg, u16 msglen)
+static int
+ice_vc_send_response_to_vf(struct ice_vf *vf, u32 v_opcode,
+			   enum virtchnl_status_code v_retval,
+			   u8 *msg, u16 msglen)
 {
 	struct device *dev;
 	struct ice_pf *pf;
@@ -314,6 +308,39 @@ ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
 	return 0;
 }
 
+/**
+ * ice_vc_respond_to_vf - Respond to VF
+ * @vf: pointer to the VF info
+ * @v_opcode: virtual channel opcode
+ * @v_retval: virtual channel return value
+ * @msg: pointer to the msg buffer
+ * @msglen: msg length
+ *
+ * Respond to VF. If it is replaying, return directly.
+ *
+ * Return 0 for success, negative for error.
+ */
+int
+ice_vc_respond_to_vf(struct ice_vf *vf, u32 v_opcode,
+		     enum virtchnl_status_code v_retval, u8 *msg, u16 msglen)
+{
+	struct device *dev;
+	struct ice_pf *pf = vf->pf;
+
+	dev = ice_pf_to_dev(pf);
+
+	if (test_bit(ICE_VF_STATE_REPLAYING_VC, vf->vf_states)) {
+		if (v_retval == VIRTCHNL_STATUS_SUCCESS)
+			return 0;
+
+		dev_dbg(dev, "Unable to replay virt channel command, VF ID %d, virtchnl status code %d. op code %d, len %d.\n",
+			vf->vf_id, v_retval, v_opcode, msglen);
+		return -EIO;
+	}
+
+	return ice_vc_send_response_to_vf(vf, v_opcode, v_retval, msg, msglen);
+}
+
 /**
  * ice_vc_get_ver_msg
  * @vf: pointer to the VF info
@@ -332,9 +359,9 @@ static int ice_vc_get_ver_msg(struct ice_vf *vf, u8 *msg)
 	if (VF_IS_V10(&vf->vf_ver))
 		info.minor = VIRTCHNL_VERSION_MINOR_NO_VF_CAPS;
 
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_VERSION,
-				     VIRTCHNL_STATUS_SUCCESS, (u8 *)&info,
-				     sizeof(struct virtchnl_version_info));
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_VERSION,
+				    VIRTCHNL_STATUS_SUCCESS, (u8 *)&info,
+				    sizeof(struct virtchnl_version_info));
 }
 
 /**
@@ -522,8 +549,8 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 
 err:
 	/* send the response back to the VF */
-	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_VF_RESOURCES, v_ret,
-				    (u8 *)vfres, len);
+	ret = ice_vc_respond_to_vf(vf, VIRTCHNL_OP_GET_VF_RESOURCES, v_ret,
+				   (u8 *)vfres, len);
 
 	kfree(vfres);
 	return ret;
@@ -892,7 +919,7 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 	}
 
 error_param:
-	return ice_vc_send_msg_to_vf(vf, v_opcode, v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, v_opcode, v_ret, NULL, 0);
 }
 
 /**
@@ -938,8 +965,8 @@ static int ice_vc_config_rss_key(struct ice_vf *vf, u8 *msg)
 	if (ice_set_rss_key(vsi, vrk->key))
 		v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
 error_param:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_KEY, v_ret,
-				     NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_KEY, v_ret,
+				    NULL, 0);
 }
 
 /**
@@ -984,7 +1011,7 @@ static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
 	if (ice_set_rss_lut(vsi, vrl->lut, ICE_LUT_VSI_SIZE))
 		v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
 error_param:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_LUT, v_ret,
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_LUT, v_ret,
 				     NULL, 0);
 }
 
@@ -1124,8 +1151,8 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 error_param:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
-				     v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
+				    v_ret, NULL, 0);
 }
 
 /**
@@ -1165,8 +1192,8 @@ static int ice_vc_get_stats_msg(struct ice_vf *vf, u8 *msg)
 
 error_param:
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_STATS, v_ret,
-				     (u8 *)&stats, sizeof(stats));
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_GET_STATS, v_ret,
+				    (u8 *)&stats, sizeof(stats));
 }
 
 /**
@@ -1315,8 +1342,8 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 
 error_param:
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_QUEUES, v_ret,
-				     NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_ENABLE_QUEUES, v_ret,
+				    NULL, 0);
 }
 
 /**
@@ -1455,8 +1482,8 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 
 error_param:
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_QUEUES, v_ret,
-				     NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_DISABLE_QUEUES, v_ret,
+				    NULL, 0);
 }
 
 /**
@@ -1586,8 +1613,8 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
 
 error_param:
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_IRQ_MAP, v_ret,
-				     NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_CONFIG_IRQ_MAP, v_ret,
+				    NULL, 0);
 }
 
 /**
@@ -1730,8 +1757,8 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
-				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
+				    VIRTCHNL_STATUS_SUCCESS, NULL, 0);
 error_param:
 	/* disable whatever we can */
 	for (; i >= 0; i--) {
@@ -1746,8 +1773,8 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 	ice_lag_move_new_vf_nodes(vf);
 
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
-				     VIRTCHNL_STATUS_ERR_PARAM, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
+				    VIRTCHNL_STATUS_ERR_PARAM, NULL, 0);
 }
 
 /**
@@ -2049,7 +2076,7 @@ ice_vc_handle_mac_addr_msg(struct ice_vf *vf, u8 *msg, bool set)
 
 handle_mac_exit:
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, vc_op, v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, vc_op, v_ret, NULL, 0);
 }
 
 /**
@@ -2132,8 +2159,8 @@ static int ice_vc_request_qs_msg(struct ice_vf *vf, u8 *msg)
 
 error_param:
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_REQUEST_QUEUES,
-				     v_ret, (u8 *)vfres, sizeof(*vfres));
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_REQUEST_QUEUES,
+				    v_ret, (u8 *)vfres, sizeof(*vfres));
 }
 
 /**
@@ -2398,11 +2425,11 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
 error_param:
 	/* send the response to the VF */
 	if (add_v)
-		return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_VLAN, v_ret,
-					     NULL, 0);
+		return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_ADD_VLAN, v_ret,
+					    NULL, 0);
 	else
-		return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DEL_VLAN, v_ret,
-					     NULL, 0);
+		return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_DEL_VLAN, v_ret,
+					    NULL, 0);
 }
 
 /**
@@ -2477,8 +2504,8 @@ static int ice_vc_ena_vlan_stripping(struct ice_vf *vf)
 		vf->vlan_strip_ena |= ICE_INNER_VLAN_STRIP_ENA;
 
 error_param:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING,
-				     v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING,
+				    v_ret, NULL, 0);
 }
 
 /**
@@ -2514,8 +2541,8 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
 		vf->vlan_strip_ena &= ~ICE_INNER_VLAN_STRIP_ENA;
 
 error_param:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING,
-				     v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING,
+				    v_ret, NULL, 0);
 }
 
 /**
@@ -2550,8 +2577,8 @@ static int ice_vc_get_rss_hena(struct ice_vf *vf)
 	vrh->hena = ICE_DEFAULT_RSS_HENA;
 err:
 	/* send the response back to the VF */
-	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_RSS_HENA_CAPS, v_ret,
-				    (u8 *)vrh, len);
+	ret = ice_vc_respond_to_vf(vf, VIRTCHNL_OP_GET_RSS_HENA_CAPS, v_ret,
+				   (u8 *)vrh, len);
 	kfree(vrh);
 	return ret;
 }
@@ -2616,8 +2643,8 @@ static int ice_vc_set_rss_hena(struct ice_vf *vf, u8 *msg)
 
 	/* send the response to the VF */
 err:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_SET_RSS_HENA, v_ret,
-				     NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_SET_RSS_HENA, v_ret,
+				    NULL, 0);
 }
 
 /**
@@ -2673,8 +2700,8 @@ static int ice_vc_query_rxdid(struct ice_vf *vf)
 	pf->supported_rxdids = rxdid->supported_rxdids;
 
 err:
-	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_SUPPORTED_RXDIDS,
-				    v_ret, (u8 *)rxdid, len);
+	ret = ice_vc_respond_to_vf(vf, VIRTCHNL_OP_GET_SUPPORTED_RXDIDS,
+				   v_ret, (u8 *)rxdid, len);
 	kfree(rxdid);
 	return ret;
 }
@@ -2910,8 +2937,8 @@ static int ice_vc_get_offload_vlan_v2_caps(struct ice_vf *vf)
 	memcpy(&vf->vlan_v2_caps, caps, sizeof(*caps));
 
 out:
-	err = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS,
-				    v_ret, (u8 *)caps, len);
+	err = ice_vc_respond_to_vf(vf, VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS,
+				   v_ret, (u8 *)caps, len);
 	kfree(caps);
 	return err;
 }
@@ -3152,8 +3179,7 @@ static int ice_vc_remove_vlan_v2_msg(struct ice_vf *vf, u8 *msg)
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 
 out:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DEL_VLAN_V2, v_ret, NULL,
-				     0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_DEL_VLAN_V2, v_ret, NULL, 0);
 }
 
 /**
@@ -3294,8 +3320,7 @@ static int ice_vc_add_vlan_v2_msg(struct ice_vf *vf, u8 *msg)
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 
 out:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_VLAN_V2, v_ret, NULL,
-				     0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_ADD_VLAN_V2, v_ret, NULL, 0);
 }
 
 /**
@@ -3526,8 +3551,8 @@ static int ice_vc_ena_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
 		vf->vlan_strip_ena |= ICE_INNER_VLAN_STRIP_ENA;
 
 out:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2,
-				     v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2,
+				    v_ret, NULL, 0);
 }
 
 /**
@@ -3601,8 +3626,8 @@ static int ice_vc_dis_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
 		vf->vlan_strip_ena &= ~ICE_INNER_VLAN_STRIP_ENA;
 
 out:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2,
-				     v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2,
+				    v_ret, NULL, 0);
 }
 
 /**
@@ -3660,8 +3685,8 @@ static int ice_vc_ena_vlan_insertion_v2_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 out:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2,
-				     v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2,
+				    v_ret, NULL, 0);
 }
 
 /**
@@ -3715,8 +3740,8 @@ static int ice_vc_dis_vlan_insertion_v2_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 out:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2,
-				     v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2,
+				    v_ret, NULL, 0);
 }
 
 static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
@@ -3813,8 +3838,8 @@ static int ice_vc_repr_add_mac(struct ice_vf *vf, u8 *msg)
 	}
 
 handle_mac_exit:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
-				     v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
+				    v_ret, NULL, 0);
 }
 
 /**
@@ -3833,8 +3858,8 @@ ice_vc_repr_del_mac(struct ice_vf __always_unused *vf, u8 __always_unused *msg)
 
 	ice_update_legacy_cached_mac(vf, &al->list[0]);
 
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DEL_ETH_ADDR,
-				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_DEL_ETH_ADDR,
+				    VIRTCHNL_STATUS_SUCCESS, NULL, 0);
 }
 
 static int
@@ -3843,8 +3868,8 @@ ice_vc_repr_cfg_promiscuous_mode(struct ice_vf *vf, u8 __always_unused *msg)
 	dev_dbg(ice_pf_to_dev(vf->pf),
 		"Can't config promiscuous mode in switchdev mode for VF %d\n",
 		vf->vf_id);
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
-				     VIRTCHNL_STATUS_ERR_NOT_SUPPORTED,
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
+				    VIRTCHNL_STATUS_ERR_NOT_SUPPORTED,
 				     NULL, 0);
 }
 
@@ -3987,16 +4012,16 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 
 error_handler:
 	if (err) {
-		ice_vc_send_msg_to_vf(vf, v_opcode, VIRTCHNL_STATUS_ERR_PARAM,
-				      NULL, 0);
+		ice_vc_respond_to_vf(vf, v_opcode, VIRTCHNL_STATUS_ERR_PARAM,
+				     NULL, 0);
 		dev_err(dev, "Invalid message from VF %d, opcode %d, len %d, error %d\n",
 			vf_id, v_opcode, msglen, err);
 		goto finish;
 	}
 
 	if (!ice_vc_is_opcode_allowed(vf, v_opcode)) {
-		ice_vc_send_msg_to_vf(vf, v_opcode,
-				      VIRTCHNL_STATUS_ERR_NOT_SUPPORTED, NULL,
+		ice_vc_respond_to_vf(vf, v_opcode,
+				     VIRTCHNL_STATUS_ERR_NOT_SUPPORTED, NULL,
 				      0);
 		goto finish;
 	}
@@ -4107,9 +4132,9 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 	default:
 		dev_err(dev, "Unsupported opcode %d from VF %d\n", v_opcode,
 			vf_id);
-		err = ice_vc_send_msg_to_vf(vf, v_opcode,
-					    VIRTCHNL_STATUS_ERR_NOT_SUPPORTED,
-					    NULL, 0);
+		err = ice_vc_respond_to_vf(vf, v_opcode,
+					   VIRTCHNL_STATUS_ERR_NOT_SUPPORTED,
+					   NULL, 0);
 		break;
 	}
 	if (err) {
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
index cd747718de73..a2b6094e2f2f 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -60,8 +60,8 @@ void ice_vc_notify_vf_link_state(struct ice_vf *vf);
 void ice_vc_notify_link_state(struct ice_pf *pf);
 void ice_vc_notify_reset(struct ice_pf *pf);
 int
-ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
-		      enum virtchnl_status_code v_retval, u8 *msg, u16 msglen);
+ice_vc_respond_to_vf(struct ice_vf *vf, u32 v_opcode,
+		     enum virtchnl_status_code v_retval, u8 *msg, u16 msglen);
 bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id);
 void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 			   struct ice_mbx_data *mbxdata);
@@ -73,8 +73,8 @@ static inline void ice_vc_notify_link_state(struct ice_pf *pf) { }
 static inline void ice_vc_notify_reset(struct ice_pf *pf) { }
 
 static inline int
-ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
-		      enum virtchnl_status_code v_retval, u8 *msg, u16 msglen)
+ice_vc_respond_to_vf(struct ice_vf *vf, u32 v_opcode,
+		     enum virtchnl_status_code v_retval, u8 *msg, u16 msglen)
 {
 	return -EOPNOTSUPP;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index daa6a1e894cf..bf6c24901cb0 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -1571,8 +1571,8 @@ ice_vc_add_fdir_fltr_post(struct ice_vf *vf, struct ice_vf_fdir_ctx *ctx,
 	resp->flow_id = conf->flow_id;
 	vf->fdir.fdir_fltr_cnt[conf->input.flow_type][is_tun]++;
 
-	ret = ice_vc_send_msg_to_vf(vf, ctx->v_opcode, v_ret,
-				    (u8 *)resp, len);
+	ret = ice_vc_respond_to_vf(vf, ctx->v_opcode, v_ret,
+				   (u8 *)resp, len);
 	kfree(resp);
 
 	dev_dbg(dev, "VF %d: flow_id:0x%X, FDIR %s success!\n",
@@ -1587,8 +1587,8 @@ ice_vc_add_fdir_fltr_post(struct ice_vf *vf, struct ice_vf_fdir_ctx *ctx,
 	ice_vc_fdir_remove_entry(vf, conf, conf->flow_id);
 	devm_kfree(dev, conf);
 
-	ret = ice_vc_send_msg_to_vf(vf, ctx->v_opcode, v_ret,
-				    (u8 *)resp, len);
+	ret = ice_vc_respond_to_vf(vf, ctx->v_opcode, v_ret,
+				   (u8 *)resp, len);
 	kfree(resp);
 	return ret;
 }
@@ -1635,8 +1635,8 @@ ice_vc_del_fdir_fltr_post(struct ice_vf *vf, struct ice_vf_fdir_ctx *ctx,
 	ice_vc_fdir_remove_entry(vf, conf, conf->flow_id);
 	vf->fdir.fdir_fltr_cnt[conf->input.flow_type][is_tun]--;
 
-	ret = ice_vc_send_msg_to_vf(vf, ctx->v_opcode, v_ret,
-				    (u8 *)resp, len);
+	ret = ice_vc_respond_to_vf(vf, ctx->v_opcode, v_ret,
+				   (u8 *)resp, len);
 	kfree(resp);
 
 	dev_dbg(dev, "VF %d: flow_id:0x%X, FDIR %s success!\n",
@@ -1652,8 +1652,8 @@ ice_vc_del_fdir_fltr_post(struct ice_vf *vf, struct ice_vf_fdir_ctx *ctx,
 	if (success)
 		devm_kfree(dev, conf);
 
-	ret = ice_vc_send_msg_to_vf(vf, ctx->v_opcode, v_ret,
-				    (u8 *)resp, len);
+	ret = ice_vc_respond_to_vf(vf, ctx->v_opcode, v_ret,
+				   (u8 *)resp, len);
 	kfree(resp);
 	return ret;
 }
@@ -1850,8 +1850,8 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
 		v_ret = VIRTCHNL_STATUS_SUCCESS;
 		stat->status = VIRTCHNL_FDIR_SUCCESS;
 		devm_kfree(dev, conf);
-		ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_FDIR_FILTER,
-					    v_ret, (u8 *)stat, len);
+		ret = ice_vc_respond_to_vf(vf, VIRTCHNL_OP_ADD_FDIR_FILTER,
+					   v_ret, (u8 *)stat, len);
 		goto exit;
 	}
 
@@ -1909,8 +1909,8 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
 err_free_conf:
 	devm_kfree(dev, conf);
 err_exit:
-	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_FDIR_FILTER, v_ret,
-				    (u8 *)stat, len);
+	ret = ice_vc_respond_to_vf(vf, VIRTCHNL_OP_ADD_FDIR_FILTER, v_ret,
+				   (u8 *)stat, len);
 	kfree(stat);
 	return ret;
 }
@@ -1993,8 +1993,8 @@ int ice_vc_del_fdir_fltr(struct ice_vf *vf, u8 *msg)
 err_del_tmr:
 	ice_vc_fdir_clear_irq_ctx(vf);
 err_exit:
-	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DEL_FDIR_FILTER, v_ret,
-				    (u8 *)stat, len);
+	ret = ice_vc_respond_to_vf(vf, VIRTCHNL_OP_DEL_FDIR_FILTER, v_ret,
+				   (u8 *)stat, len);
 	kfree(stat);
 	return ret;
 }
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
