Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B13AE6893
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 16:27:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8676940C62;
	Tue, 24 Jun 2025 14:27:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y-aj4nsm91md; Tue, 24 Jun 2025 14:27:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F28F040C6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750775255;
	bh=yPYeYirCS5Mp9OxOIIOUhEyGK115a/skYTriO47lI20=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oHYmh5G3P5vc+zgwDg6LpTzoulAQT1p4Hdi73zY1ffRXYPZrUh9IgIW6lhz+iQjQe
	 KjR4+ox4xvZ8LtQNEWYwm5QqzstLQ5eDrUdCWg1bD++83uvErXkLGYSslziNieTZz5
	 5GNgnf2Q7ldpsSE+2HAeXIP838uLXGVxiQ8Zgz4DxSQNTHGLdx+w4jNqd79z94/PGj
	 EFQ9rV0K+LZfoP4JrKXlXeGdNXyp7ZXqujTkdMH3P+uoNExJqRmuP3sHZzj0iR9Ip/
	 k3QPfReXT5iZ7PU/yr9+RAYAolZTFGqHKwOK4DbqFq0Se2QoM9wbDk7Z5JKCU4FL+X
	 6qXPGW4YCjAdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F28F040C6B;
	Tue, 24 Jun 2025 14:27:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4190B12C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 14:27:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2829360C26
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 14:27:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8vBCrz-k-Qsi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 14:27:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 89B3460C28
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89B3460C28
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 89B3460C28
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 14:27:32 +0000 (UTC)
X-CSE-ConnectionGUID: U1pNfjLwScugoJV+yUq1FQ==
X-CSE-MsgGUID: Wj8CSvMRTMWMC+SqsxzMOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="70441033"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="70441033"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 07:27:31 -0700
X-CSE-ConnectionGUID: rQUEmtzZR5GX+NxWfmHQvg==
X-CSE-MsgGUID: ePFQhx5/RByH0snyFMXtlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="155965567"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa003.fm.intel.com with ESMTP; 24 Jun 2025 07:27:31 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Aleksandr.Loktionov@intel.com,
 przemyslaw.kitszel@intel.com, david.m.ertman@intel.com,
 anthony.l.nguyen@intel.com, michal.swiatkowski@linux.intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Date: Tue, 24 Jun 2025 07:26:40 -0700
Message-Id: <20250624142641.7010-2-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20250624142641.7010-1-emil.s.tantilov@intel.com>
References: <20250624142641.7010-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750775253; x=1782311253;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=FPxmSS5suGCOzmue056ptlmwSoUwUYjdZafjsoTfq/8=;
 b=bqm6wfXw9KA0TXtXtFDKQhrfExok1TiFBE0j6pclgAVSdvqep+9ACuw+
 y3wi+NIupOGU/8reNsdMGMPAwXEwM3KPd/oXcujasPLPq81FLSBhVPnHU
 G+daj9k5PwffvN7m9RpppM0P0CJXEYVu7xiPgc4Rur+VyQb3I33PWfdZb
 sB44PdDxJgQ+P0PSdV2UfFnpfa2nGybgNBzM0Wb0fXC7GiMaci4nsWDnE
 6wSIJ3ED4eQ8v59wKG6QIqHqUbQgYOcPbc/vQjRrwEPf0t9m1eHOv+cij
 a+aTIqHTnG1fh7EmUWQ+ALHNQePRUOToTth326u0HSaSu4KjgiGjG+x68
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bqm6wfXw
Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix NULL pointer
 dereference in ice_unplug_aux_dev() on reset
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

Issuing a reset when the driver is loaded without RDMA support, will
results in a crash as it attempts to remove RDMA's non-existent auxbus
device:
echo 1 > /sys/class/net/<if>/device/reset

BUG: kernel NULL pointer dereference, address: 0000000000000008
...
RIP: 0010:ice_unplug_aux_dev+0x29/0x70 [ice]
...
Call Trace:
<TASK>
ice_prepare_for_reset+0x77/0x260 [ice]
pci_dev_save_and_disable+0x2c/0x70
pci_reset_function+0x88/0x130
reset_store+0x5a/0xa0
kernfs_fop_write_iter+0x15e/0x210
vfs_write+0x273/0x520
ksys_write+0x6b/0xe0
do_syscall_64+0x79/0x3b0
entry_SYSCALL_64_after_hwframe+0x76/0x7e

ice_unplug_aux_dev() checks pf->cdev_info->adev for NULL pointer, but
pf->cdev_info will also be NULL, leading to the deref in the trace above.

Introduce a flag to be set when the creation of the auxbus device is
successful, to avoid multiple NULL pointer checks in ice_unplug_aux_dev().

Fixes: c24a65b6a27c7 ("iidc/ice/irdma: Update IDC to support multiple consumers")
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h     |  1 +
 drivers/net/ethernet/intel/ice/ice_idc.c | 10 ++++++----
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index ddd0ad68185b..0ef11b7ab477 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -509,6 +509,7 @@ enum ice_pf_flags {
 	ICE_FLAG_LINK_LENIENT_MODE_ENA,
 	ICE_FLAG_PLUG_AUX_DEV,
 	ICE_FLAG_UNPLUG_AUX_DEV,
+	ICE_FLAG_AUX_DEV_CREATED,
 	ICE_FLAG_MTU_CHANGED,
 	ICE_FLAG_GNSS,			/* GNSS successfully initialized */
 	ICE_FLAG_DPLL,			/* SyncE/PTP dplls initialized */
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 6ab53e430f91..420d45c2558b 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -336,6 +336,7 @@ int ice_plug_aux_dev(struct ice_pf *pf)
 	mutex_lock(&pf->adev_mutex);
 	cdev->adev = adev;
 	mutex_unlock(&pf->adev_mutex);
+	set_bit(ICE_FLAG_AUX_DEV_CREATED, pf->flags);
 
 	return 0;
 }
@@ -347,15 +348,16 @@ void ice_unplug_aux_dev(struct ice_pf *pf)
 {
 	struct auxiliary_device *adev;
 
+	if (!test_and_clear_bit(ICE_FLAG_AUX_DEV_CREATED, pf->flags))
+		return;
+
 	mutex_lock(&pf->adev_mutex);
 	adev = pf->cdev_info->adev;
 	pf->cdev_info->adev = NULL;
 	mutex_unlock(&pf->adev_mutex);
 
-	if (adev) {
-		auxiliary_device_delete(adev);
-		auxiliary_device_uninit(adev);
-	}
+	auxiliary_device_delete(adev);
+	auxiliary_device_uninit(adev);
 }
 
 /**
-- 
2.37.3

