Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDA6860226
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 20:05:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4022E41A1A;
	Thu, 22 Feb 2024 19:05:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GAbTm-rAtFDr; Thu, 22 Feb 2024 19:05:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A5A841A1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708628718;
	bh=yL6l0/ievOPy+tGZylMMCB4qrW6Tuo1Gr4DyK1KX3B4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zqzZW7Acs9tj3erfwecZjMbjX9sh+zMWuW9QHiXvukut66m4xw2sS3dYhU0fezoVR
	 aL4eXd5yvmlYUwQtFJhy6VNqm09pb5TaLgg3sXv2dkO7lixCe2jRDuVsWf8u2cf44F
	 wdzooVvKf4Jfs4WiDVnbSrEJS6c296rzNMufu9ZUgFTTZeWUXFKI8UrjZX1OP2kI7W
	 vhCxgo3ExSxStgDGTahNzOOFET7BLoxj6xPjFQ4UoybL+qQPwmLw/99Acb9HWnY57z
	 nzwChw1yvtOoAJyw6WWCCcOzjGcUnfWkTtNUqHvyHKQku0lT7wnSCvomy4iNQc+Eub
	 T0ijgWdLRPVsw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A5A841A1C;
	Thu, 22 Feb 2024 19:05:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5429D1BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:05:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2D9AA40103
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:05:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6s0dIqu9VK3S for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 19:05:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=alan.brady@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BE481419F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE481419F6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BE481419F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:05:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="13506397"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="13506397"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 11:05:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="10171393"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmviesa004.fm.intel.com with ESMTP; 22 Feb 2024 11:05:08 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Feb 2024 11:04:39 -0800
Message-ID: <20240222190441.2610930-10-alan.brady@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240222190441.2610930-1-alan.brady@intel.com>
References: <20240222190441.2610930-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708628709; x=1740164709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cWJeW5MHlMpqXjOeEjoOrbFkjvB0IZ2p+tB7LA0Zb9Q=;
 b=DQrt32/eivTLjE+s079C8hN1/YLXqi4QK75ZtG1bYeSJsBzzoL07E74c
 NK6C+WizKLySThLFO0Wo1ZxyD+vxv8WZoFdPmyMV/L/tMZ15SYbDSX5Ak
 cEi+A0Zwm7e0EpDpoOpvKRbpTurwleAPT4B63+apk6f1s3ViprdVsZbeZ
 jqOwGgSBqQQqeWx4jbDa6aKfj4PXHg1xi9dAW24Xw4Nryz6TQ16QNluaL
 kJyzfyXk8ExeGE0t71Gn8fVXbCOB0Qbkexb4V70Uat3+xt4nL6qau7W0U
 19XOeO21Qu35ZK7amJ8hl9Q97uiRefSEB/bMNSzgfcbqJQtgWwMlub31Y
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DQrt32/e
Subject: [Intel-wired-lan] [PATCH v6 09/11 iwl-next] idpf: prevent deinit
 uninitialized virtchnl core
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
Cc: netdev@vger.kernel.org, Alan Brady <alan.brady@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In idpf_remove we need to tear down the virtchnl core with
idpf_vc_core_deinit so we can free up resources and leave things in a
good state. However, in the case where we failed to establish VC
communications we may not have ever actually successfully initialized
the virtchnl core.

This fixes it by setting a bit once we successfully init the virtchnl
core.  Then, in deinit, we'll check for it before going on further,
otherwise we just return. Also clear the bit at the end of deinit so we
know it's gone now.

Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h          |  2 ++
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 10 ++++++++--
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 5ed08be1dbc0..e7a036538246 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -83,6 +83,7 @@ enum idpf_state {
  * @IDPF_HR_RESET_IN_PROG: Reset in progress
  * @IDPF_REMOVE_IN_PROG: Driver remove in progress
  * @IDPF_MB_INTR_MODE: Mailbox in interrupt mode
+ * @IDPF_VC_CORE_INIT: virtchnl core has been init
  * @IDPF_FLAGS_NBITS: Must be last
  */
 enum idpf_flags {
@@ -91,6 +92,7 @@ enum idpf_flags {
 	IDPF_HR_RESET_IN_PROG,
 	IDPF_REMOVE_IN_PROG,
 	IDPF_MB_INTR_MODE,
+	IDPF_VC_CORE_INIT,
 	IDPF_FLAGS_NBITS,
 };
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index e89e2bad460d..a602ff8d74e0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -2990,7 +2990,9 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 	queue_delayed_work(adapter->init_wq, &adapter->init_task,
 			   msecs_to_jiffies(5 * (adapter->pdev->devfn & 0x07)));
 
-	goto no_err;
+	set_bit(IDPF_VC_CORE_INIT, adapter->flags);
+
+	return 0;
 
 err_intr_req:
 	cancel_delayed_work_sync(&adapter->serv_task);
@@ -2999,7 +3001,6 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 err_netdev_alloc:
 	kfree(adapter->vports);
 	adapter->vports = NULL;
-no_err:
 	return err;
 
 init_failed:
@@ -3034,6 +3035,9 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
  */
 void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 {
+	if (!test_bit(IDPF_VC_CORE_INIT, adapter->flags))
+		return;
+
 	idpf_vc_xn_shutdown(adapter->vcxn_mngr);
 	idpf_deinit_task(adapter);
 	idpf_intr_rel(adapter);
@@ -3045,6 +3049,8 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 
 	kfree(adapter->vports);
 	adapter->vports = NULL;
+
+	clear_bit(IDPF_VC_CORE_INIT, adapter->flags);
 }
 
 /**
-- 
2.43.0

