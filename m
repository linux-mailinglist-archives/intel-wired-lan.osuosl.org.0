Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB9849575A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jan 2022 01:29:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6470360ED2;
	Fri, 21 Jan 2022 00:29:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DPMbi2ldjShc; Fri, 21 Jan 2022 00:29:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F92860B5D;
	Fri, 21 Jan 2022 00:29:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DF1021C1148
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 00:29:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C257160692
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 00:29:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e0Yy5jRVlSof for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jan 2022 00:29:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D008B6068D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 00:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642724989; x=1674260989;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SyoChSSdYccDnQ8V3/IuF/4P1JtshxCe4Ilj5xDoxS0=;
 b=YOvwDdvqP89ROz6UnjnBgWJdVRElG6U74pm4cpasnEUYl6EwPuqSKrFh
 tBmyzkh7R+nOqkpvhOJimCbREDuPlppDzmrB8UFy9ak4QD8OaQ9YmoTM8
 9LC5wJcBvtmPxc8X8A4XPWW8h8HUN6ZgKrfDLgl6fTx3E7dg0ChK4En1f
 4zG9NfrhEBfSrN3P1KXAcW0MtyO/nu7UMKvWmz5dNhHO6lWC2coM9I1x8
 5HFqHuL9a/CktpVFq4RhR8s1mVii2YvFcg0Dhy1mWTQRUAkcOf6jSP6Bm
 5SBAeudUiz31DoNNbfra0/Y4K0yYNhuO1ZJrrIOk6BT+4zFChnJFWhGdU g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="226199878"
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="226199878"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 16:29:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="561675264"
Received: from dmert-dev.jf.intel.com ([10.166.241.5])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 16:29:48 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Jan 2022 16:27:56 -0800
Message-Id: <20220121002756.1105566-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: Avoid RTNL lock when re-creating
 auxiliary device
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If a call to re-create the auxiliary device happens in a context that has
already taken the RTNL lock, then the call flow that recreates auxiliary
device can hang if there is another attempt to claim the RTNL lock by the
auxiliary driver.

To avoid this, any call to re-create auxiliary devices that comes from
an source that is holding the RTNL lock (e.g. netdev notifier when
interface exits a bond) should execute in a separate thread.  To
accomplish this, add a flag to the PF that will be evaluated in the
service task and dealt with there.

Fixes: f9f5301e7e2d ("ice: Register auxiliary device to provide RDMA")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      | 3 ++-
 drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 4e16d185077d..a9fa701aaa95 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -483,6 +483,7 @@ enum ice_pf_flags {
 	ICE_FLAG_VF_TRUE_PROMISC_ENA,
 	ICE_FLAG_MDD_AUTO_RESET_VF,
 	ICE_FLAG_LINK_LENIENT_MODE_ENA,
+	ICE_FLAG_PLUG_AUX_DEV,
 	ICE_PF_FLAGS_NBITS		/* must be last */
 };
 
@@ -887,7 +888,7 @@ static inline void ice_set_rdma_cap(struct ice_pf *pf)
 	if (pf->hw.func_caps.common_cap.rdma && pf->num_rdma_msix) {
 		set_bit(ICE_FLAG_RDMA_ENA, pf->flags);
 		set_bit(ICE_FLAG_AUX_ENA, pf->flags);
-		ice_plug_aux_dev(pf);
+		set_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 30814435f779..b948a865f359 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2253,6 +2253,9 @@ static void ice_service_task(struct work_struct *work)
 		return;
 	}
 
+	if (test_and_clear_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags))
+		ice_plug_aux_dev(pf);
+
 	ice_clean_adminq_subtask(pf);
 	ice_check_media_subtask(pf);
 	ice_check_for_hang_subtask(pf);
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
