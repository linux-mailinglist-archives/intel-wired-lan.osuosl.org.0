Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFF785CD09
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Feb 2024 01:51:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90F2C416D6;
	Wed, 21 Feb 2024 00:51:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0vO5FNi4Ehce; Wed, 21 Feb 2024 00:50:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B625D41545
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708476659;
	bh=izOZsnjBsIoRb6K9WVSZSOX5e3PZ+M3YRmNjvkt39kQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qou2C7ar5hMu84wHABihaMr1wanx7A9ydUWCpZuqH60LpiwFuo7Q+DkC5C56vjScl
	 433smqaw/DseLmEfLBy5gJhlS0A4ChTu4drCsr3kIpfXeN9/Tm0RXw2iMJlF/Ylmf6
	 oGulYfzo8jn7Lk4l+44+dsiVZe+UAOVkYZys493zLnTKQgmRar07dfBZnZLXsr+3s5
	 4jCKK5CP2eqj2CkpGKyOyrOTctbhAagmvehDAee7U5vbhdFfZjCrnbnP44YQeLFTCt
	 GMDWixarNjytD2E96SSPjwLt+scUv9JfMUIotJ1j9CPjaiY6JNwIC0LKR+lErdQtGz
	 pxkqFr5KjqrWw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B625D41545;
	Wed, 21 Feb 2024 00:50:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 005641BF39D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 00:50:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E17C560876
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 00:50:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kr4nJx0WZrUm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Feb 2024 00:50:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=alan.brady@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 393D9607A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 393D9607A4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 393D9607A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 00:50:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2500802"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="2500802"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 16:50:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="9550996"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmviesa004.fm.intel.com with ESMTP; 20 Feb 2024 16:50:56 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Feb 2024 16:49:47 -0800
Message-ID: <20240221004949.2561972-9-alan.brady@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240221004949.2561972-1-alan.brady@intel.com>
References: <20240221004949.2561972-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708476657; x=1740012657;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hBpUOSh4+s0kOReiJq6Xs52C1TE4iVUGScm186yeSps=;
 b=NQ8y2mSEAFSZfoTZr979y5kVjKmWL8Sqn6FJZkpQF/2aL4H96TgAcmYo
 iQ/lST8Zd48RsAbcyoauTRMyexpd5gelAzDk4gvvRBVVRdZgNPLo1XMsf
 tbR9N9vcghKXvq1xjSS52ZQEqWxByY1O9XJ+itaSsIAs3SPntwFbUsr7w
 rZVjsEA33QV/vd1ypFoCUCGYmlr/lODB9ejQgI2Rr8aDWxo0eep6U3cps
 xfBq4ht0AVT4zLFO5M+F3LWyei9biaAKRz1kJd/xKY9OuM6MiMFW5/x0k
 wD/sIVvckuP3HHmiavD71UIqVHTzVGikiz1zrdSNb0F9rJlNvyk0qgjSH
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NQ8y2mSE
Subject: [Intel-wired-lan] [PATCH v5 08/10 iwl-next] idpf: prevent deinit
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
index 0793173bb36d..e7a2fbf9e6cd 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -88,6 +88,7 @@ enum idpf_state {
  * @IDPF_HR_RESET_IN_PROG: Reset in progress
  * @IDPF_REMOVE_IN_PROG: Driver remove in progress
  * @IDPF_MB_INTR_MODE: Mailbox in interrupt mode
+ * @IDPF_VC_CORE_INIT: virtchnl core has been init
  * @IDPF_FLAGS_NBITS: Must be last
  */
 enum idpf_flags {
@@ -96,6 +97,7 @@ enum idpf_flags {
 	IDPF_HR_RESET_IN_PROG,
 	IDPF_REMOVE_IN_PROG,
 	IDPF_MB_INTR_MODE,
+	IDPF_VC_CORE_INIT,
 	IDPF_FLAGS_NBITS,
 };
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index f74f074ee359..dade4dd84952 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -2886,7 +2886,9 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 	queue_delayed_work(adapter->init_wq, &adapter->init_task,
 			   msecs_to_jiffies(5 * (adapter->pdev->devfn & 0x07)));
 
-	goto no_err;
+	set_bit(IDPF_VC_CORE_INIT, adapter->flags);
+
+	return 0;
 
 err_intr_req:
 	cancel_delayed_work_sync(&adapter->serv_task);
@@ -2895,7 +2897,6 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 err_netdev_alloc:
 	kfree(adapter->vports);
 	adapter->vports = NULL;
-no_err:
 	return err;
 
 init_failed:
@@ -2929,6 +2930,9 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
  */
 void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 {
+	if (!test_bit(IDPF_VC_CORE_INIT, adapter->flags))
+		return;
+
 	idpf_vc_xn_shutdown(&adapter->vcxn_mngr);
 	idpf_deinit_task(adapter);
 	idpf_intr_rel(adapter);
@@ -2940,6 +2944,8 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 
 	kfree(adapter->vports);
 	adapter->vports = NULL;
+
+	clear_bit(IDPF_VC_CORE_INIT, adapter->flags);
 }
 
 /**
-- 
2.43.0

