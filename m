Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNidHpUSh2mtTQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Feb 2026 11:23:17 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4A2105785
	for <lists+intel-wired-lan@lfdr.de>; Sat, 07 Feb 2026 11:23:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F055F41A5A;
	Sat,  7 Feb 2026 10:23:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NAzl1mK7s4Km; Sat,  7 Feb 2026 10:23:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30132411AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770459794;
	bh=Thyxn2x8GwemcetTaIDmag0sXUro2/XLqu/zb3JPMFI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=sdEmOeIBqPeFCwjTuqLxfn9aegG3+Bv/jKSFIem9io94foDZOAHw6kWmTt29CAk9F
	 u5znfbwvmkWbuW3/i+zr9igrxrmPDSd/6SvXZEjblg8DPW54Kew9qrtwXHrGlHILuz
	 Km11nnit8GWpGKxxk/sNZhqxCGPiZtpAUq3JyfzKssHXG4C6gm40nTV9M8Bxn5tdSc
	 LERnmxV/2kolk8pTctlBBmOMpezHJRhXZ6aD7OYlvsfDytTHotabhLA8zwsmmFSONd
	 Ug83NBgErc6I1scWM+ZWQigzmC52MeI1+iwHzWY0VlpgBwc0gHfBYCbLITLhH6lKaW
	 NmsrczvkmjePg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30132411AC;
	Sat,  7 Feb 2026 10:23:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B12F22C5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 10:23:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9319182AAA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 10:23:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BcsyVs3pkmXm for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Feb 2026 10:23:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8AFEC821F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AFEC821F1
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8AFEC821F1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Feb 2026 10:23:10 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-381-PzplIJJsOyeGzHzKmK9iOA-1; Sat,
 07 Feb 2026 05:23:04 -0500
X-MC-Unique: PzplIJJsOyeGzHzKmK9iOA-1
X-Mimecast-MFC-AGG-ID: PzplIJJsOyeGzHzKmK9iOA_1770459782
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 219C5195608A; Sat,  7 Feb 2026 10:23:02 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.34.231])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 5E7C630001A8; Sat,  7 Feb 2026 10:22:57 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Sat,  7 Feb 2026 11:22:45 +0100
Message-ID: <20260207102245.812795-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-MFC-PROC-ID: jgUH_deg5vdGZSbJNyRXrlafVlofoxLaJZszoAg9FF8_1770459782
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1770459789;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Thyxn2x8GwemcetTaIDmag0sXUro2/XLqu/zb3JPMFI=;
 b=Sg/MQnCMD6w25vOrirJCTRCOJv9z2YZnene0p/u95ViIOtpf3wg0B4Abucr2qBKMz6WYdc
 KAJwp50IyO0pyyqA7HS66ZMwV+huoAvxiN8fnHcztIWsIBrUNSCNWOV+lDqcny+Q9xIQ2/
 xRXa04H/TdDStrE2leW5c/p0rJe66To=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Sg/MQnCM
Subject: [Intel-wired-lan] [PATCH net v2] iavf: fix deadlock in reset
 handling
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:shaojijie@huawei.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.825];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 5E4A2105785
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
replaced the driver's crit_lock with netdev_lock in reset_task, making
the deadlock manifest: the callback holds netdev_lock and waits for
reset_task, but reset_task needs the same lock:

  Thread 1 (callback)               Thread 2 (reset_task)
  -------------------               ---------------------
  netdev_lock()                     [blocked on workqueue]
  ndo_change_mtu() or ethtool op
    iavf_schedule_reset()
    iavf_wait_for_reset()           iavf_reset_task()
      waiting...                      netdev_lock() <- DEADLOCK

Fix this by extracting the reset logic from iavf_reset_task() into a new
iavf_reset_step() function that expects netdev_lock to be already held.
The three callbacks now call iavf_reset_step() directly instead of
scheduling the work and waiting, performing the reset synchronously in
the caller's context which already holds netdev_lock. This eliminates
both the deadlock and the need for iavf_wait_for_reset(), which is
removed.

The workqueue-based iavf_reset_task() becomes a thin wrapper that
acquires netdev_lock and calls iavf_reset_step(), preserving its use
for PF-initiated resets.

The callbacks may block for several seconds while iavf_reset_step()
polls hardware registers, but this is acceptable since netdev_lock is a
per-device mutex and only serializes operations on the same interface.

Fixes: 120f28a6f314 ("iavf: get rid of the crit lock")
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
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

