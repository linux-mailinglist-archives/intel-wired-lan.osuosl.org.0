Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 599FB46D0E9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 11:22:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C167484BC6;
	Wed,  8 Dec 2021 10:22:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o2TI56sbivmg; Wed,  8 Dec 2021 10:22:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9B0884B7B;
	Wed,  8 Dec 2021 10:22:07 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0AC0F1BF362
 for <intel-wired-lan@osuosl.org>; Wed,  8 Dec 2021 10:22:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BAC0240207
 for <intel-wired-lan@osuosl.org>; Wed,  8 Dec 2021 10:22:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YqFU37JQTKX8 for <intel-wired-lan@osuosl.org>;
 Wed,  8 Dec 2021 10:21:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AEEA440A0D
 for <intel-wired-lan@osuosl.org>; Wed,  8 Dec 2021 10:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638958918;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Moh21KzqZZG3lRmQ1GH0NS86dy5lC+lTKiR7rNxBPeE=;
 b=Y7u5OmDUro7/aTiNF+vBTM9toSgA+Orq84Qc0kK+b02uXa4mmWJTZOUQxi4fNhVEKKzYR3
 Xh1FQJZEj0oxSfJ1BEd2bw+rmFo3VCpmsITj/4v0exBxRU883uwJWIXM3YBOEpJnafcTXH
 AAKxS134jX2YiV8cr8vxvALXtaTbnK8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-373-1chVDaqWP_q7pPilVF7hTA-1; Wed, 08 Dec 2021 05:21:57 -0500
X-MC-Unique: 1chVDaqWP_q7pPilVF7hTA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 677CB1006AA0
 for <intel-wired-lan@osuosl.org>; Wed,  8 Dec 2021 10:21:56 +0000 (UTC)
Received: from wideload.redhat.com (unknown [10.22.8.29])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0A5B113A58;
 Wed,  8 Dec 2021 10:21:55 +0000 (UTC)
From: Ken Cox <jkc@redhat.com>
To: intel-wired-lan@osuosl.org
Date: Wed,  8 Dec 2021 04:21:53 -0600
Message-Id: <20211208102153.669338-3-jkc@redhat.com>
In-Reply-To: <20211208102153.669338-1-jkc@redhat.com>
References: <20211208102153.669338-1-jkc@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jkc@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [Patch 2/2] iavf: Prevent reset from being
 scheduled while adapter is being removed
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
Cc: Ken Cox <jkc@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If a reset gets scheduled while the adapter is being removed it can
cause a panic.

The work_struct for the reset_task is contained in the iavf_adapter
structure.  iavf_remove() eventually frees the iavf_adapter structure
so if there is active work scheduled it can cause a panic.

Signed-off-by: Ken Cox <jkc@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c  |  7 +++++--
 drivers/net/ethernet/intel/iavf/iavf_main.c     | 15 ++++++++++-----
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c |  4 +++-
 3 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index af43fbd8cb75e..3cf1679153604 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -519,7 +519,9 @@ static int iavf_set_priv_flags(struct net_device *netdev, u32 flags)
 
 	/* issue a reset to force legacy-rx change to take effect */
 	if (changed_flags & IAVF_FLAG_LEGACY_RX) {
-		if (netif_running(netdev)) {
+
+		if (netif_running(netdev) &&
+		    !test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)) {
 			adapter->flags |= IAVF_FLAG_RESET_NEEDED;
 			queue_work(iavf_wq, &adapter->reset_task);
 		}
@@ -630,7 +632,8 @@ static int iavf_set_ringparam(struct net_device *netdev,
 	adapter->tx_desc_count = new_tx_count;
 	adapter->rx_desc_count = new_rx_count;
 
-	if (netif_running(netdev)) {
+	if (netif_running(netdev) &&
+	    !test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)) {
 		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
 		queue_work(iavf_wq, &adapter->reset_task);
 	}
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 63eec7edbf60a..af2788c997ca2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -164,7 +164,8 @@ static int iavf_lock_timeout(struct iavf_adapter *adapter,
 void iavf_schedule_reset(struct iavf_adapter *adapter)
 {
 	if (!(adapter->flags &
-	      (IAVF_FLAG_RESET_PENDING | IAVF_FLAG_RESET_NEEDED))) {
+	      (IAVF_FLAG_RESET_PENDING | IAVF_FLAG_RESET_NEEDED)) &&
+	    !test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)) {
 		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
 		queue_work(iavf_wq, &adapter->reset_task);
 	}
@@ -2013,7 +2014,8 @@ static void iavf_watchdog_task(struct work_struct *work)
 		adapter->aq_required = 0;
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 		dev_err(&adapter->pdev->dev, "Hardware reset detected\n");
-		queue_work(iavf_wq, &adapter->reset_task);
+		if (!test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
+			queue_work(iavf_wq, &adapter->reset_task);
 		goto watchdog_done;
 	}
 
@@ -3348,8 +3350,10 @@ static int iavf_change_mtu(struct net_device *netdev, int new_mtu)
 		iavf_notify_client_l2_params(&adapter->vsi);
 		adapter->flags |= IAVF_FLAG_SERVICE_CLIENT_REQUESTED;
 	}
-	adapter->flags |= IAVF_FLAG_RESET_NEEDED;
-	queue_work(iavf_wq, &adapter->reset_task);
+	if (!test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)) {
+		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
+		queue_work(iavf_wq, &adapter->reset_task);
+	}
 
 	return 0;
 }
@@ -3909,7 +3913,8 @@ static int __maybe_unused iavf_resume(struct device *dev_d)
 		return err;
 	}
 
-	queue_work(iavf_wq, &adapter->reset_task);
+	if (!test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
+		queue_work(iavf_wq, &adapter->reset_task);
 
 	netif_device_attach(netdev);
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 0eab3c43bdc59..ba973b2ab0547 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1470,7 +1470,9 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			break;
 		case VIRTCHNL_EVENT_RESET_IMPENDING:
 			dev_info(&adapter->pdev->dev, "Reset warning received from the PF\n");
-			if (!(adapter->flags & IAVF_FLAG_RESET_PENDING)) {
+			if (!(adapter->flags & IAVF_FLAG_RESET_PENDING) &&
+			    !test_bit(__IAVF_IN_REMOVE_TASK,
+				      &adapter->crit_section)) {
 				adapter->flags |= IAVF_FLAG_RESET_PENDING;
 				dev_info(&adapter->pdev->dev, "Scheduling reset task\n");
 				queue_work(iavf_wq, &adapter->reset_task);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
