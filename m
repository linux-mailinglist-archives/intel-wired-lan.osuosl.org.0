Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMtTB9u8hWmpFwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 11:05:15 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD85FC6CF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 11:05:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E020C81E5C;
	Fri,  6 Feb 2026 10:05:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iIShTfZ4Kzpf; Fri,  6 Feb 2026 10:05:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B32AC81F1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770372310;
	bh=+zwnAVY0VuBSUhQN+0khN7VSvK1uPz7jWje0+uSmfm0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mEB8/w9Bhe290Fz4N6r7kJkZ4cJCvNtgV+HaJMcv8M3CKMmYua/3a50rgZr23spzN
	 P2WOOSqfD3f2oSaF+AACxDsUzGDMi0JCWsaQdKMkyUezkaQJyRdEQqgwm7GAFQ8Kd8
	 FxwQeHQusQR0/1x1yG379+03MdwD0WQPUvbVAVeWgMAP/0gH96MM3c/sTB5fjnNG4y
	 kuEjAnU3Thi2ASfLI8dKTlSEnLLMyds9L4NSkHGGAG43GNcJQoQR38a6eIB+afF/8G
	 XBrYxayXC0wbV5XdhrNdnJQYyCwIYaFK1ANTI6YO+U0dfrl0gVaPbIPq3RTOT7pvWh
	 bvuZ72uyMf1RA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B32AC81F1A;
	Fri,  6 Feb 2026 10:05:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6651E173
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 10:05:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6399541A36
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 10:05:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ehlTz3QBYKYp for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Feb 2026 10:05:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3EF5C41A1A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EF5C41A1A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3EF5C41A1A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 10:05:07 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-678-IPvd61NnMtG-PnLbx20gug-1; Fri,
 06 Feb 2026 05:05:01 -0500
X-MC-Unique: IPvd61NnMtG-PnLbx20gug-1
X-Mimecast-MFC-AGG-ID: IPvd61NnMtG-PnLbx20gug_1770372299
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 2697919560B0; Fri,  6 Feb 2026 10:04:59 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.34.231])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 5C75119560B9; Fri,  6 Feb 2026 10:04:55 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: jacob.e.keller@intel.com
Date: Fri,  6 Feb 2026 11:04:26 +0100
Message-ID: <20260206100426.106082-1-poros@redhat.com>
In-Reply-To: <d60cc9fd-70af-40ea-9023-78bbbf91766f@intel.com>
References: <d60cc9fd-70af-40ea-9023-78bbbf91766f@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-MFC-PROC-ID: k_j6tpVpvOiuMBEBJ65DMCW-a7ktmNl30QTk710YpQk_1770372299
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1770372306;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+zwnAVY0VuBSUhQN+0khN7VSvK1uPz7jWje0+uSmfm0=;
 b=Ie+TS42KTlqWxHQZIIHMq7T0D8p4eTQOBPKKRmXKFecsyLFZCsRIyXold2F1f17VwFnOhN
 qlWkdfs7OBLPrqU2DSTvrDXerKoUxT6QcZ8HqTj8Gbh2vtVy5gZGyjd8vFW0ceanNSHKae
 fUw3o7VxCcm4L8yxAyvXqz1Y+wRN5L8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Ie+TS42K
Subject: [Intel-wired-lan] [PATCH net] iavf: fix deadlock in reset handling
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Stanislav Fomichev <sdf@fomichev.me>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 1DD85FC6CF
X-Rspamd-Action: no action

description... 

Fixes: 120f28a6f314 ("iavf: get rid of the crit lock")
Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  2 +-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 21 +++---
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 72 +++++++------------
 3 files changed, 33 insertions(+), 62 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index d552f912e8a947..0c3844b3ff1c86 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -625,5 +625,5 @@ void iavf_add_adv_rss_cfg(struct iavf_adapter *adapter);
 void iavf_del_adv_rss_cfg(struct iavf_adapter *adapter);
 struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
 					const u8 *macaddr);
-int iavf_wait_for_reset(struct iavf_adapter *adapter);
+void iavf_reset_step(struct iavf_adapter *adapter);
 #endif /* _IAVF_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 2cc21289a70779..9b0f47f9340942 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -492,7 +492,6 @@ static int iavf_set_ringparam(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	u32 new_rx_count, new_tx_count;
-	int ret = 0;
 
 	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
 		return -EINVAL;
@@ -537,13 +536,11 @@ static int iavf_set_ringparam(struct net_device *netdev,
 	}
 
 	if (netif_running(netdev)) {
-		iavf_schedule_reset(adapter, IAVF_FLAG_RESET_NEEDED);
-		ret = iavf_wait_for_reset(adapter);
-		if (ret)
-			netdev_warn(netdev, "Changing ring parameters timeout or interrupted waiting for reset");
+		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
+		iavf_reset_step(adapter);
 	}
 
-	return ret;
+	return 0;
 }
 
 /**
@@ -1723,7 +1720,6 @@ static int iavf_set_channels(struct net_device *netdev,
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	u32 num_req = ch->combined_count;
-	int ret = 0;
 
 	if ((adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ) &&
 	    adapter->num_tc) {
@@ -1745,13 +1741,12 @@ static int iavf_set_channels(struct net_device *netdev,
 
 	adapter->num_req_queues = num_req;
 	adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
-	iavf_schedule_reset(adapter, IAVF_FLAG_RESET_NEEDED);
-
-	ret = iavf_wait_for_reset(adapter);
-	if (ret)
-		netdev_warn(netdev, "Changing channel count timeout or interrupted waiting for reset");
+	if (netif_running(netdev)) {
+		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
+		iavf_reset_step(adapter);
+	}
 
-	return ret;
+	return 0;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 8aa6e92c16431f..9c8d6125106f5a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -185,31 +185,6 @@ static bool iavf_is_reset_in_progress(struct iavf_adapter *adapter)
 	return false;
 }
 
-/**
- * iavf_wait_for_reset - Wait for reset to finish.
- * @adapter: board private structure
- *
- * Returns 0 if reset finished successfully, negative on timeout or interrupt.
- */
-int iavf_wait_for_reset(struct iavf_adapter *adapter)
-{
-	int ret = wait_event_interruptible_timeout(adapter->reset_waitqueue,
-					!iavf_is_reset_in_progress(adapter),
-					msecs_to_jiffies(5000));
-
-	/* If ret < 0 then it means wait was interrupted.
-	 * If ret == 0 then it means we got a timeout while waiting
-	 * for reset to finish.
-	 * If ret > 0 it means reset has finished.
-	 */
-	if (ret > 0)
-		return 0;
-	else if (ret < 0)
-		return -EINTR;
-	else
-		return -EBUSY;
-}
-
 /**
  * iavf_allocate_dma_mem_d - OS specific memory alloc for shared code
  * @hw:   pointer to the HW structure
@@ -3100,18 +3075,16 @@ static void iavf_reconfig_qs_bw(struct iavf_adapter *adapter)
 }
 
 /**
- * iavf_reset_task - Call-back task to handle hardware reset
- * @work: pointer to work_struct
+ * iavf_reset_step - Perform the VF reset sequence
+ * @adapter: board private structure
  *
- * During reset we need to shut down and reinitialize the admin queue
- * before we can use it to communicate with the PF again. We also clear
- * and reinit the rings because that context is lost as well.
- **/
-static void iavf_reset_task(struct work_struct *work)
+ * Requests a reset from PF, polls for completion, and reconfigures
+ * the driver. Caller must hold the netdev instance lock.
+ *
+ * This can sleep for several seconds while polling HW registers.
+ */
+void iavf_reset_step(struct iavf_adapter *adapter)
 {
-	struct iavf_adapter *adapter = container_of(work,
-						      struct iavf_adapter,
-						      reset_task);
 	struct virtchnl_vf_resource *vfres = adapter->vf_res;
 	struct net_device *netdev = adapter->netdev;
 	struct iavf_hw *hw = &adapter->hw;
@@ -3122,7 +3095,7 @@ static void iavf_reset_task(struct work_struct *work)
 	int i = 0, err;
 	bool running;
 
-	netdev_lock(netdev);
+	netdev_assert_locked(netdev);
 
 	iavf_misc_irq_disable(adapter);
 	if (adapter->flags & IAVF_FLAG_RESET_NEEDED) {
@@ -3167,7 +3140,6 @@ static void iavf_reset_task(struct work_struct *work)
 		dev_err(&adapter->pdev->dev, "Reset never finished (%x)\n",
 			reg_val);
 		iavf_disable_vf(adapter);
-		netdev_unlock(netdev);
 		return; /* Do not attempt to reinit. It's dead, Jim. */
 	}
 
@@ -3179,7 +3151,6 @@ static void iavf_reset_task(struct work_struct *work)
 		iavf_startup(adapter);
 		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(30));
-		netdev_unlock(netdev);
 		return;
 	}
 
@@ -3321,7 +3292,6 @@ static void iavf_reset_task(struct work_struct *work)
 	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
 
 	wake_up(&adapter->reset_waitqueue);
-	netdev_unlock(netdev);
 
 	return;
 reset_err:
@@ -3331,10 +3301,21 @@ static void iavf_reset_task(struct work_struct *work)
 	}
 	iavf_disable_vf(adapter);
 
-	netdev_unlock(netdev);
 	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
 }
 
+static void iavf_reset_task(struct work_struct *work)
+{
+	struct iavf_adapter *adapter = container_of(work,
+						      struct iavf_adapter,
+						      reset_task);
+	struct net_device *netdev = adapter->netdev;
+
+	netdev_lock(netdev);
+	iavf_reset_step(adapter);
+	netdev_unlock(netdev);
+}
+
 /**
  * iavf_adminq_task - worker thread to clean the admin queue
  * @work: pointer to work_struct containing our data
@@ -4600,22 +4581,17 @@ static int iavf_close(struct net_device *netdev)
 static int iavf_change_mtu(struct net_device *netdev, int new_mtu)
 {
 	struct iavf_adapter *adapter = netdev_priv(netdev);
-	int ret = 0;
 
 	netdev_dbg(netdev, "changing MTU from %d to %d\n",
 		   netdev->mtu, new_mtu);
 	WRITE_ONCE(netdev->mtu, new_mtu);
 
 	if (netif_running(netdev)) {
-		iavf_schedule_reset(adapter, IAVF_FLAG_RESET_NEEDED);
-		ret = iavf_wait_for_reset(adapter);
-		if (ret < 0)
-			netdev_warn(netdev, "MTU change interrupted waiting for reset");
-		else if (ret)
-			netdev_warn(netdev, "MTU change timed out waiting for reset");
+		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
+		iavf_reset_step(adapter);
 	}
 
-	return ret;
+	return 0;
 }
 
 /**
-- 
2.52.0

