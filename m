Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 003779AB534
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 19:37:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 951028100B;
	Tue, 22 Oct 2024 17:37:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qqp7QuBqJagE; Tue, 22 Oct 2024 17:37:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF5FF8100C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729618656;
	bh=qtioBF9ZNSocA7mWogQbwxo1D9m4RjbrpO0sfYy6II0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RjyY9DwLwaJL38PAk4AdcxzafYhW5uk7OpRtnVqF8clQg0RBRIf3RzGEOCc4am30p
	 6Zz/ImYhnF8QuwMIQZ22A3frGgv5Xi3gIRP83hk0WC+u6c4NkRVaofish8WnPLv7NK
	 qLI8fm+SPQ2sWa1EjopTLTRtGXUmebsUruFJB1toXnlPQd2S+s9XfJFF9JbzZwcnd2
	 REibQfeMquBIRaEkZZMlN9nNXsdPogNypGCqQYaoemH78d3220aT7c5DX9I8tENXfV
	 Md7MTAKCJaBv0vgxB7PIfkjCNMuBHk2dO+zzZeRAtl23+o4w3atYNTpABTyp2vPP7H
	 JrjFNbVUBLpug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF5FF8100C;
	Tue, 22 Oct 2024 17:37:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F2762072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 17:37:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E00E340990
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 17:37:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FqPZRuNIkLHM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 17:37:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A2ADA40993
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2ADA40993
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A2ADA40993
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 17:37:33 +0000 (UTC)
X-CSE-ConnectionGUID: +Kf71CV8TM6Uo2sCI6Bemw==
X-CSE-MsgGUID: FfzT2wK3QXqHzfzQwhvMdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39721923"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39721923"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 10:37:27 -0700
X-CSE-ConnectionGUID: JaSDGfPKQVuD+nilC9dVRQ==
X-CSE-MsgGUID: J39hMIQ4RxaGQCg/e8D08g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79862541"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.24])
 by orviesa009.jf.intel.com with ESMTP; 22 Oct 2024 10:37:27 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 stable@vger.kernel.org, Tarun K Singh <tarun.k.singh@intel.com>
Date: Tue, 22 Oct 2024 10:35:27 -0700
Message-ID: <20241022173527.87972-3-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241022173527.87972-1-pavan.kumar.linga@intel.com>
References: <20241022173527.87972-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729618654; x=1761154654;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VOKzmBVGbvPlb5H+Olv9BCx3x1/04Fkz5mIxchcqAS8=;
 b=MF+a+NVSE9sSctm3w5un4GDK1E+ni1CugTZuSsMVcyGcSeKB25dZ/NlP
 QU9NvziqtVCwUaNbL1cX3ZqxmCIUPjhHQoNivjsW4GNxXDqdbnMweSS14
 hvAKBeI9FUJWfWvJ51ptotdohifsYdFzE8XL6L9r/1vnn/xBI6RKnB/Fp
 9erdoofi8QgHD7hWDPpqWYBkwS1OUcgv6PkqzaPK8z1TwriWWGAjj93IK
 mQ6/Fw9PgximbUOt7rIvgL5hjpDAOFhRFW1mLwLwEu5MVyQgnom5bjGFB
 0qHA6EGZcFkkhvpCF1mHMN9ctEPCrpzX7vxr1nlndrXg/45rxYGhITOnZ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MF+a+NVS
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix idpf_vc_core_init
 error path
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

In an event where the platform running the device control plane
is rebooted, reset is detected on the driver. It releases
all the resources and waits for the reset to complete. Once the
reset is done, it tries to build the resources back. At this
time if the device control plane is not yet started, then
the driver timeouts on the virtchnl message and retries to
establish the mailbox again.

In the retry flow, mailbox is deinitialized but the mailbox
workqueue is still alive and polling for the mailbox message.
This results in accessing the released control queue leading to
null-ptr-deref. Fix it by unrolling the work queue cancellation
and mailbox deinitialization in the order which they got
initialized.

Also remove the redundant scheduling of the mailbox task in
idpf_vc_core_init.

Fixes: 4930fbf419a7 ("idpf: add core init and interrupt request")
Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
Cc: stable@vger.kernel.org # 6.9+
Reviewed-by: Tarun K Singh <tarun.k.singh@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c      | 1 +
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 7 -------
 2 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index c3848e10e7db..b4fbb99bfad2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1786,6 +1786,7 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 	 */
 	err = idpf_vc_core_init(adapter);
 	if (err) {
+		cancel_delayed_work_sync(&adapter->mbx_task);
 		idpf_deinit_dflt_mbx(adapter);
 		goto unlock_mutex;
 	}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 3be883726b87..d77d6c3805e2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3017,11 +3017,6 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 		goto err_netdev_alloc;
 	}
 
-	/* Start the mailbox task before requesting vectors. This will ensure
-	 * vector information response from mailbox is handled
-	 */
-	queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task, 0);
-
 	queue_delayed_work(adapter->serv_wq, &adapter->serv_task,
 			   msecs_to_jiffies(5 * (adapter->pdev->devfn & 0x07)));
 
@@ -3046,7 +3041,6 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 
 err_intr_req:
 	cancel_delayed_work_sync(&adapter->serv_task);
-	cancel_delayed_work_sync(&adapter->mbx_task);
 	idpf_vport_params_buf_rel(adapter);
 err_netdev_alloc:
 	kfree(adapter->vports);
@@ -3070,7 +3064,6 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 	adapter->state = __IDPF_VER_CHECK;
 	if (adapter->vcxn_mngr)
 		idpf_vc_xn_shutdown(adapter->vcxn_mngr);
-	idpf_deinit_dflt_mbx(adapter);
 	set_bit(IDPF_HR_DRV_LOAD, adapter->flags);
 	queue_delayed_work(adapter->vc_event_wq, &adapter->vc_event_task,
 			   msecs_to_jiffies(task_delay));
-- 
2.43.0

