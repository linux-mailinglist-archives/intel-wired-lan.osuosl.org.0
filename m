Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PZyH1se3mk1ngkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 13:00:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7F23F90C7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 13:00:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DD1784C14;
	Tue, 14 Apr 2026 11:00:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OZMVqEbz8zuH; Tue, 14 Apr 2026 11:00:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4800C84C15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776164440;
	bh=ofJfl+nF48wvj1XEymT1GwNhOqCH45oNIOPxHsKnjbU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dhySBGLG5XYA7T0eIQAjiV5xbFrsHeNJPMcmAWdeCK9mkLRRLJIGCH62oTwsGvLI8
	 SxRSVAZ9FDJgDA60Tm8+qs5F7TwCyudxinDiNjvZT09e678EI7/wZhuAW3CSYtKcoX
	 eMSbeSnO1m0P4iflR2hvTrKPUJM/xKPOTf5me5PDz1Rn9rpeO4FVZdGv5U4C2HnHCi
	 no7T4dp3bogX/bwNSm09HFBG084sZA82gzzVyaSpzPFDwxMMQGaPKsI2idCMJ3O4UW
	 /WC3EL1JDvt+XZUpb4CENpjmDYM1F0Ge01vJzWnDO8f6/lqzxLgVEk1DMIdNJu97VT
	 tVl7uZO6pFELw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4800C84C15;
	Tue, 14 Apr 2026 11:00:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1DDD4237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:00:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F65084C0F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:00:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mrJhuBCc4MKw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 11:00:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jtornosm@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C324D84C12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C324D84C12
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C324D84C12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:00:37 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-104-VOVcol09PqqHg_dO-BbPpg-1; Tue,
 14 Apr 2026 07:00:33 -0400
X-MC-Unique: VOVcol09PqqHg_dO-BbPpg-1
X-Mimecast-MFC-AGG-ID: VOVcol09PqqHg_dO-BbPpg_1776164432
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 306541800744; Tue, 14 Apr 2026 11:00:32 +0000 (UTC)
Received: from fedora.redhat.com (unknown [10.44.48.43])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id EC7E33000C16; Tue, 14 Apr 2026 11:00:27 +0000 (UTC)
From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 Jose Ignacio Tornos Martinez <jtornosm@redhat.com>, stable@vger.kernel.org
Date: Tue, 14 Apr 2026 13:00:04 +0200
Message-ID: <20260414110006.124286-4-jtornosm@redhat.com>
In-Reply-To: <20260414110006.124286-1-jtornosm@redhat.com>
References: <20260414110006.124286-1-jtornosm@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-MFC-PROC-ID: Ml8951-7gdKpW6SeaHYKLo-1CWQzaSgrA_YaqlaU9Yc_1776164432
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1776164436;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ofJfl+nF48wvj1XEymT1GwNhOqCH45oNIOPxHsKnjbU=;
 b=Relbj6UYDDngHCJ0DYMnZk7R8LDgvGhwwBj/gqAwJM48NTD1soBN1nTeqjtTeyLupnAuhL
 buWyj67aMimHkVG5KYNisEDVp0ZoBmo5sZck/Cw4DeU4HhaiYhEI1azXK04Vf8Fm7G79rm
 I6oq6qGkLVb+GTs6FU8lfC1ViPadurk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Relbj6UY
Subject: [Intel-wired-lan] [PATCH net v3 3/5] iavf: send MAC change request
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
X-Spamd-Result: default: False [1.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jtornosm@redhat.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: BA7F23F90C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
instead of void, allowing callers to detect failures.

Fixes: ad7c7b2172c3 ("net: hold netdev instance lock during sysfs operations")
cc: stable@vger.kernel.org
Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
---
v3: Complete with Przemek Kitszel comments:                                                                                                                                           
    - Moved iavf_poll_virtchnl_response() to iavf_virtchnl.c for reusability                                                                                                                                               
    - Changed kdoc to use "Return:" instead of "Returns"                                                                                                                                                                   
    - Changed to do-while loop structure                                                                                                                                                                                   
    - Added pending parameter to skip sleep when more messages queued                                                                                                                                                      
    - Reduced sleep time to 50-75 usec (from 1000-2000, per commit 9e3f23f44f32)                                                                                                                                           
    - Added v_opcode parameter for standard completion checking                                                                                                                                                            
    - Callback parameter takes priority over opcode check                                                                                                                                                                  
    - Made cond_data parameter const                                                                                                                                                                                       
    - Final condition check after timeout before returning -EAGAIN                                                                                                                                                         
v2: https://lore.kernel.org/netdev/20260407165206.1121317-4-jtornosm@redhat.com/

 drivers/net/ethernet/intel/iavf/iavf.h        |   7 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  57 ++++++---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 111 +++++++++++++++++-
 3 files changed, 155 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index e9fb0a0919e3..b012a91b0252 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -589,7 +589,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter);
 void iavf_enable_queues(struct iavf_adapter *adapter);
 void iavf_disable_queues(struct iavf_adapter *adapter);
 void iavf_map_queues(struct iavf_adapter *adapter);
-void iavf_add_ether_addrs(struct iavf_adapter *adapter);
+int iavf_add_ether_addrs(struct iavf_adapter *adapter);
 void iavf_del_ether_addrs(struct iavf_adapter *adapter);
 void iavf_add_vlans(struct iavf_adapter *adapter);
 void iavf_del_vlans(struct iavf_adapter *adapter);
@@ -607,6 +607,11 @@ void iavf_disable_vlan_stripping(struct iavf_adapter *adapter);
 void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			      enum virtchnl_ops v_opcode,
 			      enum iavf_status v_retval, u8 *msg, u16 msglen);
+int iavf_poll_virtchnl_response(struct iavf_adapter *adapter,
+				bool (*condition)(struct iavf_adapter *, const void *),
+				const void *cond_data,
+				enum virtchnl_ops v_opcode,
+				unsigned int timeout_ms);
 int iavf_config_rss(struct iavf_adapter *adapter);
 void iavf_cfg_queues_bw(struct iavf_adapter *adapter);
 void iavf_cfg_queues_quanta_size(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 67aa14350b1b..80277d495a8d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1047,6 +1047,46 @@ static bool iavf_is_mac_set_handled(struct net_device *netdev,
 	return ret;
 }
 
+/**
+ * iavf_mac_change_done - Check if MAC change completed
+ * @adapter: board private structure
+ * @data: MAC address being checked (as const void *)
+ *
+ * Callback for iavf_poll_virtchnl_response() to check if MAC change completed.
+ *
+ * Returns true if MAC change completed, false otherwise
+ */
+static bool iavf_mac_change_done(struct iavf_adapter *adapter, const void *data)
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
+ * Sends MAC change request to PF and polls admin queue for response.
+ * Caller must hold netdev_lock. This can sleep for up to 2.5 seconds.
+ *
+ * Returns 0 on success, negative on failure
+ */
+static int iavf_set_mac_sync(struct iavf_adapter *adapter, const u8 *addr)
+{
+	int ret;
+
+	netdev_assert_locked(adapter->netdev);
+
+	ret = iavf_add_ether_addrs(adapter);
+	if (ret)
+		return ret;
+
+	return iavf_poll_virtchnl_response(adapter, iavf_mac_change_done, addr,
+					   VIRTCHNL_OP_UNKNOWN, 2500);
+}
+
 /**
  * iavf_set_mac - NDO callback to set port MAC address
  * @netdev: network interface device structure
@@ -1067,26 +1107,13 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
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
+	if (ret)
 		return ret;
 
-	if (!ret)
-		return -EAGAIN;
-
 	if (!ether_addr_equal(netdev->dev_addr, addr->sa_data))
 		return -EACCES;
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index a52c100dcbc5..df124f840ddb 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -2,6 +2,7 @@
 /* Copyright(c) 2013 - 2018 Intel Corporation. */
 
 #include <linux/net/intel/libie/rx.h>
+#include <net/netdev_lock.h>
 
 #include "iavf.h"
 #include "iavf_ptp.h"
@@ -555,8 +556,10 @@ iavf_set_mac_addr_type(struct virtchnl_ether_addr *virtchnl_ether_addr,
  * @adapter: adapter structure
  *
  * Request that the PF add one or more addresses to our filters.
+ *
+ * Return: 0 on success, negative on failure
  **/
-void iavf_add_ether_addrs(struct iavf_adapter *adapter)
+int iavf_add_ether_addrs(struct iavf_adapter *adapter)
 {
 	struct virtchnl_ether_addr_list *veal;
 	struct iavf_mac_filter *f;
@@ -568,7 +571,7 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter)
 		/* bail because we already have a command pending */
 		dev_err(&adapter->pdev->dev, "Cannot add filters, command %d pending\n",
 			adapter->current_op);
-		return;
+		return -EBUSY;
 	}
 
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
@@ -580,7 +583,7 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter)
 	if (!count) {
 		adapter->aq_required &= ~IAVF_FLAG_AQ_ADD_MAC_FILTER;
 		spin_unlock_bh(&adapter->mac_vlan_list_lock);
-		return;
+		return 0;
 	}
 	adapter->current_op = VIRTCHNL_OP_ADD_ETH_ADDR;
 
@@ -595,7 +598,7 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter)
 	veal = kzalloc(len, GFP_ATOMIC);
 	if (!veal) {
 		spin_unlock_bh(&adapter->mac_vlan_list_lock);
-		return;
+		return -ENOMEM;
 	}
 
 	veal->vsi_id = adapter->vsi_res->vsi_id;
@@ -617,6 +620,7 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter)
 
 	iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_ETH_ADDR, (u8 *)veal, len);
 	kfree(veal);
+	return 0;
 }
 
 /**
@@ -2956,3 +2960,102 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 	} /* switch v_opcode */
 	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 }
+
+/**
+ * iavf_virtchnl_done - Check if virtchnl operation completed
+ * @adapter: board private structure
+ * @condition: optional callback for custom completion check
+ *   (takes priority)
+ * @cond_data: context data for callback
+ * @v_opcode: virtchnl opcode value we're waiting for if no condition
+ *   configured (typically VIRTCHNL_OP_UNKNOWN), if condition not used
+ *
+ * Checks completion status. Callback takes priority if provided. Otherwise
+ * waits for current_op to reach v_opcode (typically VIRTCHNL_OP_UNKNOWN
+ * after completion).
+ *
+ * Return: true if operation completed
+ */
+static inline bool iavf_virtchnl_done(struct iavf_adapter *adapter,
+				      bool (*condition)(struct iavf_adapter *, const void *),
+				      const void *cond_data,
+				      enum virtchnl_ops v_opcode)
+{
+	if (condition)
+		return condition(adapter, cond_data);
+
+	return adapter->current_op == v_opcode;
+}
+
+/**
+ * iavf_poll_virtchnl_response - Poll admin queue for virtchnl response
+ * @adapter: board private structure
+ * @condition: optional callback to check if desired response received
+ *   (takes priority)
+ * @cond_data: context data passed to condition callback
+ * @v_opcode: virtchnl opcode value to wait for if no condition configured
+ *   (typically VIRTCHNL_OP_UNKNOWN), if condition, not used
+ * @timeout_ms: maximum time to wait in milliseconds
+ *
+ * Polls admin queue and processes all messages until condition returns true
+ * or timeout expires. If condition is NULL, waits for current_op to become
+ * v_opcode (typically VIRTCHNL_OP_UNKNOWN after operation completes).
+ * Caller must hold netdev_lock. This can sleep for up to timeout_ms while
+ * polling hardware.
+ *
+ * Return: 0 on success (condition met), -EAGAIN on timeout or error
+ */
+int iavf_poll_virtchnl_response(struct iavf_adapter *adapter,
+				bool (*condition)(struct iavf_adapter *, const void *),
+				const void *cond_data,
+				enum virtchnl_ops v_opcode,
+				unsigned int timeout_ms)
+{
+	struct iavf_hw *hw = &adapter->hw;
+	struct iavf_arq_event_info event;
+	enum virtchnl_ops v_op;
+	enum iavf_status v_ret;
+	unsigned long timeout;
+	u16 pending;
+	int ret;
+
+	netdev_assert_locked(adapter->netdev);
+
+	event.buf_len = IAVF_MAX_AQ_BUF_SIZE;
+	event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
+	if (!event.msg_buf)
+		return -ENOMEM;
+
+	timeout = jiffies + msecs_to_jiffies(timeout_ms);
+	do {
+		if (iavf_virtchnl_done(adapter, condition, cond_data, v_opcode)) {
+			ret = 0;
+			goto out;
+		}
+
+		ret = iavf_clean_arq_element(hw, &event, &pending);
+		if (!ret) {
+			v_op = (enum virtchnl_ops)le32_to_cpu(event.desc.cookie_high);
+			v_ret = (enum iavf_status)le32_to_cpu(event.desc.cookie_low);
+
+			iavf_virtchnl_completion(adapter, v_op, v_ret,
+						 event.msg_buf, event.msg_len);
+
+			memset(event.msg_buf, 0, IAVF_MAX_AQ_BUF_SIZE);
+
+			if (pending)
+				continue;
+		}
+
+		usleep_range(50, 75);
+	} while (time_before(jiffies, timeout));
+
+	if (iavf_virtchnl_done(adapter, condition, cond_data, v_opcode))
+		ret = 0;
+	else
+		ret = -EAGAIN;
+
+out:
+	kfree(event.msg_buf);
+	return ret;
+}
-- 
2.53.0

