Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E2739BDE2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:00:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2102E843DA;
	Fri,  4 Jun 2021 17:00:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b0Jp-iTCtcqN; Fri,  4 Jun 2021 17:00:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C55F843DC;
	Fri,  4 Jun 2021 17:00:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF66A1BF873
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:00:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 566BB84319
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:00:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bkj24HHq0M3i for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:00:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A7E0E843A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:00:28 +0000 (UTC)
IronPort-SDR: UeUYHHEiaqpYLNpwF3tCld/Axul7aiYQwbDt6Tof+m0OhGRnXes35eq4BMkgm7RQ64yKBW16ca
 lxuYfWCvPiRg==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="289960220"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="289960220"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:00:27 -0700
IronPort-SDR: FNEIXrSsZya0hURsrVWhmGiGUm6twb8qtq1WM7wQH52bBoYsJSGt43e/arbXutzoxx/1OU8ozW
 vaN8iiBreTtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="401017757"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2021 10:00:26 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:48:54 -0700
Message-Id: <20210604164900.33156-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
References: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 2/8] iavf: free q_vectors before
 queues in iavf_disable_vf
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

From: Nicholas Nunley <nicholas.d.nunley@intel.com>

iavf_free_queues() clears adapter->num_active_queues, which
iavf_free_q_vectors() relies on, so swap the order of these two function
calls in iavf_disable_vf(). This resolves a panic encountered when the
interface is disabled and then later brought up again after PF
communication is restored.

Fixes: 65c7006f234c ("i40evf: assign num_active_queues inside i40evf_alloc_queues")
Signed-off-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index ad3f804f0e14..989de52658dc 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2067,8 +2067,8 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 
 	iavf_free_misc_irq(adapter);
 	iavf_reset_interrupt_capability(adapter);
-	iavf_free_queues(adapter);
 	iavf_free_q_vectors(adapter);
+	iavf_free_queues(adapter);
 	memset(adapter->vf_res, 0, IAVF_VIRTCHNL_VF_RESOURCE_SIZE);
 	iavf_shutdown_adminq(&adapter->hw);
 	adapter->netdev->flags &= ~IFF_UP;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
