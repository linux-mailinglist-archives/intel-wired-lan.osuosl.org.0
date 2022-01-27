Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FDF49E4C1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jan 2022 15:37:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EEFD610D8;
	Thu, 27 Jan 2022 14:37:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ODATowvqZrWq; Thu, 27 Jan 2022 14:37:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31D87610E9;
	Thu, 27 Jan 2022 14:37:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC2951BF475
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 14:37:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A66C5610D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 14:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dCR7AL8zdXRL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jan 2022 14:37:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B3B4610CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 14:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643294229; x=1674830229;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qwvbBYHBGOya4WpW1mltPSJeaBvs45BZNOPJYf5ez2E=;
 b=YnqkDGEjwuhQP7ADfwcXmd4txBhA6CEk01M2iTWJFpCBtfZsSq0v2m73
 mYLTev5b7Kshr8R8qnBJPSD0obDCupAd5inMiNFAlK5gazBn+S9O8/GiC
 ONGyv8XXvf/AuI9fkLHJLV0SZd1wsPDm/RZwd3/l7pL/G1Ih86Eyqe+CS
 Cl7gnf9kQbpNMEX+oPYexRogAEoJRPunc/3pIrb5uneep+9wVYMwuLTlj
 9Y01IyXxYYzW9AQd5ThB8Otcamw6gkeJJNgwfsmFwTbmNwwWBgciTwk8U
 N83YpgH5MSOjUow7oW1E+TX9LWDs5nDzoRxgTClQZUP/E+RcZCHYGMRzc Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="271324120"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="271324120"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 06:17:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="581479765"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga008.fm.intel.com with ESMTP; 27 Jan 2022 06:17:25 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jan 2022 15:16:29 +0100
Message-Id: <20220127141629.28189-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 1/2] iavf: stop leaking
 iavf_status as "errno" values
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Several functions in the iAVF core files take status values of the enum
iavf_status and convert them into integer values. This leads to
confusion as functions return both Linux errno values and status codes
intermixed. Reporting status codes as if they were "errno" values can
lead to confusion when reviewing error logs. Additionally, it can lead
to unexpected behavior if a return value is not interpreted properly.

Fix this by introducing iavf_status_to_errno, a switch that explicitly
converts from the status codes into an appropriate error value. Also
introduce a virtchnl_status_to_errno function for the one case where we
were returning both virtchnl status codes and iavf_status codes in the
same function.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Submit this with additional patch introducing iavf_status_to_errno function
 v3: Change iavf_poll_virtchnl_msg to int
---
 drivers/net/ethernet/intel/iavf/iavf.h        |   5 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 172 +++++++++++++++---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  18 +-
 3 files changed, 156 insertions(+), 39 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 6f93759..8287f9f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -44,6 +44,9 @@
 #define DEFAULT_DEBUG_LEVEL_SHIFT 3
 #define PFX "iavf: "
 
+int iavf_status_to_errno(enum iavf_status status);
+int virtchnl_status_to_errno(enum virtchnl_status_code v_status);
+
 /* VSI state flags shared with common code */
 enum iavf_vsi_state_t {
 	__IAVF_VSI_DOWN,
@@ -528,7 +531,7 @@ void iavf_add_vlans(struct iavf_adapter *adapter);
 void iavf_del_vlans(struct iavf_adapter *adapter);
 void iavf_set_promiscuous(struct iavf_adapter *adapter, int flags);
 void iavf_request_stats(struct iavf_adapter *adapter);
-void iavf_request_reset(struct iavf_adapter *adapter);
+int iavf_request_reset(struct iavf_adapter *adapter);
 void iavf_get_hena(struct iavf_adapter *adapter);
 void iavf_set_hena(struct iavf_adapter *adapter);
 void iavf_set_rss_key(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 8e3bb1e..16742f3 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -51,6 +51,113 @@ MODULE_LICENSE("GPL v2");
 static const struct net_device_ops iavf_netdev_ops;
 struct workqueue_struct *iavf_wq;
 
+int iavf_status_to_errno(enum iavf_status status)
+{
+	switch (status) {
+	case IAVF_SUCCESS:
+		return 0;
+	case IAVF_ERR_PARAM:
+	case IAVF_ERR_MAC_TYPE:
+	case IAVF_ERR_INVALID_MAC_ADDR:
+	case IAVF_ERR_INVALID_LINK_SETTINGS:
+	case IAVF_ERR_INVALID_PD_ID:
+	case IAVF_ERR_INVALID_QP_ID:
+	case IAVF_ERR_INVALID_CQ_ID:
+	case IAVF_ERR_INVALID_CEQ_ID:
+	case IAVF_ERR_INVALID_AEQ_ID:
+	case IAVF_ERR_INVALID_SIZE:
+	case IAVF_ERR_INVALID_ARP_INDEX:
+	case IAVF_ERR_INVALID_FPM_FUNC_ID:
+	case IAVF_ERR_QP_INVALID_MSG_SIZE:
+	case IAVF_ERR_INVALID_FRAG_COUNT:
+	case IAVF_ERR_INVALID_ALIGNMENT:
+	case IAVF_ERR_INVALID_PUSH_PAGE_INDEX:
+	case IAVF_ERR_INVALID_IMM_DATA_SIZE:
+	case IAVF_ERR_INVALID_VF_ID:
+	case IAVF_ERR_INVALID_HMCFN_ID:
+	case IAVF_ERR_INVALID_PBLE_INDEX:
+	case IAVF_ERR_INVALID_SD_INDEX:
+	case IAVF_ERR_INVALID_PAGE_DESC_INDEX:
+	case IAVF_ERR_INVALID_SD_TYPE:
+	case IAVF_ERR_INVALID_HMC_OBJ_INDEX:
+	case IAVF_ERR_INVALID_HMC_OBJ_COUNT:
+	case IAVF_ERR_INVALID_SRQ_ARM_LIMIT:
+		return -EINVAL;
+	case IAVF_ERR_NVM:
+	case IAVF_ERR_NVM_CHECKSUM:
+	case IAVF_ERR_PHY:
+	case IAVF_ERR_CONFIG:
+	case IAVF_ERR_UNKNOWN_PHY:
+	case IAVF_ERR_LINK_SETUP:
+	case IAVF_ERR_ADAPTER_STOPPED:
+	case IAVF_ERR_MASTER_REQUESTS_PENDING:
+	case IAVF_ERR_AUTONEG_NOT_COMPLETE:
+	case IAVF_ERR_RESET_FAILED:
+	case IAVF_ERR_BAD_PTR:
+	case IAVF_ERR_SWFW_SYNC:
+	case IAVF_ERR_QP_TOOMANY_WRS_POSTED:
+	case IAVF_ERR_QUEUE_EMPTY:
+	case IAVF_ERR_FLUSHED_QUEUE:
+	case IAVF_ERR_OPCODE_MISMATCH:
+	case IAVF_ERR_CQP_COMPL_ERROR:
+	case IAVF_ERR_BACKING_PAGE_ERROR:
+	case IAVF_ERR_NO_PBLCHUNKS_AVAILABLE:
+	case IAVF_ERR_MEMCPY_FAILED:
+	case IAVF_ERR_SRQ_ENABLED:
+	case IAVF_ERR_ADMIN_QUEUE_ERROR:
+	case IAVF_ERR_ADMIN_QUEUE_FULL:
+	case IAVF_ERR_BAD_IWARP_CQE:
+	case IAVF_ERR_NVM_BLANK_MODE:
+	case IAVF_ERR_PE_DOORBELL_NOT_ENABLED:
+	case IAVF_ERR_DIAG_TEST_FAILED:
+	case IAVF_ERR_FIRMWARE_API_VERSION:
+	case IAVF_ERR_ADMIN_QUEUE_CRITICAL_ERROR:
+		return -EIO;
+	case IAVF_ERR_DEVICE_NOT_SUPPORTED:
+		return -ENODEV;
+	case IAVF_ERR_NO_AVAILABLE_VSI:
+	case IAVF_ERR_RING_FULL:
+		return -ENOSPC;
+	case IAVF_ERR_NO_MEMORY:
+		return -ENOMEM;
+	case IAVF_ERR_TIMEOUT:
+	case IAVF_ERR_ADMIN_QUEUE_TIMEOUT:
+		return -ETIMEDOUT;
+	case IAVF_ERR_NOT_IMPLEMENTED:
+	case IAVF_NOT_SUPPORTED:
+		return -EOPNOTSUPP;
+	case IAVF_ERR_ADMIN_QUEUE_NO_WORK:
+		return -EALREADY;
+	case IAVF_ERR_NOT_READY:
+		return -EBUSY;
+	case IAVF_ERR_BUF_TOO_SHORT:
+		return -EMSGSIZE;
+	}
+
+	return -EIO;
+}
+
+int virtchnl_status_to_errno(enum virtchnl_status_code v_status)
+{
+	switch (v_status) {
+	case VIRTCHNL_STATUS_SUCCESS:
+		return 0;
+	case VIRTCHNL_STATUS_ERR_PARAM:
+	case VIRTCHNL_STATUS_ERR_INVALID_VF_ID:
+		return -EINVAL;
+	case VIRTCHNL_STATUS_ERR_NO_MEMORY:
+		return -ENOMEM;
+	case VIRTCHNL_STATUS_ERR_OPCODE_MISMATCH:
+	case VIRTCHNL_STATUS_ERR_CQP_COMPL_ERROR:
+	case VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR:
+		return -EIO;
+	case VIRTCHNL_STATUS_ERR_NOT_SUPPORTED:
+		return -EOPNOTSUPP;
+	}
+
+	return -EIO;
+}
+
 /**
  * iavf_pdev_to_adapter - go from pci_dev to adapter
  * @pdev: pci_dev pointer
@@ -1509,7 +1616,7 @@ static int iavf_config_rss_aq(struct iavf_adapter *adapter)
 	struct iavf_aqc_get_set_rss_key_data *rss_key =
 		(struct iavf_aqc_get_set_rss_key_data *)adapter->rss_key;
 	struct iavf_hw *hw = &adapter->hw;
-	int ret = 0;
+	enum iavf_status status;
 
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
 		/* bail because we already have a command pending */
@@ -1518,24 +1625,25 @@ static int iavf_config_rss_aq(struct iavf_adapter *adapter)
 		return -EBUSY;
 	}
 
-	ret = iavf_aq_set_rss_key(hw, adapter->vsi.id, rss_key);
-	if (ret) {
+	status = iavf_aq_set_rss_key(hw, adapter->vsi.id, rss_key);
+	if (status) {
 		dev_err(&adapter->pdev->dev, "Cannot set RSS key, err %s aq_err %s\n",
-			iavf_stat_str(hw, ret),
+			iavf_stat_str(hw, status),
 			iavf_aq_str(hw, hw->aq.asq_last_status));
-		return ret;
+		return iavf_status_to_errno(status);
 
 	}
 
-	ret = iavf_aq_set_rss_lut(hw, adapter->vsi.id, false,
-				  adapter->rss_lut, adapter->rss_lut_size);
-	if (ret) {
+	status = iavf_aq_set_rss_lut(hw, adapter->vsi.id, false,
+				     adapter->rss_lut, adapter->rss_lut_size);
+	if (status) {
 		dev_err(&adapter->pdev->dev, "Cannot set RSS lut, err %s aq_err %s\n",
-			iavf_stat_str(hw, ret),
+			iavf_stat_str(hw, status),
 			iavf_aq_str(hw, hw->aq.asq_last_status));
+		return iavf_status_to_errno(status);
 	}
 
-	return ret;
+	return 0;
 
 }
 
@@ -2089,23 +2197,24 @@ static void iavf_startup(struct iavf_adapter *adapter)
 {
 	struct pci_dev *pdev = adapter->pdev;
 	struct iavf_hw *hw = &adapter->hw;
-	int err;
+	enum iavf_status status;
+	int ret;
 
 	WARN_ON(adapter->state != __IAVF_STARTUP);
 
 	/* driver loaded, probe complete */
 	adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
 	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
-	err = iavf_set_mac_type(hw);
-	if (err) {
-		dev_err(&pdev->dev, "Failed to set MAC type (%d)\n", err);
+	status = iavf_set_mac_type(hw);
+	if (status) {
+		dev_err(&pdev->dev, "Failed to set MAC type (%d)\n", status);
 		goto err;
 	}
 
-	err = iavf_check_reset_complete(hw);
-	if (err) {
+	ret = iavf_check_reset_complete(hw);
+	if (ret) {
 		dev_info(&pdev->dev, "Device is still in reset (%d), retrying\n",
-			 err);
+			 ret);
 		goto err;
 	}
 	hw->aq.num_arq_entries = IAVF_AQ_LEN;
@@ -2113,14 +2222,14 @@ static void iavf_startup(struct iavf_adapter *adapter)
 	hw->aq.arq_buf_size = IAVF_MAX_AQ_BUF_SIZE;
 	hw->aq.asq_buf_size = IAVF_MAX_AQ_BUF_SIZE;
 
-	err = iavf_init_adminq(hw);
-	if (err) {
-		dev_err(&pdev->dev, "Failed to init Admin Queue (%d)\n", err);
+	status = iavf_init_adminq(hw);
+	if (status) {
+		dev_err(&pdev->dev, "Failed to init Admin Queue (%d)\n", status);
 		goto err;
 	}
-	err = iavf_send_api_ver(adapter);
-	if (err) {
-		dev_err(&pdev->dev, "Unable to send to PF (%d)\n", err);
+	ret = iavf_send_api_ver(adapter);
+	if (ret) {
+		dev_err(&pdev->dev, "Unable to send to PF (%d)\n", ret);
 		iavf_shutdown_adminq(hw);
 		goto err;
 	}
@@ -2156,7 +2265,7 @@ static void iavf_init_version_check(struct iavf_adapter *adapter)
 	/* aq msg sent, awaiting reply */
 	err = iavf_verify_api_ver(adapter);
 	if (err) {
-		if (err == IAVF_ERR_ADMIN_QUEUE_NO_WORK)
+		if (err == -EALREADY)
 			err = iavf_send_api_ver(adapter);
 		else
 			dev_err(&pdev->dev, "Unsupported PF API version %d.%d, expected %d.%d\n",
@@ -2257,11 +2366,11 @@ static void iavf_init_get_resources(struct iavf_adapter *adapter)
 		}
 	}
 	err = iavf_get_vf_config(adapter);
-	if (err == IAVF_ERR_ADMIN_QUEUE_NO_WORK) {
+	if (err == -EALREADY) {
 		err = iavf_send_vf_config_msg(adapter);
 		goto err_alloc;
-	} else if (err == IAVF_ERR_PARAM) {
-		/* We only get ERR_PARAM if the device is in a very bad
+	} else if (err == -EINVAL) {
+		/* We only get -EINVAL if the device is in a very bad
 		 * state or if we've been disabled for previous bad
 		 * behavior. Either way, we're done now.
 		 */
@@ -2731,6 +2840,7 @@ static void iavf_reset_task(struct work_struct *work)
 	struct iavf_hw *hw = &adapter->hw;
 	struct iavf_mac_filter *f, *ftmp;
 	struct iavf_cloud_filter *cf;
+	enum iavf_status status;
 	u32 reg_val;
 	int i = 0, err;
 	bool running;
@@ -2832,10 +2942,12 @@ static void iavf_reset_task(struct work_struct *work)
 	/* kill and reinit the admin queue */
 	iavf_shutdown_adminq(hw);
 	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
-	err = iavf_init_adminq(hw);
-	if (err)
+	status = iavf_init_adminq(hw);
+	if (status) {
 		dev_info(&adapter->pdev->dev, "Failed to init adminq: %d\n",
-			 err);
+			 status);
+		goto reset_err;
+	}
 	adapter->aq_required = 0;
 
 	if (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED) {
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 78c8f6c..178cc51 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -22,17 +22,17 @@ static int iavf_send_pf_msg(struct iavf_adapter *adapter,
 			    enum virtchnl_ops op, u8 *msg, u16 len)
 {
 	struct iavf_hw *hw = &adapter->hw;
-	enum iavf_status err;
+	enum iavf_status status;
 
 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
 		return 0; /* nothing to see here, move along */
 
-	err = iavf_aq_send_msg_to_pf(hw, op, 0, msg, len, NULL);
-	if (err)
-		dev_dbg(&adapter->pdev->dev, "Unable to send opcode %d to PF, err %s, aq_err %s\n",
-			op, iavf_stat_str(hw, err),
+	status = iavf_aq_send_msg_to_pf(hw, op, 0, msg, len, NULL);
+	if (status)
+		dev_dbg(&adapter->pdev->dev, "Unable to send opcode %d to PF, status %s, aq_err %s\n",
+			op, iavf_stat_str(hw, status),
 			iavf_aq_str(hw, hw->aq.asq_last_status));
-	return err;
+	return iavf_status_to_errno(status);
 }
 
 /**
@@ -1848,11 +1848,13 @@ void iavf_del_adv_rss_cfg(struct iavf_adapter *adapter)
  *
  * Request that the PF reset this VF. No response is expected.
  **/
-void iavf_request_reset(struct iavf_adapter *adapter)
+int iavf_request_reset(struct iavf_adapter *adapter)
 {
+	int err;
 	/* Don't check CURRENT_OP - this is always higher priority */
-	iavf_send_pf_msg(adapter, VIRTCHNL_OP_RESET_VF, NULL, 0);
+	err = iavf_send_pf_msg(adapter, VIRTCHNL_OP_RESET_VF, NULL, 0);
 	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
+	return err;
 }
 
 /**
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
