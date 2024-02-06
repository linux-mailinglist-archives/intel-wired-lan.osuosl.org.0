Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA9184AD1B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Feb 2024 04:46:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3511941B97;
	Tue,  6 Feb 2024 03:46:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3511941B97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707191171;
	bh=/n48OSUxqxkgqAzfpRpPGS8ZVgcdp12i+nsoQDRdusw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B+L1S2EI1nNuJha2jyQLJ+NOKMR08VXkzbFbfOX79f0Rlh80qWh+v4q/THumwzdRi
	 8kddyYSPQHztyQLDsOizgykCSVehR6iJ9rKLNWEkY/VI0iWs44mV597/7vuoOin3dH
	 5mPXRqopP9zNOkcy77Hy+6W3MEB0TkrBOkHgBbC7Sr6xG5/39JxdBA6mdzk//KhHPV
	 o8E4HKG8gR/KPWL3pIUOfpEoC2VSE+a3QJuigaaXZz9Q912nXpyOrhsRracf7/5Jco
	 pXoobnpO0tuSwNFsjy+IlzFueJJpY5XAp5xOzLR/74EQw2pjxECTKHvlwUofBX6wEN
	 Zh6YC+EtZbm6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 68n-D15ui6wC; Tue,  6 Feb 2024 03:46:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B67341A60;
	Tue,  6 Feb 2024 03:46:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B67341A60
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E53F71BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 03:45:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DFA2981F99
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 03:45:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IDrVV0Q6VYds for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Feb 2024 03:45:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=alan.brady@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 25FA081F97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25FA081F97
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 25FA081F97
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 03:45:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="824849"
X-IronPort-AV: E=Sophos;i="6.05,246,1701158400"; 
   d="scan'208";a="824849"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 19:38:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,246,1701158400"; 
   d="scan'208";a="5653947"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by orviesa004.jf.intel.com with ESMTP; 05 Feb 2024 19:38:39 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Feb 2024 19:38:02 -0800
Message-Id: <20240206033804.1198416-9-alan.brady@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240206033804.1198416-1-alan.brady@intel.com>
References: <20240206033804.1198416-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707191145; x=1738727145;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0YfsILo7bm0hFofTrESnj/p34BcdQReA5WCY2ajEa6g=;
 b=Uk8Fg9AnzbnIDDjsXEDbOixkmqlqIv7826EczfxkUeuXMEAkMlJF8OBM
 bEj8MnQDl1q1B0DF97WD4uTO/kxod+WsxRphP6obaM5FlD5/mzlqD3iFO
 GYgwVp+tihvUOkN8ig2hnLrfyLsIbtIqlSarCrIbP4aGazjRT9CRr0rsT
 uLf4Soc4Xn1FnbJNEUJXtFHJoFw0/HzJBg4MNPu82r8UGWNZWNiEyDvHk
 UzEpjnizviKpbzDerJ9x1A4kxoyeL/jNk7QIlvxWqjyS7wtbg31Ev2mRz
 qRqRHZB3GEPcf5ycb40K+v6YZRun2U0baxw/xM8hH1iFpxz6jNBb7cgNh
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Uk8Fg9An
Subject: [Intel-wired-lan] [PATCH v4 08/10 iwl-next] idpf: prevent deinit
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
Cc: willemdebruijn.kernel@gmail.com, netdev@vger.kernel.org,
 aleksander.lobakin@intel.com, Alan Brady <alan.brady@intel.com>,
 przemyslaw.kitszel@intel.com, igor.bagnucki@intel.com
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
index f6e6e3eff29e..2bf67f13079d 100644
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
2.40.1

