Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 318DCAD7E04
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 00:00:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E89660E4C;
	Thu, 12 Jun 2025 22:00:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J0bLyh01p7kw; Thu, 12 Jun 2025 22:00:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73B4A60E5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749765625;
	bh=OCCZiGPfN0XM078SSvRA5bBsfBPd122tGbdMiNQLgsU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Sdpz4JVM0vffL9JbmHMokMwdT5/oxVx3BcnshbZEu09pX5aW7Iw3WDD4NCJ3ZrrFj
	 etmxBnmTgoneItK/b3N4r5PfxL+RhcrYxSBsd+7Ty04+uSWtO2KgV6+hTxW5MrXNRj
	 GkxfAaScLuBX6QHxCEg46/6wan978UOVv3LbI6zYEPI71yu/Dwy4Nk6DOGDZ/dxZx4
	 GHBT16+H07ttPj7F24xvSkgIvbuD8aLQTBlgFFc34NmJA7DrAJpXuUnQQ99x0nUYd/
	 1337r4hTjyKg4lQOtnozeA86B2mqu0rvqWTI8Qne9IfchPDFlziuNo0owY+h8+0++W
	 faSAG6jUkpbZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73B4A60E5B;
	Thu, 12 Jun 2025 22:00:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E9191BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 22:00:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B30BC820D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 22:00:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qmPtSZovt4Ya for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 22:00:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0BFC882003
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BFC882003
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0BFC882003
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 22:00:21 +0000 (UTC)
X-CSE-ConnectionGUID: hu3e6C1iRACdEr3ERjQTIA==
X-CSE-MsgGUID: v1S5XQfwTZ+hY1YZVIFpLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="51078281"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="51078281"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 15:00:21 -0700
X-CSE-ConnectionGUID: PBk+enWlSJWUg6JshiYjcg==
X-CSE-MsgGUID: OXcBEqIBQY6rQqkn94txcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148004221"
Received: from pthorat-mobl.amr.corp.intel.com (HELO
 soc-PF51RAGT.clients.intel.com) ([10.246.116.180])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 15:00:20 -0700
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: jgg@nvidia.com, leon@kernel.org, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, kuba@kernel.org,
 Joshua Hay <joshua.a.hay@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Thu, 12 Jun 2025 17:00:00 -0500
Message-ID: <20250612220002.1120-5-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20250612220002.1120-1-tatyana.e.nikolova@intel.com>
References: <20250612220002.1120-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749765622; x=1781301622;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tK1YAnUx/qBx5tt8Q154Qa7+BuWDzazbLoUX/S6GkTo=;
 b=Vn+Ed1nSOvYtcEL+yfzNbaJrjcMzWS92fRjiCdNSnfasgzJ5WqicYsRJ
 6FFR0wNEtdb407TPsKExfg7qY3QvhbGRrlBwZuiEPBpqJ6MhVaT/pJiN0
 Pl8c8PLUIMJr7lrk7uCG0feZKCeuU0Qix+A95mQt1zC/X9BIPjSVtrV+Q
 VZ2x5bDBNhb88qGuGhYUKdZWAOFkZqPSjyvFObAQpWECfMqUcnmNR6DsG
 qjBVAWvPFdD9nPmV3P+RwmHgjyizvHBZyaQ1c2bn/Wkasinks1KMP69gK
 N6uuRVZ0o1o3tYyNNy/EF7otiwlYnEBO2k6nz7M+bNlXWLnLuEpG8Dptq
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vn+Ed1nS
Subject: [Intel-wired-lan] [iwl-next v2 4/6] idpf: implement remaining IDC
 RDMA core callbacks and handlers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Joshua Hay <joshua.a.hay@intel.com>

Implement the idpf_idc_request_reset and idpf_idc_rdma_vc_send_sync
callbacks for the rdma core auxiliary driver to issue reset events to
the idpf and send (synchronous) virtchnl messages to the control plane
respectively.

Implement and plumb the reset handler for the opposite flow as well,
i.e. when the idpf is resetiing and needs to notify the rdma core
auxiliary driver.

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---

Changes since split:
- align with new header naming

[3]:
- remove unnecessary iadrv NULL check

 drivers/net/ethernet/intel/idpf/idpf.h        |  1 +
 drivers/net/ethernet/intel/idpf/idpf_idc.c    | 43 ++++++++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  2 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 23 +++++++++-
 drivers/net/ethernet/intel/idpf/virtchnl2.h   |  3 +-
 5 files changed, 69 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 52a3ec88e615..e74b0f3012eb 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -892,5 +892,6 @@ int idpf_idc_init_aux_core_dev(struct idpf_adapter *adapter,
 			       enum iidc_function_type ftype);
 void idpf_idc_deinit_core_aux_device(struct iidc_rdma_core_dev_info *cdev_info);
 void idpf_idc_deinit_vport_aux_device(struct iidc_rdma_vport_dev_info *vdev_info);
+void idpf_idc_issue_reset_event(struct iidc_rdma_core_dev_info *cdev_info);
 
 #endif /* !_IDPF_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
index dfdf4fa287ab..7401e41a5d28 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
@@ -216,6 +216,38 @@ static void idpf_unplug_aux_dev(struct auxiliary_device *adev)
 	ida_free(&idpf_idc_ida, adev->id);
 }
 
+/**
+ * idpf_idc_issue_reset_event - Function to handle reset IDC event
+ * @cdev_info: IDC core device info pointer
+ */
+void idpf_idc_issue_reset_event(struct iidc_rdma_core_dev_info *cdev_info)
+{
+	enum iidc_rdma_event_type event_type = IIDC_RDMA_EVENT_WARN_RESET;
+	struct iidc_rdma_core_auxiliary_drv *iadrv;
+	struct iidc_rdma_event event = { };
+	struct auxiliary_device *adev;
+
+	if (!cdev_info)
+		/* RDMA is not enabled */
+		return;
+
+	set_bit(event_type, event.type);
+
+	device_lock(&cdev_info->adev->dev);
+
+	adev = cdev_info->adev;
+	if (!adev || !adev->dev.driver)
+		goto unlock;
+
+	iadrv = container_of(adev->dev.driver,
+			     struct iidc_rdma_core_auxiliary_drv,
+			     adrv.driver);
+	if (iadrv->event_handler)
+		iadrv->event_handler(cdev_info, &event);
+unlock:
+	device_unlock(&cdev_info->adev->dev);
+}
+
 /**
  * idpf_idc_vport_dev_up - called when CORE is ready for vport aux devs
  * @adapter: private data struct
@@ -298,7 +330,16 @@ EXPORT_SYMBOL_GPL(idpf_idc_vport_dev_ctrl);
 int idpf_idc_request_reset(struct iidc_rdma_core_dev_info *cdev_info,
 			   enum iidc_rdma_reset_type __always_unused reset_type)
 {
-	return -EOPNOTSUPP;
+	struct idpf_adapter *adapter = pci_get_drvdata(cdev_info->pdev);
+
+	if (!idpf_is_reset_in_prog(adapter)) {
+		set_bit(IDPF_HR_FUNC_RESET, adapter->flags);
+		queue_delayed_work(adapter->vc_event_wq,
+				   &adapter->vc_event_task,
+				   msecs_to_jiffies(10));
+	}
+
+	return 0;
 }
 EXPORT_SYMBOL_GPL(idpf_idc_request_reset);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index b0efd763a7e0..53392c01e03c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1789,6 +1789,8 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 	} else if (test_and_clear_bit(IDPF_HR_FUNC_RESET, adapter->flags)) {
 		bool is_reset = idpf_is_reset_detected(adapter);
 
+		idpf_idc_issue_reset_event(adapter->cdev_info);
+
 		idpf_set_vport_state(adapter);
 		idpf_vc_core_deinit(adapter);
 		if (!is_reset)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index c6fa4644fd3c..7a277ba3c44d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3745,6 +3745,27 @@ int idpf_idc_rdma_vc_send_sync(struct iidc_rdma_core_dev_info *cdev_info,
 			       u8 *send_msg, u16 msg_size,
 			       u8 *recv_msg, u16 *recv_len)
 {
-	return -EOPNOTSUPP;
+	struct idpf_adapter *adapter = pci_get_drvdata(cdev_info->pdev);
+	struct idpf_vc_xn_params xn_params = { };
+	ssize_t reply_sz;
+	u16 recv_size;
+
+	if (!recv_msg || !recv_len || msg_size > IDPF_CTLQ_MAX_BUF_LEN)
+		return -EINVAL;
+
+	recv_size = min_t(u16, *recv_len, IDPF_CTLQ_MAX_BUF_LEN);
+	*recv_len = 0;
+	xn_params.vc_op = VIRTCHNL2_OP_RDMA;
+	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
+	xn_params.send_buf.iov_base = send_msg;
+	xn_params.send_buf.iov_len = msg_size;
+	xn_params.recv_buf.iov_base = recv_msg;
+	xn_params.recv_buf.iov_len = recv_size;
+	reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
+	if (reply_sz < 0)
+		return reply_sz;
+	*recv_len = reply_sz;
+
+	return 0;
 }
 EXPORT_SYMBOL_GPL(idpf_idc_rdma_vc_send_sync);
diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 82a3c307307e..b82218d20909 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -62,8 +62,9 @@ enum virtchnl2_op {
 	VIRTCHNL2_OP_GET_PTYPE_INFO		= 526,
 	/* Opcode 527 and 528 are reserved for VIRTCHNL2_OP_GET_PTYPE_ID and
 	 * VIRTCHNL2_OP_GET_PTYPE_INFO_RAW.
-	 * Opcodes 529, 530, 531, 532 and 533 are reserved.
 	 */
+	VIRTCHNL2_OP_RDMA			= 529,
+	/* Opcodes 530 through 533 are reserved. */
 	VIRTCHNL2_OP_LOOPBACK			= 534,
 	VIRTCHNL2_OP_ADD_MAC_ADDR		= 535,
 	VIRTCHNL2_OP_DEL_MAC_ADDR		= 536,
-- 
2.31.1

