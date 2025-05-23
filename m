Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCB7AC2818
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 19:06:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABC6140850;
	Fri, 23 May 2025 17:06:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3unEHWphfP1c; Fri, 23 May 2025 17:06:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2186407F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748019971;
	bh=Uxv7l2bCuYI/rRLCCzr1uDITnNlwtYYcmm4J0VF4xCk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zJ6+4tPdtLQRsx+bPKV/Lhd+3P94rk2S7r0ERJz5LFbXV5T8ipKikWzMHQSKiybe6
	 UVxymdgqU/oe7bppyFe8ZtK13TYmEtnsbhZPB65oNBWSQ8xyKPZNi/kHs82+VJY3o7
	 0bCJUOVpV4f27jUR/wWl6JKsn8n+eoT2aO/vuRr6HkU1hxZDbYefTK7TK9ZxkSMKo9
	 6RWrw9Izm9cMtkH3DvuTfWfB3kswYjTkWm+Yn7/rD0jB8UVtJOPu+U8/Ab54KcFfNd
	 tspnybnE2GLvxp1nLTTkS7ErkLyBQGpKPkE0Wzjwoxj/UTDRtsRGiOqANP8IVooAbg
	 wI2L7uYjd/zcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2186407F3;
	Fri, 23 May 2025 17:06:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 38FE4119
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:06:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10E26404D4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:06:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dOA70E1JGMli for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 17:06:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5B3EB40E1D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B3EB40E1D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B3EB40E1D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:06:04 +0000 (UTC)
X-CSE-ConnectionGUID: 3p9BB0jZSBOPOsK7DtJaQA==
X-CSE-MsgGUID: 3VE4GHTER268Ru84/PPGGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="60738403"
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="60738403"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 10:06:04 -0700
X-CSE-ConnectionGUID: +16fznY+QFekBkE/tkgF2w==
X-CSE-MsgGUID: HHf98DEgQXmDAFCltnDuhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="164457461"
Received: from pthorat-mobl.amr.corp.intel.com (HELO
 soc-PF51RAGT.clients.intel.com) ([10.246.116.180])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 10:06:03 -0700
From: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: jgg@nvidia.com, leon@kernel.org, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 Joshua Hay <joshua.a.hay@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Date: Fri, 23 May 2025 12:04:34 -0500
Message-ID: <20250523170435.668-6-tatyana.e.nikolova@intel.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20250523170435.668-1-tatyana.e.nikolova@intel.com>
References: <20250523170435.668-1-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748019965; x=1779555965;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Ny0smhDfp/L4YAs6aaepziBsHxEPZo6AQrtHir2sD4=;
 b=hjNbmng13Z/0SkAp1DW73LDTtOlDb87PchYAtjX2RmUMQaFlBZciiHBu
 yDBncKPZcZnuOCwUOP9+WmibMarIjuJpMIQNFsk9WuIogE7DGvmmXXpXp
 pI61iDI3KR+U7+x3NkYN3EmWrlpRRAUVG+90gGV38QKM//D9/0RasVtSa
 HmD3qs4kZRytlCw6AEOlprfBhu5ImMG6rYIUiexl3aBY3bh99UJ62I0XO
 SmAYkKlzWH2YDLAWZSr7Wb0ergiRThYVEN9zOBfMHCEiZR+KNiu+3VSrz
 unFU9XOcbS8GN7gFpQHPf4zXCo+GCsxdHOHO0/fbnPjBTEHWZXFqUmyqn
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hjNbmng1
Subject: [Intel-wired-lan] [iwl-next 5/6] idpf: implement IDC vport aux
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

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
---

Changes since split:
- align with iidc_rdma header naming

[3]:
- add missing break statement
- remove unnecessary iadrv NULL check

 drivers/net/ethernet/intel/idpf/idpf.h     |  2 ++
 drivers/net/ethernet/intel/idpf/idpf_idc.c | 31 ++++++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 11 +++++---
 3 files changed, 41 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 9043a31b0282..7b5f2e274cfa 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -874,5 +874,7 @@ int idpf_idc_init_aux_core_dev(struct idpf_adapter *adapter,
 void idpf_idc_deinit_core_aux_device(struct iidc_rdma_core_dev_info *cdev_info);
 void idpf_idc_deinit_vport_aux_device(struct iidc_rdma_vport_dev_info *vdev_info);
 void idpf_idc_issue_reset_event(struct iidc_rdma_core_dev_info *cdev_info);
+void idpf_idc_vdev_mtu_event(struct iidc_rdma_vport_dev_info *vdev_info,
+			     enum iidc_rdma_event_type event_type);
 
 #endif /* !_IDPF_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
index a3c50104a3d7..51e54525a2c4 100644
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
+void idpf_idc_vdev_mtu_event(struct iidc_rdma_vport_dev_info *vdev_info,
+			     enum iidc_rdma_event_type event_type)
+{
+	struct iidc_rdma_vport_auxiliary_drv *iadrv;
+	struct iidc_rdma_event event = { };
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
+			     struct iidc_rdma_vport_auxiliary_drv,
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
index 9358dabe852a..465d39448fe5 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1945,6 +1945,9 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 		idpf_vport_calc_num_q_desc(new_vport);
 		break;
 	case IDPF_SR_MTU_CHANGE:
+		idpf_idc_vdev_mtu_event(vport->vdev_info,
+					IIDC_RDMA_EVENT_BEFORE_MTU_CHANGE);
+		break;
 	case IDPF_SR_RSC_CHANGE:
 		break;
 	default:
@@ -1989,9 +1992,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	if (current_state == __IDPF_VPORT_UP)
 		err = idpf_vport_open(vport);
 
-	kfree(new_vport);
-
-	return err;
+	goto free_vport;
 
 err_reset:
 	idpf_send_add_queues_msg(vport, vport->num_txq, vport->num_complq,
@@ -2004,6 +2005,10 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 free_vport:
 	kfree(new_vport);
 
+	if (reset_cause == IDPF_SR_MTU_CHANGE)
+		idpf_idc_vdev_mtu_event(vport->vdev_info,
+					IIDC_RDMA_EVENT_AFTER_MTU_CHANGE);
+
 	return err;
 }
 
-- 
2.37.3

