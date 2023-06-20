Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DB573689A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 12:01:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AD26418D3;
	Tue, 20 Jun 2023 10:01:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8AD26418D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687255267;
	bh=ATGR/TQVJJVH8nUxeC/6iEXGL+dx7kQngnOmXE3/omM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DjDsk6OndWG0eQsgR0zGr02yHXaD/bG0zXNcPJ3+Bxl+yPwgbOHlu3L2mCgVWQimj
	 pnFIvH234cOQtawxXj3Ac/muAJTN8hC8FKo43hXCeP/IJBoZ+d/yjEJYF25/PR052E
	 L44DJTleHx3As9Qyi5vtSR8vM6mmpLL7ZtzPMCmrOwP3ksXNSR2Nz1J8XOhbDRjT+L
	 cqoz1IiJ87unHBrdh2LDk6V3pqiHvc0/wafsLWH7I7rJQTf/mf8X6J3oUj0n1u71v6
	 yxwZs0Cgjk/osbiHjKGHX4HDND8P0PUCdOzNIX1eSX4X4TjuLRQF9ncCcVmuZeQWLx
	 KbYtG1Nvaa5Ww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qE0JbzQ1gO09; Tue, 20 Jun 2023 10:01:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11380418BB;
	Tue, 20 Jun 2023 10:01:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11380418BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A92E61BF39E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 82A148213E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82A148213E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id caEkufqdUGqW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 10:00:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FB9382109
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2FB9382109
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 10:00:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="358688322"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="358688322"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 03:00:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="664227187"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="664227187"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2023 03:00:40 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 09:59:49 +0000
Message-Id: <20230620100001.5331-4-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230620100001.5331-1-lingyu.liu@intel.com>
References: <20230620100001.5331-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687255251; x=1718791251;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ql6NPHAx6j4F9AyEQ1EKfK5FomQKzoaK/UZn8bhY4dQ=;
 b=c+ZghW61pF5s7Aw79xWEYXg1JCCCdbXvsPmmigxl3n4fXFgViN4oxxCQ
 vQP2Zt9FbshBBg4PZpQK4MDVJHDsGNM0edIYZUCoEgV2IHyVl0XFUOMVY
 kyTXkVS4zWQ1hs/Zvpnz+cwx8PwMGTaCHn2XnRd2L7V0d1CwlSQdzLO20
 UXe4HFWg9zNNNxw5N8F2zhEr9qL37HlYsVMLtYXOfpy6obpTxZq1Zqsvj
 ssnzA0vb9PIZi7a3a5oe9d0krDveMt/MEt3WQ1WTNKltXpMfRXb9umVPK
 LXOViP1kQhI1/IiUEsvjgY/L5GUeys08OX2YMkaQvp64Ke9oJOPz67EgT
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c+ZghW61
Subject: [Intel-wired-lan] [PATCH iwl-next V1 03/15] ice: check VF migration
 status before sending messages to VF
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, phani.r.burra@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a new VF state ICE_VF_STATE_REPLAYING_VC. During live migration,
virtual channel commands will be replayed to restore VF device state.
Don't send messages back to VF when replaying by checking VF state
before PF sends messages to VF.

ice_vc_send_msg_to_vf() implies sending messages but actually it
does not while replaying messages. Renaming ice_vc_send_msg_to_vf()
to ice_vc_respond_to_vf() to indicate its behavior correctly.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 182 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |   8 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  28 +--
 4 files changed, 120 insertions(+), 99 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 67172fdd9bc2..0c8dd7910129 100644
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
index ae1e09f0875b..aa9b7f5a6dc3 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -281,19 +281,10 @@ void ice_vc_notify_reset(struct ice_pf *pf)
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
@@ -314,6 +305,37 @@ ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
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
+ * send msg to VF
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
@@ -332,9 +354,9 @@ static int ice_vc_get_ver_msg(struct ice_vf *vf, u8 *msg)
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
@@ -519,8 +541,8 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 
 err:
 	/* send the response back to the VF */
-	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_VF_RESOURCES, v_ret,
-				    (u8 *)vfres, len);
+	ret = ice_vc_respond_to_vf(vf, VIRTCHNL_OP_GET_VF_RESOURCES, v_ret,
+				   (u8 *)vfres, len);
 
 	kfree(vfres);
 	return ret;
@@ -889,7 +911,7 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 	}
 
 error_param:
-	return ice_vc_send_msg_to_vf(vf, v_opcode, v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, v_opcode, v_ret, NULL, 0);
 }
 
 /**
@@ -935,8 +957,8 @@ static int ice_vc_config_rss_key(struct ice_vf *vf, u8 *msg)
 	if (ice_set_rss_key(vsi, vrk->key))
 		v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
 error_param:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_KEY, v_ret,
-				     NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_KEY, v_ret,
+				    NULL, 0);
 }
 
 /**
@@ -981,8 +1003,8 @@ static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
 	if (ice_set_rss_lut(vsi, vrl->lut, ICE_LUT_VSI_SIZE))
 		v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
 error_param:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_LUT, v_ret,
-				     NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_LUT, v_ret,
+				    NULL, 0);
 }
 
 /**
@@ -1121,8 +1143,8 @@ static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 error_param:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
-				     v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
+				    v_ret, NULL, 0);
 }
 
 /**
@@ -1162,8 +1184,8 @@ static int ice_vc_get_stats_msg(struct ice_vf *vf, u8 *msg)
 
 error_param:
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_STATS, v_ret,
-				     (u8 *)&stats, sizeof(stats));
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_GET_STATS, v_ret,
+				    (u8 *)&stats, sizeof(stats));
 }
 
 /**
@@ -1312,8 +1334,8 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 
 error_param:
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_QUEUES, v_ret,
-				     NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_ENABLE_QUEUES, v_ret,
+				    NULL, 0);
 }
 
 /**
@@ -1452,8 +1474,8 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 
 error_param:
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_QUEUES, v_ret,
-				     NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_DISABLE_QUEUES, v_ret,
+				    NULL, 0);
 }
 
 /**
@@ -1583,8 +1605,8 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
 
 error_param:
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_IRQ_MAP, v_ret,
-				     NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_CONFIG_IRQ_MAP, v_ret,
+				    NULL, 0);
 }
 
 /**
@@ -1711,8 +1733,8 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
-				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
+				    VIRTCHNL_STATUS_SUCCESS, NULL, 0);
 error_param:
 	/* disable whatever we can */
 	for (; i >= 0; i--) {
@@ -1725,8 +1747,8 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
-				     VIRTCHNL_STATUS_ERR_PARAM, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
+				    VIRTCHNL_STATUS_ERR_PARAM, NULL, 0);
 }
 
 /**
@@ -2028,7 +2050,7 @@ ice_vc_handle_mac_addr_msg(struct ice_vf *vf, u8 *msg, bool set)
 
 handle_mac_exit:
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, vc_op, v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, vc_op, v_ret, NULL, 0);
 }
 
 /**
@@ -2111,8 +2133,8 @@ static int ice_vc_request_qs_msg(struct ice_vf *vf, u8 *msg)
 
 error_param:
 	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_REQUEST_QUEUES,
-				     v_ret, (u8 *)vfres, sizeof(*vfres));
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_REQUEST_QUEUES,
+				    v_ret, (u8 *)vfres, sizeof(*vfres));
 }
 
 /**
@@ -2377,11 +2399,11 @@ static int ice_vc_process_vlan_msg(struct ice_vf *vf, u8 *msg, bool add_v)
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
@@ -2439,8 +2461,8 @@ static int ice_vc_ena_vlan_stripping(struct ice_vf *vf)
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 
 error_param:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING,
-				     v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING,
+				    v_ret, NULL, 0);
 }
 
 /**
@@ -2474,8 +2496,8 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 
 error_param:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING,
-				     v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING,
+				    v_ret, NULL, 0);
 }
 
 /**
@@ -2510,8 +2532,8 @@ static int ice_vc_get_rss_hena(struct ice_vf *vf)
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
@@ -2576,8 +2598,8 @@ static int ice_vc_set_rss_hena(struct ice_vf *vf, u8 *msg)
 
 	/* send the response to the VF */
 err:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_SET_RSS_HENA, v_ret,
-				     NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_SET_RSS_HENA, v_ret,
+				    NULL, 0);
 }
 
 /**
@@ -2632,8 +2654,8 @@ static int ice_vc_query_rxdid(struct ice_vf *vf)
 	pf->supported_rxdids = rxdid->supported_rxdids;
 
 err:
-	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_SUPPORTED_RXDIDS,
-				    v_ret, (u8 *)rxdid, len);
+	ret = ice_vc_respond_to_vf(vf, VIRTCHNL_OP_GET_SUPPORTED_RXDIDS,
+				   v_ret, (u8 *)rxdid, len);
 	kfree(rxdid);
 	return ret;
 }
@@ -2861,8 +2883,8 @@ static int ice_vc_get_offload_vlan_v2_caps(struct ice_vf *vf)
 	memcpy(&vf->vlan_v2_caps, caps, sizeof(*caps));
 
 out:
-	err = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS,
-				    v_ret, (u8 *)caps, len);
+	err = ice_vc_respond_to_vf(vf, VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS,
+				   v_ret, (u8 *)caps, len);
 	kfree(caps);
 	return err;
 }
@@ -3103,8 +3125,7 @@ static int ice_vc_remove_vlan_v2_msg(struct ice_vf *vf, u8 *msg)
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 
 out:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DEL_VLAN_V2, v_ret, NULL,
-				     0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_DEL_VLAN_V2, v_ret, NULL, 0);
 }
 
 /**
@@ -3245,8 +3266,7 @@ static int ice_vc_add_vlan_v2_msg(struct ice_vf *vf, u8 *msg)
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 
 out:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_VLAN_V2, v_ret, NULL,
-				     0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_ADD_VLAN_V2, v_ret, NULL, 0);
 }
 
 /**
@@ -3467,8 +3487,8 @@ static int ice_vc_ena_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 out:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2,
-				     v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2,
+				    v_ret, NULL, 0);
 }
 
 /**
@@ -3537,8 +3557,8 @@ static int ice_vc_dis_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 out:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2,
-				     v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2,
+				    v_ret, NULL, 0);
 }
 
 /**
@@ -3596,8 +3616,8 @@ static int ice_vc_ena_vlan_insertion_v2_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 out:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2,
-				     v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2,
+				    v_ret, NULL, 0);
 }
 
 /**
@@ -3651,8 +3671,8 @@ static int ice_vc_dis_vlan_insertion_v2_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 out:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2,
-				     v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2,
+				    v_ret, NULL, 0);
 }
 
 static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
@@ -3749,8 +3769,8 @@ static int ice_vc_repr_add_mac(struct ice_vf *vf, u8 *msg)
 	}
 
 handle_mac_exit:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
-				     v_ret, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_ADD_ETH_ADDR,
+				    v_ret, NULL, 0);
 }
 
 /**
@@ -3769,8 +3789,8 @@ ice_vc_repr_del_mac(struct ice_vf __always_unused *vf, u8 __always_unused *msg)
 
 	ice_update_legacy_cached_mac(vf, &al->list[0]);
 
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DEL_ETH_ADDR,
-				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_DEL_ETH_ADDR,
+				    VIRTCHNL_STATUS_SUCCESS, NULL, 0);
 }
 
 static int
@@ -3779,8 +3799,8 @@ ice_vc_repr_cfg_promiscuous_mode(struct ice_vf *vf, u8 __always_unused *msg)
 	dev_dbg(ice_pf_to_dev(vf->pf),
 		"Can't config promiscuous mode in switchdev mode for VF %d\n",
 		vf->vf_id);
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
-				     VIRTCHNL_STATUS_ERR_NOT_SUPPORTED,
+	return ice_vc_respond_to_vf(vf, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
+				    VIRTCHNL_STATUS_ERR_NOT_SUPPORTED,
 				     NULL, 0);
 }
 
@@ -3923,16 +3943,16 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 
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
@@ -4044,9 +4064,9 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
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
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
