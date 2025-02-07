Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C618A2CE98
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 22:01:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39D8070527;
	Fri,  7 Feb 2025 21:01:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UdEVJRMmms01; Fri,  7 Feb 2025 21:01:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D61D7051E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738962084;
	bh=oRCTa5ezTvWvLVR9UNVCjeYQiIA7XNBcKNMYM2/w4LE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4CFEuvyxVNTh07fVkhHQ3uxvgxN951O08e+8dthp1OLHryKkYOqdU4qYLgyZlwUzL
	 UhCNUFltgtXURxX00hDF8wwCNuQ7QVA+w5n1dfA4wAZau8gpg2BswxaNZOoIDspdm3
	 Z9SNYmJ1ax5chzB7zWWbFNmt/aWyCBVdCw43e2lsIwDUd6P9hgqloSou6CeH3+GC09
	 IBiaRh82ELtNcL04FJ9X9Y+0h17TMyW0g8wNR0pPVId8fGola2u31mOKdvlB7sZ/cc
	 duqu3om8rBeWjOa8qV+iRQpX2jYTewZLfOmTytqIfDJD/fyu7kYfr0vfCubMUwHmP2
	 c3NpErzTfB/+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D61D7051E;
	Fri,  7 Feb 2025 21:01:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 701E4E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 386CB42C6B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9vl4-trsOv1d for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 19:50:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3344F4143E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3344F4143E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3344F4143E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 19:50:25 +0000 (UTC)
X-CSE-ConnectionGUID: Hb0UcviRRJCXh/ER6M4pDg==
X-CSE-MsgGUID: h21mYh+PSuSX7zUrcT9YEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="42451772"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="42451772"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:25 -0800
X-CSE-ConnectionGUID: Wzicb5K8Q9+bxro1EmI7Ng==
X-CSE-MsgGUID: 9TqIoJxNReSxbaujchaO0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="112238142"
Received: from tenikolo-mobl1.amr.corp.intel.com ([10.124.81.134])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 11:50:24 -0800
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: jgg@nvidia.com,
	leon@kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 Joshua Hay <joshua.a.hay@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri,  7 Feb 2025 13:49:13 -0600
Message-Id: <20250207194931.1569-7-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
References: <20250207194931.1569-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 07 Feb 2025 21:01:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738957825; x=1770493825;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JdFzhaqwrhH90dcI0hYzu1zdUBOtuTFsTNzE59G8vpE=;
 b=ENFrJrKSeGgzPmgwO/l9+6wvfeCDTZgawleERHDfWm4cdefjHjkAadn2
 6dDjg6pIfIf8VlkVmLePbP32fPRnyXagCe6hXqCwd31iKJjgvg5WSpyvt
 bLcCmOVVqWzsPEhpDbM7aJ5MwNA2Ir1tZ6qVkUtLQk+zPyFZidG4OAUKD
 24hx+Mu72UOfim/yRZ0pPwENXH0rmnqpelU0g1AdZF/QzqW6RfdzFaB8c
 nkTdMKibCNjkqe8//53ChPo95O3qqY9r6Zi0mOjBN+PLTRiUi2Th1fR1f
 WbDhsF6wphtpCzYbVxnW/sTEZ3jdXMBrIN6FINrFiLZZ9jGB45YSUMGFp
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ENFrJrKS
Subject: [Intel-wired-lan] [iwl-next v3 06/24] idpf: implement IDC vport aux
 driver MTU change handler
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

The only event an RDMA vport aux driver cares about right now is an MTU
change on its underlying vport. Implement and plumb the handler to
signal the pre MTU change event and post MTU change events to the RDMA
vport aux driver.

Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---

v3:
- add missing break statement
- remove unnecessary iadrv NULL check

 drivers/net/ethernet/intel/idpf/idpf.h     |  2 ++
 drivers/net/ethernet/intel/idpf/idpf_idc.c | 31 ++++++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 11 +++++---
 3 files changed, 41 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 9516e946781a..491db5b2d79d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -873,5 +873,7 @@ int idpf_idc_init_aux_core_dev(struct idpf_adapter *adapter,
 void idpf_idc_deinit_core_aux_device(struct idc_rdma_core_dev_info *cdev_info);
 void idpf_idc_deinit_vport_aux_device(struct idc_rdma_vport_dev_info *vdev_info);
 void idpf_idc_issue_reset_event(struct idc_rdma_core_dev_info *cdev_info);
+void idpf_idc_vdev_mtu_event(struct idc_rdma_vport_dev_info *vdev_info,
+			     enum idc_rdma_event_type event_type);
 
 #endif /* !_IDPF_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
index 3dbd7e2a7e98..fb5b023557b6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
@@ -137,6 +137,37 @@ static int idpf_idc_init_aux_vport_dev(struct idpf_vport *vport)
 	return 0;
 }
 
+/**
+ * idpf_idc_vdev_mtu_event - Function to handle IDC vport mtu change events
+ * @vdev_info: IDC vport device info pointer
+ * @event_type: type of event to pass to handler
+ */
+void idpf_idc_vdev_mtu_event(struct idc_rdma_vport_dev_info *vdev_info,
+			     enum idc_rdma_event_type event_type)
+{
+	struct idc_rdma_vport_auxiliary_drv *iadrv;
+	struct idc_rdma_event event = { };
+	struct auxiliary_device *adev;
+
+	if (!vdev_info)
+		/* RDMA is not enabled */
+		return;
+
+	set_bit(event_type, event.type);
+
+	device_lock(&vdev_info->adev->dev);
+	adev = vdev_info->adev;
+	if (!adev || !adev->dev.driver)
+		goto unlock;
+	iadrv = container_of(adev->dev.driver,
+			     struct idc_rdma_vport_auxiliary_drv,
+			     adrv.driver);
+	if (iadrv->event_handler)
+		iadrv->event_handler(vdev_info, &event);
+unlock:
+	device_unlock(&vdev_info->adev->dev);
+}
+
 /**
  * idpf_core_adev_release - function to be mapped to aux dev's release op
  * @dev: pointer to device to free
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 88a33c8b18fe..a9bc6e0f949c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1931,6 +1931,9 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 		idpf_vport_calc_num_q_desc(new_vport);
 		break;
 	case IDPF_SR_MTU_CHANGE:
+		idpf_idc_vdev_mtu_event(vport->vdev_info,
+					IDC_RDMA_EVENT_BEFORE_MTU_CHANGE);
+		break;
 	case IDPF_SR_RSC_CHANGE:
 		break;
 	default:
@@ -1975,9 +1978,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	if (current_state == __IDPF_VPORT_UP)
 		err = idpf_vport_open(vport);
 
-	kfree(new_vport);
-
-	return err;
+	goto free_vport;
 
 err_reset:
 	idpf_send_add_queues_msg(vport, vport->num_txq, vport->num_complq,
@@ -1990,6 +1991,10 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 free_vport:
 	kfree(new_vport);
 
+	if (reset_cause == IDPF_SR_MTU_CHANGE)
+		idpf_idc_vdev_mtu_event(vport->vdev_info,
+					IDC_RDMA_EVENT_AFTER_MTU_CHANGE);
+
 	return err;
 }
 
-- 
2.37.3

