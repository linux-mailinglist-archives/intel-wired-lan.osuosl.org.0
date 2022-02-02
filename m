Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE534A6ED8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 11:38:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 458034051A;
	Wed,  2 Feb 2022 10:38:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bD5JyT7kuFTT; Wed,  2 Feb 2022 10:38:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B07040447;
	Wed,  2 Feb 2022 10:38:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E4E31BF588
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 10:38:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9041C401F9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 10:38:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xkSpH2d-AJ9b for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 10:38:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A31C1401D0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 10:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643798282; x=1675334282;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=khEryjVr7WXoPTk78GRaWGkMPnMWaDTQIJShSfBcZuk=;
 b=bZOjXaAsQwt1K/FNk0ufgOifsq89Es2DSxN2E2IzjcNY8bLArWUip/Va
 DafIsdMKHi7h9RNNwXnltk5hJdnfeeUL/bxPQgo67nV4aACSt1zMkqCcx
 eLb3laXWB1hbO5sbaHymM5aMh0XsXd0wz/IJPIKWBlZGqSeEurwgwULKH
 fdlwTImzeUQEdkITQOW1OJnVyQwvkZuGuI4Jpp0iaf8Ef5nmRkYT3DMM4
 nsA41BYtjFi8MUzjN9PVfzGaAOe/gKxGXdSZ1dsU8c7unnF7xzwU9K3lp
 i6jIR3wCllXgnP9tM+XmheADA6dEAvnu5k9QjCLDyM2L4IRdXP/esbhJX A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="308619234"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="308619234"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 02:38:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="698835546"
Received: from amlin-019-242.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.19.242])
 by orsmga005.jf.intel.com with ESMTP; 02 Feb 2022 02:38:00 -0800
From: Michal Maloszewski <michal.maloszewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Feb 2022 12:44:54 +0000
Message-Id: <20220202124454.28902-1-michal.maloszewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] iavf: Fix adopting new combined
 setting
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
Cc: Michal Maloszewski <michal.maloszewski@intel.com>,
 Mitch Williams <mitch.a.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In some cases overloaded flag IAVF_FLAG_REINIT_ITR_NEEDED
which should indicate that interrupts need to be completety
reinitialized during reset leads to RTNL deadlocks using ethtool -C
while a reset is in progress.
To fix, it was added a new flag IAVF_FLAG_REINIT_MSIX_NEEDED
used to trigger MSI-X reinit.
New combined setting is fixed adopt after VF reset.
This has been implemented by call reinit interrupt scheme
during VF reset.
Without this fix new combined setting has never been adopted.

Fixes: 209f2f9c7181 ("iavf: Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2 negotiation")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
---
v2: Changed the fixes tag and made commit message more detailed
---
---
 drivers/net/ethernet/intel/iavf/iavf.h      |  1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c | 13 +++++++++----
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index bb8f9740e776..f1849f3a2ace 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -282,6 +282,7 @@ struct iavf_adapter {
 #define IAVF_FLAG_LEGACY_RX			BIT(15)
 #define IAVF_FLAG_REINIT_ITR_NEEDED		BIT(16)
 #define IAVF_FLAG_QUEUES_DISABLED		BIT(17)
+#define IAVF_FLAG_REINIT_MSIX_NEEDED		BIT(20)
 /* duplicates for common code */
 #define IAVF_FLAG_DCB_ENABLED			0
 	/* flags for admin queue service task */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 929744802af0..caacac4ac66d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2110,7 +2110,7 @@ int iavf_parse_vf_resource_msg(struct iavf_adapter *adapter)
 			"Requested %d queues, but PF only gave us %d.\n",
 			num_req_queues,
 			adapter->vsi_res->num_queue_pairs);
-		adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
+		adapter->flags |= IAVF_FLAG_REINIT_MSIX_NEEDED;
 		adapter->num_req_queues = adapter->vsi_res->num_queue_pairs;
 		iavf_schedule_reset(adapter);
 
@@ -2691,7 +2691,8 @@ static void iavf_reset_task(struct work_struct *work)
 			 err);
 	adapter->aq_required = 0;
 
-	if (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED) {
+	if ((adapter->flags & IAVF_FLAG_REINIT_MSIX_NEEDED) ||
+	    (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED)) {
 		err = iavf_reinit_interrupt_scheme(adapter);
 		if (err)
 			goto reset_err;
@@ -2763,12 +2764,13 @@ static void iavf_reset_task(struct work_struct *work)
 		if (err)
 			goto reset_err;
 
-		if (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED) {
+		if ((adapter->flags & IAVF_FLAG_REINIT_MSIX_NEEDED) ||
+		    (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED)) {
 			err = iavf_request_traffic_irqs(adapter, netdev->name);
 			if (err)
 				goto reset_err;
 
-			adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
+			adapter->flags &= ~IAVF_FLAG_REINIT_MSIX_NEEDED;
 		}
 
 		iavf_configure(adapter);
@@ -2783,6 +2785,9 @@ static void iavf_reset_task(struct work_struct *work)
 		iavf_change_state(adapter, __IAVF_DOWN);
 		wake_up(&adapter->down_waitqueue);
 	}
+
+	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
+
 	mutex_unlock(&adapter->client_lock);
 	mutex_unlock(&adapter->crit_lock);
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
