Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kINYL1HWjGm+tgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 20:19:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 062671271F0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 20:19:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 536C741CCF;
	Wed, 11 Feb 2026 19:19:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RmJNAg6nBofF; Wed, 11 Feb 2026 19:19:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F88341CD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770837582;
	bh=2wTcipsz7Rnh5YeneES48xOkCKOGihJrZo1p4Ia4V3o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4noywx2m44I+FbFF++fnb1ffWgmKY3HJVom9eu/NNdpThEQVfvIa/M0mqxqRLMsBP
	 hEpXy2w1wdOa1JgOKdxxzNV7d/l0xh+pKjCAlIxYX5vkqqbPbrt4kbwHT9s3EBZy0d
	 HjE1DqN/5WMCej9Ei7VGx+PC+c9vDEV+IOovX7/r/NKaqRy32Kz7otsT4ppHIvmva6
	 apTioN0mKjo2cmrkq3KYKoo+xLS42zksTuOQNMzlb/OxrLWqyhy/EOvkVKzNvqSOfs
	 0CKYP0kwqBVFXWYC4IcJFL4zg06ZGKi9ScG8x+x4IlHClpSG1tXuIpxUl9yOdUUWQL
	 oVgYB5EhlPNQw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F88341CD0;
	Wed, 11 Feb 2026 19:19:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 911CCBE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 19:19:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 72D2541CCE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 19:19:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UJ3kwVc1RRja for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 19:19:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3C2D741CCD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C2D741CCD
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3C2D741CCD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 19:19:38 +0000 (UTC)
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-351-g5t3baavPnW_sZWYw8sXsw-1; Wed,
 11 Feb 2026 14:19:34 -0500
X-MC-Unique: g5t3baavPnW_sZWYw8sXsw-1
X-Mimecast-MFC-AGG-ID: g5t3baavPnW_sZWYw8sXsw_1770837572
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 772D5180025E; Wed, 11 Feb 2026 19:19:31 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.32.184])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 6C7311956053; Wed, 11 Feb 2026 19:19:26 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 11 Feb 2026 20:18:55 +0100
Message-ID: <20260211191855.1532226-1-poros@redhat.com>
In-Reply-To: <20260207102245.812795-1-poros@redhat.com>
References: <20260207102245.812795-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-MFC-PROC-ID: 452XsjHtTlPEHw95XmTLBaPZDSihuKvB2HgEEorHHlM_1770837572
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1770837577;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2wTcipsz7Rnh5YeneES48xOkCKOGihJrZo1p4Ia4V3o=;
 b=OurrYR+qnMy83ROMcEawrRVJZSwABDEbRppArU1iIY0ptMGITLDgd8ojuOlhIp9zKXONpS
 CwaTiZY9/e6ivKzI9OtxKtJqTJmhFvokZl/wEPbrQTVNM8sWTeRx8gaWSnWlc54cKQXrK+
 z2b2kh+kXis3J2Eapi1y2JWmOpBhKjA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=OurrYR+q
Subject: [Intel-wired-lan] [PATCH net v3] iavf: fix incorrect reset handling
 in callbacks
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
Cc: ivecera@redhat.com, shaojijie@huawei.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 aleksandr.loktionov@intel.com, Andrew Lunn <andrew+netdev@lunn.ch>,
 Stanislav Fomichev <sdf@fomichev.me>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:shaojijie@huawei.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 062671271F0
X-Rspamd-Action: no action

Three driver callbacks schedule a reset and wait for its completion:
ndo_change_mtu(), ethtool set_ringparam(), and ethtool set_channels().

Waiting for reset in ndo_change_mtu() and set_ringparam() was added by
commit c2ed2403f12c ("iavf: Wait for reset in callbacks which trigger
it") to fix a race condition where adding an interface to bonding
immediately after MTU or ring parameter change failed because the
interface was still in __RESETTING state. The same commit also added
waiting in iavf_set_priv_flags(), which was later removed by commit
53844673d555 ("iavf: kill "legacy-rx" for good").

Waiting in set_channels() was introduced earlier by commit 4e5e6b5d9d13
("iavf: Fix return of set the new channel count") to ensure the PF has
enough time to complete the VF reset when changing channel count, and to
return correct error codes to userspace.

Commit ef490bbb2267 ("iavf: Add net_shaper_ops support") added
net_shaper_ops to iavf, which required reset_task to use _locked NAPI
variants (napi_enable_locked, napi_disable_locked) that need the netdev
instance lock.

Later, commit 7e4d784f5810 ("net: hold netdev instance lock during
rtnetlink operations") and commit 2bcf4772e45a ("net: ethtool: try to
protect all callback with netdev instance lock") started holding the
netdev instance lock during ndo and ethtool callbacks for drivers with
net_shaper_ops.

Finally, commit 120f28a6f314 ("iavf: get rid of the crit lock")
replaced the driver's crit_lock with netdev_lock in reset_task, causing
incorrect behavior: the callback holds netdev_lock and waits for
reset_task, but reset_task needs the same lock:

  Thread 1 (callback)               Thread 2 (reset_task)
  -------------------               ---------------------
  netdev_lock()                     [blocked on workqueue]
  ndo_change_mtu() or ethtool op
    iavf_schedule_reset()
    iavf_wait_for_reset()           iavf_reset_task()
      waiting...                      netdev_lock() <- blocked

This does not strictly deadlock because iavf_wait_for_reset() uses
wait_event_interruptible_timeout() with a 5-second timeout. The wait
eventually times out, the callback returns an error to userspace, and
after the lock is released reset_task completes the reset. This leads to
incorrect behavior: userspace sees an error even though the configuration
change silently takes effect after the timeout.

Fix this by extracting the reset logic from iavf_reset_task() into a new
iavf_reset_step() function that expects netdev_lock to be already held.
The three callbacks now call iavf_reset_step() directly instead of
scheduling the work and waiting, performing the reset synchronously in
the caller's context which already holds netdev_lock. This eliminates
both the incorrect error reporting and the need for
iavf_wait_for_reset(), which is removed along with the now-unused
reset_waitqueue.

The workqueue-based iavf_reset_task() becomes a thin wrapper that
acquires netdev_lock and calls iavf_reset_step(), preserving its use
for PF-initiated resets.

The callbacks may block for several seconds while iavf_reset_step()
polls hardware registers, but this is acceptable since netdev_lock is a
per-device mutex and only serializes operations on the same interface.

v3:
- Remove netif_running() guard from iavf_set_channels(). Unlike
  set_ringparam where descriptor counts are picked up by iavf_open()
  directly, num_req_queues is only consumed during
  iavf_reinit_interrupt_scheme() in the reset path. Skipping the reset
  on a down device would silently discard the channel count change.
- Remove dead reset_waitqueue code (struct field, init, and all
  wake_up calls) since iavf_wait_for_reset() was the only consumer.

Fixes: 120f28a6f314 ("iavf: get rid of the crit lock")
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  3 +-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 19 ++---
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 77 ++++++-------------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  1 -
 4 files changed, 31 insertions(+), 69 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index a87e0c6d4017ad..e9fb0a0919e376 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -260,7 +260,6 @@ struct iavf_adapter {
 	struct work_struct adminq_task;
 	struct work_struct finish_config;
 	wait_queue_head_t down_waitqueue;
-	wait_queue_head_t reset_waitqueue;
 	wait_queue_head_t vc_waitqueue;
 	struct iavf_q_vector *q_vectors;
 	struct list_head vlan_filter_list;
@@ -626,5 +625,5 @@ void iavf_add_adv_rss_cfg(struct iavf_adapter *adapter);
 void iavf_del_adv_rss_cfg(struct iavf_adapter *adapter);
 struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
 					const u8 *macaddr);
-int iavf_wait_for_reset(struct iavf_adapter *adapter);
+void iavf_reset_step(struct iavf_adapter *adapter);
 #endif /* _IAVF_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 2cc21289a70779..6ff3842a1ff1f0 100644
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
@@ -1745,13 +1741,10 @@ static int iavf_set_channels(struct net_device *netdev,
 
 	adapter->num_req_queues = num_req;
 	adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
-	iavf_schedule_reset(adapter, IAVF_FLAG_RESET_NEEDED);
+	adapter->flags |= IAVF_FLAG_RESET_NEEDED;
+	iavf_reset_step(adapter);
 
-	ret = iavf_wait_for_reset(adapter);
-	if (ret)
-		netdev_warn(netdev, "Changing channel count timeout or interrupted waiting for reset");
-
-	return ret;
+	return 0;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 4b0fc8f354bc90..9fd414800bca7a 100644
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
 
@@ -3320,9 +3291,6 @@ static void iavf_reset_task(struct work_struct *work)
 
 	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
 
-	wake_up(&adapter->reset_waitqueue);
-	netdev_unlock(netdev);
-
 	return;
 reset_err:
 	if (running) {
@@ -3331,10 +3299,21 @@ static void iavf_reset_task(struct work_struct *work)
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
@@ -4600,22 +4579,17 @@ static int iavf_close(struct net_device *netdev)
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
@@ -5420,9 +5394,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Setup the wait queue for indicating transition to down status */
 	init_waitqueue_head(&adapter->down_waitqueue);
 
-	/* Setup the wait queue for indicating transition to running state */
-	init_waitqueue_head(&adapter->reset_waitqueue);
-
 	/* Setup the wait queue for indicating virtchannel events */
 	init_waitqueue_head(&adapter->vc_waitqueue);
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 88156082a41da6..a52c100dcbc56d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -2736,7 +2736,6 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 	case VIRTCHNL_OP_ENABLE_QUEUES:
 		/* enable transmits */
 		iavf_irq_enable(adapter, true);
-		wake_up(&adapter->reset_waitqueue);
 		adapter->flags &= ~IAVF_FLAG_QUEUES_DISABLED;
 		break;
 	case VIRTCHNL_OP_DISABLE_QUEUES:
-- 
2.52.0

