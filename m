Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1K2wCyzeNGqtiwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jun 2026 08:14:04 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 609816A40F5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jun 2026 08:14:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=dt8PS53d;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 576DD42B98;
	Fri, 19 Jun 2026 06:14:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2yU9D5PkASNn; Fri, 19 Jun 2026 06:14:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CE6A42B94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781849640;
	bh=uQCBUs14qh1fv+QUobZ+KNi2ygpgCz3dHj60XL36+Dk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dt8PS53dwRvTgngUIlumKucd/RMghhB0Qau5onahiwSdWWAfHRM3STym2fwjXSHvd
	 bT5nCclblLRIxMNCRQ+Kv0+3XoX+UIIK54+ldRYVQFBf2xShsa5Yi5mlJayewDoAfn
	 KinyFA/j5KCUNWnxZW9d2qBGOSmgnq9dkYz5tNo0QgykPExKy5i1l9+3Z94REnXqeN
	 hgB8ktjZyKx+CzGDzjyztAufjGve7zbCe95XAfA6fr9CmYm/taCgmvVhaj5Tgj89Bg
	 nJSpavbBD+As28yOfVb51zk+eQzmEHHYybH5VFWOvNzNNYACdPUTPnDywvmHIZCrWO
	 m0GqTVEZVbWmw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CE6A42B94;
	Fri, 19 Jun 2026 06:14:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BE5D82D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jun 2026 06:13:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B03DF61C43
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jun 2026 06:13:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TM8REb5T6WtW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Jun 2026 06:13:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jtornosm@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1D83F61C03
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D83F61C03
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D83F61C03
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jun 2026 06:13:55 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-678-hbfp8ChGMLyuGN3iHENcHA-1; Fri,
 19 Jun 2026 02:13:53 -0400
X-MC-Unique: hbfp8ChGMLyuGN3iHENcHA-1
X-Mimecast-MFC-AGG-ID: hbfp8ChGMLyuGN3iHENcHA_1781849631
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id A3A821955D72; Fri, 19 Jun 2026 06:13:51 +0000 (UTC)
Received: from fedora.redhat.com (unknown [10.44.32.65])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id E3F1D195608E; Fri, 19 Jun 2026 06:13:46 +0000 (UTC)
From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 aleksandr.loktionov@intel.com, jacob.e.keller@intel.com, horms@kernel.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 stable@vger.kernel.org
Date: Fri, 19 Jun 2026 08:13:18 +0200
Message-ID: <20260619061321.8554-4-jtornosm@redhat.com>
In-Reply-To: <20260619061321.8554-1-jtornosm@redhat.com>
References: <20260619061321.8554-1-jtornosm@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-MFC-PROC-ID: KsBz0enB_1PePCWGKPhcVH_aCVvG4VniiSXmkvGD6jg_1781849631
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1781849635;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uQCBUs14qh1fv+QUobZ+KNi2ygpgCz3dHj60XL36+Dk=;
 b=Os4yyxO91m03RI6w/iuoh/4h41XIu+3t8t0Tjuvip5B7EpmDIA6bPUBFgpvim7AGubvSvs
 Dr9zwIjbde7r145EWUNXtoTccvi/qIFw25Ts/J5QD8iTnGmrFre5I86zdMfZbbK31/gTWn
 7Md/XTAllpcnU3/QJrYC9CdtDWYEWwk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Os4yyxO9
Subject: [Intel-wired-lan] [PATCH net v6 3/4] iavf: send MAC change request
 synchronously
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jtornosm@redhat.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 609816A40F5

After commit ad7c7b2172c3 ("net: hold netdev instance lock during sysfs
operations"), iavf_set_mac() is called with the netdev instance lock
already held.

The function queues a MAC address change request via
iavf_replace_primary_mac() and then waits for completion. However, in
the current flow, the actual virtchnl message is sent by the watchdog
task, which also needs to acquire the netdev lock to run. Additionally,
the adminq_task which processes virtchnl responses also needs the netdev
lock.

This creates a deadlock scenario:
1. iavf_set_mac() holds netdev lock and waits for MAC change
2. Watchdog needs netdev lock to send the request -> blocked
3. Even if request is sent, adminq_task needs netdev lock to process
   PF response -> blocked
4. MAC change times out after 2.5 seconds
5. iavf_set_mac() returns -EAGAIN

This particularly affects VFs during bonding setup when multiple VFs are
enslaved in quick succession.

Fix by implementing a synchronous MAC change operation similar to the
approach used in commit fdadbf6e84c4 ("iavf: fix incorrect reset handling
in callbacks").

The solution:
1. Send the virtchnl ADD_ETH_ADDR message directly (not via watchdog)
2. Poll the admin queue hardware directly for responses
3. Process all received messages (including non-MAC messages)
4. Return when MAC change completes or times out

A new generic function iavf_poll_virtchnl_response() is introduced that
can be reused for any future synchronous virtchnl operations. It takes a
callback to check completion, allowing flexible condition checking.

This allows the operation to complete synchronously while holding
netdev_lock, without relying on watchdog or adminq_task. The function
can sleep for up to 2.5 seconds polling hardware, but this is acceptable
since netdev_lock is per-device and only serializes operations on the
same interface.

To support this, change iavf_add_ether_addrs() to return an error code
instead of void, allowing callers to detect failures. Additionally,
export iavf_mac_add_reject() to enable proper rollback on local failures
(timeouts, send errors) - PF rejections are already handled automatically
by iavf_virtchnl_completion().

Remove vc_waitqueue entirely because iavf_set_mac was the only waiter on
this waitqueue and after the changes it is not needed.

Fixes: ad7c7b2172c3 ("net: hold netdev instance lock during sysfs operations")
cc: stable@vger.kernel.org
Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
---
v6: Address edge cases found by AI review (Jakub Kicinski):
    Although unlikely in practice, v6 adds robustness for corner cases:
    - Allocation failure after message sent: allocate event buffer BEFORE
      sending to PF (theoretical - allocation rarely fails for small buffers)
    - Multi-batch scenario: add loop to send all batches when >200 MACs pending
      (rare - most configurations have far fewer MACs)
    - Timeout rollback: only rollback on send failure (ret != -EAGAIN), not on
      timeout where PF response handler will sync state (transient inconsistency
      during timeout is acceptable and will be resolved by response)
v5: https://lore.kernel.org/all/20260429102426.210750-4-jtornosm@redhat.com/

 drivers/net/ethernet/intel/iavf/iavf.h        | 11 ++-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 91 +++++++++++++----
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 99 +++++++++++++++++--
 3 files changed, 171 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index e9fb0a0919e3..c154fe7c8ce9 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -260,7 +260,6 @@ struct iavf_adapter {
 	struct work_struct adminq_task;
 	struct work_struct finish_config;
 	wait_queue_head_t down_waitqueue;
-	wait_queue_head_t vc_waitqueue;
 	struct iavf_q_vector *q_vectors;
 	struct list_head vlan_filter_list;
 	int num_vlan_filters;
@@ -589,8 +588,9 @@ void iavf_configure_queues(struct iavf_adapter *adapter);
 void iavf_enable_queues(struct iavf_adapter *adapter);
 void iavf_disable_queues(struct iavf_adapter *adapter);
 void iavf_map_queues(struct iavf_adapter *adapter);
-void iavf_add_ether_addrs(struct iavf_adapter *adapter);
+int iavf_add_ether_addrs(struct iavf_adapter *adapter);
 void iavf_del_ether_addrs(struct iavf_adapter *adapter);
+void iavf_mac_add_reject(struct iavf_adapter *adapter);
 void iavf_add_vlans(struct iavf_adapter *adapter);
 void iavf_del_vlans(struct iavf_adapter *adapter);
 void iavf_set_promiscuous(struct iavf_adapter *adapter);
@@ -607,6 +607,13 @@ void iavf_disable_vlan_stripping(struct iavf_adapter *adapter);
 void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			      enum virtchnl_ops v_opcode,
 			      enum iavf_status v_retval, u8 *msg, u16 msglen);
+int iavf_poll_virtchnl_response(struct iavf_adapter *adapter,
+				struct iavf_arq_event_info *event,
+				bool (*condition)(struct iavf_adapter *adapter,
+						  const void *data,
+						  enum virtchnl_ops v_op),
+				const void *cond_data,
+				unsigned int timeout_ms);
 int iavf_config_rss(struct iavf_adapter *adapter);
 void iavf_cfg_queues_bw(struct iavf_adapter *adapter);
 void iavf_cfg_queues_quanta_size(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 67aa14350b1b..ce8466ff8f55 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1047,6 +1047,66 @@ static bool iavf_is_mac_set_handled(struct net_device *netdev,
 	return ret;
 }
 
+/**
+ * iavf_mac_change_done - Check if MAC change completed
+ * @adapter: board private structure
+ * @data: MAC address being checked (as const void *)
+ * @v_op: virtchnl opcode from processed message
+ *
+ * Callback for iavf_poll_virtchnl_response() to check if MAC change completed.
+ *
+ * Return: true if MAC change completed, false otherwise
+ */
+static bool iavf_mac_change_done(struct iavf_adapter *adapter,
+				 const void *data, enum virtchnl_ops v_op)
+{
+	const u8 *addr = data;
+
+	return iavf_is_mac_set_handled(adapter->netdev, addr);
+}
+
+/**
+ * iavf_set_mac_sync - Synchronously change MAC address
+ * @adapter: board private structure
+ * @addr: MAC address to set
+ *
+ * Send MAC change request to PF and poll admin queue for response.
+ * Caller must hold netdev_lock. This can sleep for up to 2.5 seconds.
+ * Event buffer is allocated before sending to avoid state mismatch if
+ * allocation fails after message is sent to PF.
+ *
+ * If the number of pending MAC filters exceeds what fits in a single message,
+ * this function sends all batches before polling for response to ensure the
+ * new primary MAC is actually transmitted.
+ *
+ * Return: 0 on success, negative on failure
+ */
+static int iavf_set_mac_sync(struct iavf_adapter *adapter, const u8 *addr)
+{
+	struct iavf_arq_event_info event;
+	int ret;
+
+	netdev_assert_locked(adapter->netdev);
+
+	event.buf_len = IAVF_MAX_AQ_BUF_SIZE;
+	event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
+	if (!event.msg_buf)
+		return -ENOMEM;
+
+	while (adapter->aq_required & IAVF_FLAG_AQ_ADD_MAC_FILTER) {
+		ret = iavf_add_ether_addrs(adapter);
+		if (ret)
+			goto out;
+	}
+
+	ret = iavf_poll_virtchnl_response(adapter, &event,
+					  iavf_mac_change_done, addr, 2500);
+
+out:
+	kfree(event.msg_buf);
+	return ret;
+}
+
 /**
  * iavf_set_mac - NDO callback to set port MAC address
  * @netdev: network interface device structure
@@ -1067,25 +1127,23 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
 		return -EADDRNOTAVAIL;
 
 	ret = iavf_replace_primary_mac(adapter, addr->sa_data);
-
 	if (ret)
 		return ret;
 
-	ret = wait_event_interruptible_timeout(adapter->vc_waitqueue,
-					       iavf_is_mac_set_handled(netdev, addr->sa_data),
-					       msecs_to_jiffies(2500));
-
-	/* If ret < 0 then it means wait was interrupted.
-	 * If ret == 0 then it means we got a timeout.
-	 * else it means we got response for set MAC from PF,
-	 * check if netdev MAC was updated to requested MAC,
-	 * if yes then set MAC succeeded otherwise it failed return -EACCES
-	 */
-	if (ret < 0)
+	ret = iavf_set_mac_sync(adapter, addr->sa_data);
+	if (ret) {
+		/* Rollback only if send failed (message never reached PF).
+		 * Don't rollback on timeout (-EAGAIN) because the message was
+		 * sent and PF will eventually respond. When the response arrives,
+		 * iavf_virtchnl_completion() will handle rollback (on PF error)
+		 * or acceptance (on PF success) automatically.
+		 */
+		if (ret != -EAGAIN) {
+			iavf_mac_add_reject(adapter);
+			ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
+		}
 		return ret;
-
-	if (!ret)
-		return -EAGAIN;
+	}
 
 	if (!ether_addr_equal(netdev->dev_addr, addr->sa_data))
 		return -EACCES;
@@ -5415,9 +5473,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Setup the wait queue for indicating transition to down status */
 	init_waitqueue_head(&adapter->down_waitqueue);
 
-	/* Setup the wait queue for indicating virtchannel events */
-	init_waitqueue_head(&adapter->vc_waitqueue);
-
 	INIT_LIST_HEAD(&adapter->ptp.aq_cmds);
 	init_waitqueue_head(&adapter->ptp.phc_time_waitqueue);
 	mutex_init(&adapter->ptp.aq_cmd_lock);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index a52c100dcbc5..ef5dd3c15a82 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -2,6 +2,7 @@
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
 #include <linux/net/intel/libie/rx.h>
+#include <net/netdev_lock.h>
 
 #include "iavf.h"
 #include "iavf_ptp.h"
@@ -555,20 +556,23 @@ iavf_set_mac_addr_type(struct virtchnl_ether_addr *virtchnl_ether_addr,
  * @adapter: adapter structure
  *
  * Request that the PF add one or more addresses to our filters.
- **/
-void iavf_add_ether_addrs(struct iavf_adapter *adapter)
+ *
+ * Return: 0 on success, negative on failure
+ */
+int iavf_add_ether_addrs(struct iavf_adapter *adapter)
 {
 	struct virtchnl_ether_addr_list *veal;
 	struct iavf_mac_filter *f;
 	int i = 0, count = 0;
 	bool more = false;
 	size_t len;
+	int ret;
 
 	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
 		/* bail because we already have a command pending */
 		dev_err(&adapter->pdev->dev, "Cannot add filters, command %d pending\n",
 			adapter->current_op);
-		return;
+		return -EBUSY;
 	}
 
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
@@ -580,7 +584,7 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter)
 	if (!count) {
 		adapter->aq_required &= ~IAVF_FLAG_AQ_ADD_MAC_FILTER;
 		spin_unlock_bh(&adapter->mac_vlan_list_lock);
-		return;
+		return 0;
 	}
 	adapter->current_op = VIRTCHNL_OP_ADD_ETH_ADDR;
 
@@ -594,8 +598,9 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter)
 
 	veal = kzalloc(len, GFP_ATOMIC);
 	if (!veal) {
+		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 		spin_unlock_bh(&adapter->mac_vlan_list_lock);
-		return;
+		return -ENOMEM;
 	}
 
 	veal->vsi_id = adapter->vsi_res->vsi_id;
@@ -615,8 +620,15 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter)
 
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
 
-	iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_ETH_ADDR, (u8 *)veal, len);
+	ret = iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_ETH_ADDR, (u8 *)veal, len);
 	kfree(veal);
+	if (ret) {
+		dev_err(&adapter->pdev->dev,
+			"Unable to send ADD_ETH_ADDR message to PF, error %d\n", ret);
+		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
+	}
+
+	return ret;
 }
 
 /**
@@ -712,8 +724,8 @@ static void iavf_mac_add_ok(struct iavf_adapter *adapter)
  * @adapter: adapter structure
  *
  * Remove filters from list based on PF response.
- **/
-static void iavf_mac_add_reject(struct iavf_adapter *adapter)
+ */
+void iavf_mac_add_reject(struct iavf_adapter *adapter)
 {
 	struct net_device *netdev = adapter->netdev;
 	struct iavf_mac_filter *f, *ftmp;
@@ -2389,7 +2401,6 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			iavf_mac_add_reject(adapter);
 			/* restore administratively set MAC address */
 			ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
-			wake_up(&adapter->vc_waitqueue);
 			break;
 		case VIRTCHNL_OP_DEL_VLAN:
 			dev_err(&adapter->pdev->dev, "Failed to delete VLAN filter, error %s\n",
@@ -2586,7 +2597,6 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 				eth_hw_addr_set(netdev, adapter->hw.mac.addr);
 				netif_addr_unlock_bh(netdev);
 			}
-		wake_up(&adapter->vc_waitqueue);
 		break;
 	case VIRTCHNL_OP_GET_STATS: {
 		struct iavf_eth_stats *stats =
@@ -2956,3 +2966,72 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 	} /* switch v_opcode */
 	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 }
+
+/**
+ * iavf_poll_virtchnl_response - Poll admin queue for virtchnl response
+ * @adapter: adapter structure
+ * @event: pre-allocated event buffer to use for polling
+ * @condition: callback to check if desired response received
+ * @cond_data: context data passed to condition callback
+ * @timeout_ms: maximum time to wait in milliseconds
+ *
+ * Polls the admin queue and processes all incoming virtchnl messages.
+ * After processing each valid message, calls the condition callback to check
+ * if the expected response has been received. The callback receives the opcode
+ * of the processed message to identify which response was received. Continues
+ * polling until the callback returns true or timeout expires.
+ *
+ * Caller must allocate event buffer before sending any messages to PF to avoid
+ * state mismatch if allocation fails after message is sent.
+ *
+ * Caller must hold netdev_lock. This can sleep for up to timeout_ms while
+ * polling hardware.
+ *
+ * Return: 0 on success (condition met), -EAGAIN on timeout, or error code
+ */
+int iavf_poll_virtchnl_response(struct iavf_adapter *adapter,
+				struct iavf_arq_event_info *event,
+				bool (*condition)(struct iavf_adapter *adapter,
+						  const void *data,
+						  enum virtchnl_ops v_op),
+				const void *cond_data,
+				unsigned int timeout_ms)
+{
+	struct iavf_hw *hw = &adapter->hw;
+	enum virtchnl_ops received_op;
+	unsigned long timeout;
+	int ret = -EAGAIN;
+	u16 pending = 0;
+	u32 v_retval;
+
+	netdev_assert_locked(adapter->netdev);
+
+	timeout = jiffies + msecs_to_jiffies(timeout_ms);
+	do {
+		if (!pending)
+			usleep_range(50, 75);
+
+		if (iavf_clean_arq_element(hw, event, &pending) == IAVF_SUCCESS) {
+			received_op = (enum virtchnl_ops)le32_to_cpu(event->desc.cookie_high);
+			if (received_op != VIRTCHNL_OP_UNKNOWN) {
+				v_retval = le32_to_cpu(event->desc.cookie_low);
+
+				iavf_virtchnl_completion(adapter, received_op,
+							 (enum iavf_status)v_retval,
+							 event->msg_buf, event->msg_len);
+
+				if (condition(adapter, cond_data, received_op)) {
+					ret = 0;
+					break;
+				}
+			}
+
+			memset(event->msg_buf, 0, IAVF_MAX_AQ_BUF_SIZE);
+
+			if (pending)
+				continue;
+		}
+	} while (time_before(jiffies, timeout));
+
+	return ret;
+}
-- 
2.54.0

