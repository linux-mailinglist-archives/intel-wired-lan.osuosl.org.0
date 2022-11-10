Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 454F86242E5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Nov 2022 14:09:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C476404E0;
	Thu, 10 Nov 2022 13:09:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C476404E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668085744;
	bh=09km/ZYfs3tciDGHCEXshkbfXl9A3ryl1AYkz+9n88s=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=1lVb1Bfo8uk4NY4/if/lVkDMpPpb7wZ0AIZsB5aIr2w9yZjhws00lD0aZkZ74Qm9m
	 d9hxCWSsYCvH1nGvUFJUQjDF3iqG/rU/xH4EYbMNH7Bn8eHBroYaeFNpMkjfb4TFfP
	 7PyobBbNVRuJPAm8QTOPoXXFtuZmJawJhcWuue6UIemW+U3+sJRcTdw62EY9mATR/V
	 Zb989V4kFbejBc/IUYW8oHygJuuguvyA/Rdjid06n0j/FwzXKGd3fzIR28Uv/v1nSF
	 r0SlOh1OEbSBqXaT7x09hw3+ibqKflJzjyuzacAF/VChY/cXom0UCSTYCpabz/iqaf
	 U2oUhCzoktIKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gKDuYnHAvg-U; Thu, 10 Nov 2022 13:09:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73AAD400F2;
	Thu, 10 Nov 2022 13:09:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73AAD400F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 910A81BF393
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 13:08:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6252781405
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 13:08:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6252781405
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h3blnQcU87ui for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Nov 2022 13:08:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62D558134C
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 62D558134C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 13:08:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="373422763"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="373422763"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 05:08:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="631649349"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="631649349"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 10 Nov 2022 05:08:52 -0800
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2AAD8pSL011192; Thu, 10 Nov 2022 13:08:51 GMT
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Nov 2022 14:03:53 +0100
Message-Id: <20221110130353.3040-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668085734; x=1699621734;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ftky83V61u0LWAzCXP5y79YXl1YdYXm5D8f9kk21GQE=;
 b=gzq6fJYH6UpLQ0uYPoQEabJBB1Urb1129x1y0G/fuWMQ+fqC+MSvlrKn
 TaJXbFC2JAq940W3e3P2ge26zKO5U4V8G28VDzsIbfsVfRzbn+R3TClFQ
 uYncMTQK4L/lcnrch/g0Y77T9/IX8lXaVrBdnWylxD8RNdjNDqtLkbNZm
 B14Nw5nTXbO0bmLTz/Pgha4o2kIssyGXqRX93YZmF/aGYns8n9paP809T
 vLsgFGqtHWSiasf8J6hhgrGWBVUriiTItSmZpxNGRj48byyLK5EMoeqpI
 D7tlH6rMI3++BMOZKAdM1G3ulWwFEdToPze9jZMsnLrym0xziUmi3KWt4
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gzq6fJYH
Subject: [Intel-wired-lan] [PATCH net-next] ice: virtchnl rss hena support
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Md Fahad Iqbal Polash <md.fahad.iqbal.polash@intel.com>

Add support for 2 virtchnl msgs:
VIRTCHNL_OP_SET_RSS_HENA
VIRTCHNL_OP_GET_RSS_HENA_CAPS

The first one allows VFs to clear all previously programmed
RSS configuration and customize it. The second one returns
the RSS HENA bits allowed by the hardware.

Introduce ice_err_to_virt_err which converts kernel
specific errors to virtchnl errors.

Signed-off-by: Md Fahad Iqbal Polash <md.fahad.iqbal.polash@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  24 ++++
 .../ethernet/intel/ice/ice_vf_lib_private.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 112 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |   2 +
 4 files changed, 139 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index dfcf23cc7e55..2eaaa452f847 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -699,6 +699,30 @@ void ice_dis_vf_qs(struct ice_vf *vf)
 	ice_set_vf_state_qs_dis(vf);
 }
 
+/**
+ * ice_err_to_virt_err - translate errors for VF return code
+ * @err: error return code
+ */
+enum virtchnl_status_code ice_err_to_virt_err(int err)
+{
+	switch (err) {
+	case 0:
+		return VIRTCHNL_STATUS_SUCCESS;
+	case -EINVAL:
+	case -ENODEV:
+		return VIRTCHNL_STATUS_ERR_PARAM;
+	case -ENOMEM:
+		return VIRTCHNL_STATUS_ERR_NO_MEMORY;
+	case -EALREADY:
+	case -EBUSY:
+	case -EIO:
+	case -ENOSPC:
+		return VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
+	default:
+		return VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
+	}
+}
+
 /**
  * ice_check_vf_init - helper to check if VF init complete
  * @vf: the pointer to the VF to check
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
index 15887e772c76..9c8ef2b01f0f 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
@@ -25,6 +25,7 @@
 
 void ice_dis_vf_qs(struct ice_vf *vf);
 int ice_check_vf_init(struct ice_vf *vf);
+enum virtchnl_status_code ice_err_to_virt_err(int err);
 struct ice_port_info *ice_vf_get_port_info(struct ice_vf *vf);
 int ice_vsi_apply_spoofchk(struct ice_vsi *vsi, bool enable);
 bool ice_is_vf_trusted(struct ice_vf *vf);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 740bd4c08524..8eb0c8d9d427 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -2567,6 +2567,108 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
 				     v_ret, NULL, 0);
 }
 
+/**
+ * ice_vc_get_rss_hena - return the RSS HENA bits allowed by the hardware
+ * @vf: pointer to the VF info
+ */
+static int ice_vc_get_rss_hena(struct ice_vf *vf)
+{
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct virtchnl_rss_hena *vrh = NULL;
+	int len = 0, ret;
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	if (!test_bit(ICE_FLAG_RSS_ENA, vf->pf->flags)) {
+		dev_err(ice_pf_to_dev(vf->pf), "RSS not supported by PF\n");
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	len = sizeof(struct virtchnl_rss_hena);
+	vrh = kzalloc(len, GFP_KERNEL);
+	if (!vrh) {
+		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
+		len = 0;
+		goto err;
+	}
+
+	vrh->hena = ICE_DEFAULT_RSS_HENA;
+err:
+	/* send the response back to the VF */
+	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_RSS_HENA_CAPS, v_ret,
+				    (u8 *)vrh, len);
+	kfree(vrh);
+	return ret;
+}
+
+/**
+ * ice_vc_set_rss_hena - set RSS HENA bits for the VF
+ * @vf: pointer to the VF info
+ * @msg: pointer to the msg buffer
+ */
+static int ice_vc_set_rss_hena(struct ice_vf *vf, u8 *msg)
+{
+	struct virtchnl_rss_hena *vrh = (struct virtchnl_rss_hena *)msg;
+	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
+	struct ice_pf *pf = vf->pf;
+	struct ice_vsi *vsi;
+	struct device *dev;
+	int status;
+
+	dev = ice_pf_to_dev(pf);
+
+	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
+		dev_err(dev, "RSS not supported by PF\n");
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
+	/* clear all previously programmed RSS configuration to allow VF drivers
+	 * the ability to customize the RSS configuration and/or completely
+	 * disable RSS
+	 */
+	status = ice_rem_vsi_rss_cfg(&pf->hw, vsi->idx);
+	if (status && !vrh->hena) {
+		/* only report failure to clear the current RSS configuration if
+		 * that was clearly the VF's intention (i.e. vrh->hena = 0)
+		 */
+		v_ret = ice_err_to_virt_err(status);
+		goto err;
+	} else if (status) {
+		/* allow the VF to update the RSS configuration even on failure
+		 * to clear the current RSS confguration in an attempt to keep
+		 * RSS in a working state
+		 */
+		dev_warn(dev, "Failed to clear the RSS configuration for VF %u\n",
+			 vf->vf_id);
+	}
+
+	if (vrh->hena) {
+		status = ice_add_avf_rss_cfg(&pf->hw, vsi->idx, vrh->hena);
+		v_ret = ice_err_to_virt_err(status);
+	}
+
+	/* send the response to the VF */
+err:
+	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_SET_RSS_HENA, v_ret,
+				     NULL, 0);
+}
+
 /**
  * ice_vc_query_rxdid - query RXDID supported by DDP package
  * @vf: pointer to VF info
@@ -4031,6 +4133,8 @@ static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
 	.add_vlan_msg = ice_vc_add_vlan_msg,
 	.remove_vlan_msg = ice_vc_remove_vlan_msg,
 	.query_rxdid = ice_vc_query_rxdid,
+	.get_rss_hena = ice_vc_get_rss_hena,
+	.set_rss_hena_msg = ice_vc_set_rss_hena,
 	.ena_vlan_stripping = ice_vc_ena_vlan_stripping,
 	.dis_vlan_stripping = ice_vc_dis_vlan_stripping,
 	.handle_rss_cfg_msg = ice_vc_handle_rss_cfg,
@@ -4170,6 +4274,8 @@ static const struct ice_virtchnl_ops ice_virtchnl_repr_ops = {
 	.add_vlan_msg = ice_vc_add_vlan_msg,
 	.remove_vlan_msg = ice_vc_remove_vlan_msg,
 	.query_rxdid = ice_vc_query_rxdid,
+	.get_rss_hena = ice_vc_get_rss_hena,
+	.set_rss_hena_msg = ice_vc_set_rss_hena,
 	.ena_vlan_stripping = ice_vc_ena_vlan_stripping,
 	.dis_vlan_stripping = ice_vc_dis_vlan_stripping,
 	.handle_rss_cfg_msg = ice_vc_handle_rss_cfg,
@@ -4317,6 +4423,12 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 	case VIRTCHNL_OP_GET_SUPPORTED_RXDIDS:
 		err = ops->query_rxdid(vf);
 		break;
+	case VIRTCHNL_OP_GET_RSS_HENA_CAPS:
+		err = ops->get_rss_hena(vf);
+		break;
+	case VIRTCHNL_OP_SET_RSS_HENA:
+		err = ops->set_rss_hena_msg(vf, msg);
+		break;
 	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
 		err = ops->ena_vlan_stripping(vf);
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
index 7f464c5040d4..9894bdbb196a 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -41,6 +41,8 @@ struct ice_virtchnl_ops {
 	int (*add_vlan_msg)(struct ice_vf *vf, u8 *msg);
 	int (*remove_vlan_msg)(struct ice_vf *vf, u8 *msg);
 	int (*query_rxdid)(struct ice_vf *vf);
+	int (*get_rss_hena)(struct ice_vf *vf);
+	int (*set_rss_hena_msg)(struct ice_vf *vf, u8 *msg);
 	int (*ena_vlan_stripping)(struct ice_vf *vf);
 	int (*dis_vlan_stripping)(struct ice_vf *vf);
 	int (*handle_rss_cfg_msg)(struct ice_vf *vf, u8 *msg, bool add);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
