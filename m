Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0AC4EF00F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Apr 2022 16:31:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AA0D424F3;
	Fri,  1 Apr 2022 14:31:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T6QXX3W2bJoY; Fri,  1 Apr 2022 14:31:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CE5041ECD;
	Fri,  1 Apr 2022 14:31:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 075B61BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 14:31:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E8C2B412C6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 14:31:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OhRO59NdGk8D for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Apr 2022 14:31:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E9E064128D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 14:31:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3299361C3C;
 Fri,  1 Apr 2022 14:31:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10081C2BBE4;
 Fri,  1 Apr 2022 14:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648823481;
 bh=GRqEFfmMA4GY4homV0sZm+zJsQmTB8nMiCeg/WP4GNY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=skWyOITIgsHO1YHnSktLq5m8Y8MjENnioGv1wMuxFmp8myTi8ov7NHj2IncKC7ix6
 cER6k1XHJHiS5f3Rstq9fh0zbL9SioPAC96lG1zx5McJ5lj0wTTPOzXaBKazKY2Mp+
 shyvau+/FJetFN1Ij9u0DX1lxchDsv9AVCVmdQYoUD1/tfGRphC+VBN+V996eT95/q
 eyEGgyOT9bSwkOgO9nAKdHXpWzmxz3UFlylH+k6Kc2w2i2CsMM0mYUYyrBGEd5/+OM
 haD0F6YQO7kLI0xlMKL1SkDSSHaXtqA/B2teMQGbZSqFXbWg5HyRsGSZ7oU3tYmi/d
 HSREx2+dhQv2g==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Fri,  1 Apr 2022 10:24:58 -0400
Message-Id: <20220401142536.1948161-111-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220401142536.1948161-1-sashal@kernel.org>
References: <20220401142536.1948161-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.17 111/149] iavf: stop leaking
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
Cc: Sasha Levin <sashal@kernel.org>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Palczewski <mateusz.palczewski@intel.com>

[ Upstream commit bae569d01a1f4929ce28093be80bbbbacbf1b127 ]

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
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |   5 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 173 +++++++++++++++---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  18 +-
 3 files changed, 157 insertions(+), 39 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 4babe4705a55..358a9b3031d5 100644
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
@@ -515,7 +518,7 @@ void iavf_add_vlans(struct iavf_adapter *adapter);
 void iavf_del_vlans(struct iavf_adapter *adapter);
 void iavf_set_promiscuous(struct iavf_adapter *adapter, int flags);
 void iavf_request_stats(struct iavf_adapter *adapter);
-void iavf_request_reset(struct iavf_adapter *adapter);
+int iavf_request_reset(struct iavf_adapter *adapter);
 void iavf_get_hena(struct iavf_adapter *adapter);
 void iavf_set_hena(struct iavf_adapter *adapter);
 void iavf_set_rss_key(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 0e178a0a59c5..d10e9a8e8011 100644
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
@@ -1421,7 +1528,7 @@ static int iavf_config_rss_aq(struct iavf_adapter *adapter)
 	struct iavf_aqc_get_set_rss_key_data *rss_key =
 		(struct iavf_aqc_get_set_rss_key_data *)adapter->rss_key;
 	struct iavf_hw *hw = &adapter->hw;
-	int ret = 0;
+	enum iavf_status status;
 
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
 		/* bail because we already have a command pending */
@@ -1430,24 +1537,25 @@ static int iavf_config_rss_aq(struct iavf_adapter *adapter)
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
 
@@ -2003,23 +2111,24 @@ static void iavf_startup(struct iavf_adapter *adapter)
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
@@ -2027,14 +2136,15 @@ static void iavf_startup(struct iavf_adapter *adapter)
 	hw->aq.arq_buf_size = IAVF_MAX_AQ_BUF_SIZE;
 	hw->aq.asq_buf_size = IAVF_MAX_AQ_BUF_SIZE;
 
-	err = iavf_init_adminq(hw);
-	if (err) {
-		dev_err(&pdev->dev, "Failed to init Admin Queue (%d)\n", err);
+	status = iavf_init_adminq(hw);
+	if (status) {
+		dev_err(&pdev->dev, "Failed to init Admin Queue (%d)\n",
+			status);
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
@@ -2070,7 +2180,7 @@ static void iavf_init_version_check(struct iavf_adapter *adapter)
 	/* aq msg sent, awaiting reply */
 	err = iavf_verify_api_ver(adapter);
 	if (err) {
-		if (err == IAVF_ERR_ADMIN_QUEUE_NO_WORK)
+		if (err == -EALREADY)
 			err = iavf_send_api_ver(adapter);
 		else
 			dev_err(&pdev->dev, "Unsupported PF API version %d.%d, expected %d.%d\n",
@@ -2171,11 +2281,11 @@ static void iavf_init_get_resources(struct iavf_adapter *adapter)
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
@@ -2626,6 +2736,7 @@ static void iavf_reset_task(struct work_struct *work)
 	struct iavf_hw *hw = &adapter->hw;
 	struct iavf_mac_filter *f, *ftmp;
 	struct iavf_cloud_filter *cf;
+	enum iavf_status status;
 	u32 reg_val;
 	int i = 0, err;
 	bool running;
@@ -2727,10 +2838,12 @@ static void iavf_reset_task(struct work_struct *work)
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
 
 	if ((adapter->flags & IAVF_FLAG_REINIT_MSIX_NEEDED) ||
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 5263cefe46f5..b8c5837f8b50 100644
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
@@ -1827,11 +1827,13 @@ void iavf_del_adv_rss_cfg(struct iavf_adapter *adapter)
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
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
